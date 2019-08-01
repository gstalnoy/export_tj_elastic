use [_C1_ERP_RSA_04];

truncate table  ForReglament.dbo.HystoryForDefrag;

truncate table  ForReglament.dbo.TableListForDefrag;

INSERT INTO ForReglament.dbo.TableListForDefrag


SELECT TOP 10000
	[Table_Name] = OBJECT_SCHEMA_NAME(i.object_id) + '.' + o.name,
    IndexName = i.name,
	[rows] = page_count,
    [avg_fragmentation_in_percent] = ROUND(avg_fragmentation_in_percent,2)
     	  
  FROM 
	sys.dm_db_index_physical_stats(db_id(),null, null, null, null) s
		INNER JOIN sys.indexes as i ON s.[object_id] = i.[object_id] AND s.index_id = i.index_id
		left join sys.partition_schemes as p on i.data_space_id = p.data_space_id
		left join sys.objects o on  s.[object_id] = o.[object_id]
		left join sys.schemas as sh on sh.[schema_id] = o.[schema_id]
  WHERE 
	s.database_id = DB_ID() AND
        i.name IS NOT NULL AND
        OBJECTPROPERTY(s.[object_id], 'IsMsShipped') = 0 and
        page_count > 1 and
        avg_fragmentation_in_percent > 1
  ORDER BY 
	[avg_fragmentation_in_percent], page_count
