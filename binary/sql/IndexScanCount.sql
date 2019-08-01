SELECT sum(Total_Scans) as Total_Scans,name,[schema],[Table],avg_fragmentation_in_percent
FROM
(
SELECT u.user_scans as Total_Scans,b.name,object_schema_name(p.object_id) AS [schema], OBJECT_NAME(p.object_id) as [Table],avg_fragmentation_in_percent
FROM sys.dm_db_index_physical_stats (DB_ID(), NULL,
     NULL, NULL, NULL) AS p
    INNER JOIN sys.indexes AS b ON p.object_id = b.object_id AND p.index_id = b.index_id
    INNER JOIN sys.dm_db_index_usage_stats u on u.index_id = b.index_id and u.object_id = b.object_id and u.object_id = p.object_id 
    INNER JOIN sys.objects o on p.object_id = o.object_id
    INNER JOIN sys.sysdatabases d on p.database_id  = d.dbid
) SRC    
group by name,[schema],[Table],avg_fragmentation_in_percent
