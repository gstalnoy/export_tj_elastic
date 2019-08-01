SELECT
    i.name                  AS IndexName,
    SUM(s.used_page_count) * 8   AS IndexSizeKB
FROM sys.dm_db_partition_stats  AS s 
JOIN sys.indexes                AS i
ON s.[object_id] = i.[object_id] AND s.index_id = i.index_id
WHERE s.[object_id] = object_id('dbo._Reference177_VT4263')
GROUP BY i.name
ORDER BY i.name
go
SELECT
    i.name              AS IndexName,
    SUM(page_count * 8) AS IndexSizeKB
FROM sys.dm_db_index_physical_stats(
    db_id(), object_id('dbo._Reference177_VT4263'), NULL, NULL, 'DETAILED') AS s
JOIN sys.indexes AS i
ON s.[object_id] = i.[object_id] AND s.index_id = i.index_id
GROUP BY i.name
ORDER BY i.name