-- «апрос к серверу баз данных MS SQL, показывающий кто занимает TempDB (автор: Pinal Dave)
SELECT  t.dbid                                        AS query_execution_context_DBid
       ,DB_NAME(t.dbid)                               AS query_execution_context_DBname
       ,t.objectid                                    AS module_object_id
       ,r.start_time
       ,r.command
       ,SUBSTRING(t.text, 
          r.statement_start_offset/2 + 1,
         (CASE WHEN r.statement_end_offset = -1
            THEN LEN(CONVERT(NVARCHAR(MAX),t.text))*2
            ELSE r.statement_end_offset
          END - r.statement_start_offset)/2)          AS query_text
       ,u.user_objects_alloc_page_count 
         - u.user_objects_dealloc_page_count          AS outstanding_user_objects_page_counts      -- обращаем внимание!
       ,u.internal_objects_alloc_page_count 
         - u.internal_objects_dealloc_page_count      AS outstanding_internal_objects_page_counts  -- обращаем внимание!
       ,r.open_transaction_count
       ,r.percent_complete
       ,r.estimated_completion_time
       ,r.cpu_time
       ,r.total_elapsed_time
       ,r.reads
       ,r.writes
       ,r.logical_reads                                                                            -- обращаем на количество логических чтений!
       ,r.granted_query_memory
       ,u.request_id
       ,u.exec_context_id
       ,u.session_id
       ,s.HOST_NAME
       ,s.login_name
       ,s.program_name
  FROM sys.dm_db_task_space_usage                u
  INNER JOIN sys.dm_exec_requests                r ON u.session_id = r.session_id AND u.request_id = r.request_id
  INNER JOIN sys.dm_exec_sessions                s ON u.session_id = s.session_id
  CROSS APPLY sys.dm_exec_sql_text(r.sql_handle) t
    WHERE u.internal_objects_alloc_page_count + u.user_objects_alloc_page_count > 0
    ORDER BY u.user_objects_alloc_page_count - u.user_objects_dealloc_page_count 
           + u.internal_objects_alloc_page_count - u.internal_objects_dealloc_page_count DESC
  
  
-- «апрос к серверу баз данных MS SQL, показывающий кто и сколько в ћб занимает TempDB
;WITH task_space_usage
AS (
SELECT session_id
      ,request_id
      ,SUM(internal_objects_alloc_page_count)     AS alloc_pages
      ,SUM(internal_objects_dealloc_page_count)   AS dealloc_pages
  FROM sys.dm_db_task_space_usage WITH (NOLOCK)
    WHERE session_id <> @@SPID
    GROUP BY session_id, request_id
   )
SELECT  u.session_id
       ,u.alloc_pages * 1.0 / 128                 AS internal_object_MB_space
       ,u.dealloc_pages * 1.0 / 128               AS internal_object_dealloc_MB_space
       ,t.text
       ,ISNULL(NULLIF(SUBSTRING(t.text, r.statement_start_offset / 2,
                 CASE WHEN r.statement_end_offset < r.statement_start_offset
                   THEN 0
                   ELSE(r.statement_end_offset - r.statement_start_offset ) / 2 
                 END), ''), t.text )              AS statement_text
       ,p.query_plan
  FROM task_space_usage                             u
  INNER JOIN sys.dm_exec_requests                   r WITH (NOLOCK) ON u.session_id = r.session_id AND u.request_id = r.request_id
  OUTER APPLY sys.dm_exec_sql_text(r.sql_handle)    t
  OUTER APPLY sys.dm_exec_query_plan(r.plan_handle) p
    WHERE t.text IS NOT NULL
          OR p.query_plan IS NOT NULL
    ORDER BY 3 DESC
 
 
-- —м. также (see also):
-- sys.dm_db_file_space_usage     -- returns space usage information for each file in tempdb
-- sys.dm_db_session_space_usage  -- returns the number of pages allocated and deallocated by each session
-- sys.dm_db_task_space_usage     -- returns page allocation and deallocation activity by task
   
   
-- TempDB могут использовать (TempDB can use):
--   Temporary user objects like temp tables, table variables;
--   Cursors;
--   Internal worktables for spool and sorting;
--   Row Versioning for snapshot isolation;
--   Online Index rebuild operations;
--   MARS (Multiple Active Resultsets);
--   AFTER Triggers and more;
--   and other
