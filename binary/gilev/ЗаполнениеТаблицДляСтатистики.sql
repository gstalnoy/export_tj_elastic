use [ _C1_ERP_RSA_04];

truncate table  ForReglament.dbo.HystoryForReglament;

truncate table  ForReglament.dbo.TableListForReglament;

GO 

INSERT INTO ForReglament.dbo.TableListForReglament
SELECT 
	table_name, 
	rows
FROM
   (
	SELECT distinct top 10000 
		OBJECT_SCHEMA_NAME(t.object_id) + '.' + t.name AS table_name, 
		Max(modification_counter) as modification_counter, 
		Max(p.rows) AS rows 
	FROM sys.objects AS obj   
		JOIN sys.stats stat ON stat.object_id = obj.object_id  
		JOIN sys.tables AS t ON t.object_id = obj.object_id  
		JOIN sys.partitions AS p ON p.object_id = t.object_id
	CROSS APPLY sys.dm_db_stats_properties(stat.object_id, stat.stats_id
	) AS sp  
WHERE 
	t.type_desc = 'USER_TABLE' and modification_counter > 1
group by 
	OBJECT_SCHEMA_NAME(t.object_id) + '.' + t.name
order by 
	Max(modification_counter) desc ) AS t
WHERE 
	rows > 0
ORDER BY 
	rows 