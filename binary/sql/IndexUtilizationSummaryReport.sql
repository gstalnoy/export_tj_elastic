SELECT
	Obj.name AS 'Table/View Name'
   ,Obj.type_desc AS 'TableType'
   ,Indx.name AS 'IndexName'
   ,Indx.index_id
   ,Indx.type_desc
   ,Indx.is_primary_key
   ,Indx.is_unique
   ,Indx.is_unique_constraint
   ,Indx.has_filter
   ,IUS.*
   ,IOS.*
FROM sys.indexes Indx
INNER JOIN sys.objects Obj
	ON Obj.object_id = Indx.object_id
LEFT JOIN sys.dm_db_index_usage_stats IUS
	ON Indx.index_id = IUS.index_id
		AND IUS.object_id = Obj.object_id
LEFT JOIN sys.dm_db_index_operational_stats(NULL, NULL, NULL, NULL) IOS
	ON Indx.[object_id] = IOS.[object_id]
		AND Indx.index_id = IOS.index_id
WHERE (Obj.type_desc = 'USER_TABLE'
OR Obj.type_desc = 'VIEW'
)
ORDER BY Obj.name,
Indx.name,
IUS.user_updates,
IUS.user_lookups,
IUS.user_seeks,
IUS.user_scans DESC;