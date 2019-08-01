
SELECT 
	DB_NAME(database_id) [��� ����],
    start_time [����� ������],
    percent_complete [������� ����������], 
    dateadd(second,estimated_completion_time/ 1000, getdate()) as [����� ���������]
FROM 
    sys.dm_exec_requests
WHERE
    command = 'DbccFilesCompact'


