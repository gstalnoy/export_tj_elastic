SELECT 
	[object_name],
	[counter_name],
	[cntr_value] 
FROM 
	sys.dm_os_performance_counters -- https://docs.microsoft.com/en-us/sql/relational-databases/system-dynamic-management-views/sys-dm-os-performance-counters-transact-sql
WHERE 
	[counter_name] = 'Page life expectancy' --if multiple NUMA on a server should return multiple Nodes, 
OR [counter_name] = 'Free list stalls/sec'  -- Number of requests per second that had to wait for a free page https://docs.microsoft.com/en-us/sql/relational-databases/performance-monitor/sql-server-buffer-manager-object
OR [counter_name] = 'Lazy writes/sec' --Flushes of dirty pages before a checkpoint runs.  
OR [counter_name] = 'Buffer cache hit ratio' --percentage of pages found in the buffer cache without having to read from disk you want this ratio to be high
Order by [counter_name] DESC, [object_name];