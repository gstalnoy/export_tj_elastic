SELECT
	database_id               AS DatabaseID,
	DB_NAME(database_id)      AS DatabaseName,
	COUNT(file_id) * 8/1024.0 AS BufferSizeInMB
FROM 
	sys.dm_os_buffer_descriptors
GROUP BY 
	DB_NAME(database_id), database_id
ORDER BY 
	BufferSizeInMB DESC