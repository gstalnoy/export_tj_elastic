DECLARE @Perf TABLE (object_name nvarchar(20), counter_name nvarchar(128), instance_name nvarchar(128), cntr_value BIGINT, formatted_value NUMERIC(20, 2), ShortName NVARCHAR(20))
INSERT INTO @Perf(object_name, counter_name, instance_name, cntr_value, formatted_value, ShortName)
SELECT 
  CASE 
    WHEN PATINDEX('%:Memory Manager%', object_name)> 0 THEN 'Memory Manager'
    WHEN PATINDEX('%:Buffer Manager%', object_name)> 0 THEN 'Buffer Manager'
    WHEN PATINDEX('%:Plan Cache%', object_name)> 0 THEN 'Plan Cache'
    WHEN PATINDEX('%:Buffer Node%', object_name)> 0 THEN 'Buffer Node' -- 2008
    WHEN PATINDEX('%:Memory Node%', object_name)> 0 THEN 'Memory Node' -- 2012
    ELSE NULL 
  END AS object_name,
  CAST(RTRIM(counter_name) AS NVARCHAR(100)) AS counter_name, 
  RTRIM(instance_name) AS instance_name, 
  cntr_value,
  CAST(NULL AS DECIMAL(20,2)) AS formatted_value,
  SUBSTRING(counter_name,  1, PATINDEX('% %', counter_name)) ShortName
FROM sys.dm_os_performance_counters 
WHERE (object_name LIKE '%:Buffer Node%' OR object_name LIKE '%:Buffer Manager%' OR object_name LIKE '%:Memory Node%' OR object_name LIKE '%:Plan Cache%')
  AND (counter_name LIKE '%pages %' OR counter_name = 'Page life expectancy' OR counter_name LIKE '%Node Memory (KB)%')
  OR  (object_name LIKE '%:Memory Manager%'
        AND RTRIM(counter_name) IN ('Granted Workspace Memory (KB)', 'Maximum Workspace Memory (KB)',
                                    'Memory Grants Outstanding',     'Memory Grants Pending',
                                    'Target Server Memory (KB)',     'Total Server Memory (KB)',
                                    -- for 2012
                                    'Free Memory (KB)',              'Reserved Server Memory (KB)',
                                    'Database Cache Memory (KB)',    'Stolen Server Memory (KB)')
      )

-- Convert values from pages and KB to MB and rename counters accordingly
UPDATE @Perf
SET 
  counter_name = REPLACE(REPLACE(counter_name, 'pages', '(MB)'), '(KB)', '(MB)'), 
  formatted_value = 
  CASE 
    WHEN counter_name LIKE '%pages' THEN cntr_value/128. 
    WHEN counter_name LIKE '%(KB)' THEN cntr_value/1024. 
    ELSE cntr_value
  END

-- Update counter/object names so they look like in 2012
UPDATE PC
SET 
  object_name = REPLACE(object_name, 'Buffer', 'Memory'),
  counter_name = ISNULL(M.NewName, counter_name)  
FROM @Perf PC
  LEFT JOIN
  (
    SELECT 'Free (MB)' AS OldName, 'Free Memory (MB)' AS NewName UNION ALL
    SELECT 'Database (MB)', 'Database Cache Memory (MB)' UNION ALL
    SELECT 'Stolen (MB)', 'Stolen Server Memory (MB)' UNION ALL
    SELECT 'Reserved (MB)', 'Reserved Server Memory (MB)' UNION ALL
    SELECT 'Foreign (MB)', 'Foreign Node Memory (KB)'
  ) M ON M.OldName = PC.counter_name
  AND NewName NOT IN (SELECT counter_name FROM @Perf WHERE object_name = 'Memory Manager') 
WHERE object_name IN ('Buffer Manager', 'Buffer Node')


-- Build Memory Tree
DECLARE @MemTree TABLE (Id int, ParentId int, counter_name nvarchar(128), formatted_value NUMERIC(20, 2), ShortName NVARCHAR(20))

-- Level 5
INSERT @MemTree(Id, ParentId, counter_name, formatted_value, ShortName)
SELECT
  Id = 1223,
  ParentId = 1222,
  instance_name + ' (MB)' as counter_name, 
  formatted_value,
  ShortName
FROM @Perf
WHERE object_name = 'Plan Cache' 
  AND counter_name IN ('Cache (MB)')
  AND instance_name <> '_Total'

-- Level 4
INSERT @MemTree(Id, ParentId, counter_name, formatted_value, ShortName)
SELECT
  Id = 1222,
  ParentId = 1220,
  'Plan ' + counter_name as counter_name, 
  formatted_value,
  ShortName
FROM @Perf
WHERE object_name = 'Plan Cache' 
  AND counter_name IN ('Cache (MB)')
  AND instance_name = '_Total'
UNION ALL

SELECT
  Id = 1112,
  ParentId = 1110,
  counter_name, 
  formatted_value,
  ShortName
FROM @Perf
WHERE object_name = 'Memory Manager' 
  AND counter_name IN ('Reserved Server Memory (MB)')
UNION ALL
SELECT
  Id = P.ParentID + 1,
  ParentID = P.ParentID,
  'Used Workspace Memory (MB)' AS counter_name,
  SUM(used_memory_kb)/1024. as formatted_value,
  NULL AS ShortName
FROM sys.dm_exec_query_resource_semaphores 
  CROSS JOIN (SELECT 1220 AS ParentID UNION ALL SELECT 1110) P
GROUP BY P.ParentID

-- Level 3
INSERT @MemTree(Id, ParentId, counter_name, formatted_value, ShortName)
SELECT
  Id = CASE counter_name 
           WHEN 'Granted Workspace Memory (MB)' THEN 1110 
           WHEN 'Stolen Server Memory (MB)' THEN 1220 
           ELSE 1210
         END,
  ParentId = CASE counter_name 
               WHEN 'Granted Workspace Memory (MB)' THEN 1100 
               ELSE 1200 
             END,
  counter_name, 
  formatted_value,
  ShortName
FROM @Perf
WHERE object_name = 'Memory Manager' 
  AND counter_name IN ('Stolen Server Memory (MB)', 'Database Cache Memory (MB)', 'Free Memory (MB)', 'Granted Workspace Memory (MB)')

-- Level 2
INSERT @MemTree(Id, ParentId, counter_name, formatted_value, ShortName)
SELECT
  Id = CASE WHEN counter_name = 'Maximum Workspace Memory (MB)' THEN 1100 ELSE 1200 END,
  ParentId = 1000,
  counter_name, 
  formatted_value,
  ShortName
FROM @Perf
WHERE object_name = 'Memory Manager' AND 
  counter_name IN ('Total Server Memory (MB)', 'Maximum Workspace Memory (MB)') 

-- Level 1
INSERT @MemTree(Id, ParentId, counter_name, formatted_value, ShortName)
SELECT 
  Id = 1000,
  ParentId = NULL,
  counter_name, 
  formatted_value,
  ShortName
FROM @Perf
WHERE object_name = 'Memory Manager' AND 
  counter_name IN ('Target Server Memory (MB)')

-- Results:

-- PLE and Memory Grants
SELECT counter_name AS [Counter Name], cntr_value as Value
FROM @Perf
WHERE 
  object_name = 'Memory Manager' 
  AND counter_name IN ('Memory Grants Outstanding', 'Memory Grants Pending', 'Page life expectancy')

-- Memory tree
;WITH CTE
AS
(
SELECT 0 as lvl, counter_name, formatted_value,  CAST(NULL AS DECIMAL(20,2)) As Perc, Id, NULL AS ParentId, ShortName
FROM @MemTree
WHERE ParentId IS NULL
UNION ALL
SELECT CTE.lvl+1,
  CAST(REPLICATE(' ', 6*(CTE.lvl)) + NCHAR(124) + REPLICATE(NCHAR(183), 3) + MT.counter_name AS NVARCHAR(128)), 
  MT.formatted_value, CAST(ISNULL(1.0*MT.formatted_value/NULLIF(CTE.formatted_value, 0),0) AS DECIMAL(20,2)) AS Perc, MT.Id, MT.ParentId, MT.ShortName
FROM @MemTree MT
  INNER JOIN CTE ON MT.ParentId = CTE.Id
)
SELECT 
  counter_name AS [Counter Name], formatted_value AS Value, Perc AS [%]
FROM CTE
ORDER BY ISNULL(Id, 10000), formatted_value DESC