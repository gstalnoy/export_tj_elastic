
SELECT 
	DB_NAME(database_id) [Имя базы],
    start_time [Время начала],
    percent_complete [Процент завершения], 
    dateadd(second,estimated_completion_time/ 1000, getdate()) as [Время окончания]
FROM 
    sys.dm_exec_requests
WHERE
    command = 'DbccFilesCompact'


