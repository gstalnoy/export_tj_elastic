-- SQL Server Services information (Query 8) (SQL Server Services Info)
SELECT servicename, process_id, startup_type_desc, status_desc, 
last_startup_time, service_account, is_clustered, cluster_nodename, [filename], 
instant_file_initialization_enabled -- New in SQL Server 2016 SP1
FROM sys.dm_server_services WITH (NOLOCK) OPTION (RECOMPILE);