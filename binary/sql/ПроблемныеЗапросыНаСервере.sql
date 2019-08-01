-- Запрос к серверу баз данных MS SQL для получения картины текущей активности и обнаружения проблемных запросов (подготовил Никоноров Вячеслав, г. Москва)
SELECT  r.session_id                                                                          -- id сессии
       ,r.[status]                                                                            -- статус выполнения запроса
       ,s.nt_user_name                                      AS NT_user_name                   -- доменный логин
       ,s.host_name                                                                           -- имя компьютера, с которого запущен запрос
       ,USER_NAME(r.user_id)                                AS user_name  
       ,db_name(r.database_id)                              AS DB                             -- имя базы данных                       
       ,r.blocking_session_id                                                                 -- id сессии того, кого ждем, т.е. кто заблокировал наш запрос
       ,r.wait_type                                                                           -- тип ожидания
       ,r.wait_time                                         AS [wait_time_ms/1000]
       ,r.wait_resource
       ,r.reads                                                                               -- количество физических чтений с жесткого диска
       ,r.logical_reads                                                                       -- количество логических чтений, объем чтения страниц в памяти
       ,r.writes
       ,r.row_count  
       ,r.start_time                                                                          -- дата-время начала выполнения запроса
       ,r.cpu_time                                                                            -- сферические "попугаи", показывающие использование CPU
       ,r.total_elapsed_time  
       ,r.granted_query_memory                              AS granted_query_memory_by_page   -- размер памяти в страницах, запрошенный  для выполняемого участка кода
       ,m.requested_memory_kb/1024                          AS 'Запрошенно памяти Мб'
       ,m.granted_memory_kb/1024                            AS 'Уже предоставленно памяти Мб'
       ,m.required_memory_kb/1024                           AS 'Мин требуемый объем памяти Мб'
       ,CASE WHEN m.is_next_candidate=0 
               THEN 'Нет'
         WHEN m.is_next_candidate=1 
               THEN 'Да'
         ELSE 'память уже есть'
        END                                                 AS 'Следующий на получение памяти'
       ,r.percent_complete                                  AS percent_for_alter_backup_etc   -- значение актуально при создании резервных копий, усечении файлов
       ,r.estimated_completion_time
       ,r.scheduler_id
       ,s.program_name
       ,CASE r.statement_end_offset 
          WHEN -1 
            THEN NULL                    
          ELSE object_name(t.objectid, t.dbid)      
        END                                                 AS object_name
       ,r.command 
       ,CASE r.statement_end_offset    
          WHEN -1 
            THEN t.text      
          ELSE SUBSTRING(t.text, r.statement_start_offset/2, 
                 (r.statement_end_offset/2) 
                  - (r.statement_start_offset/2))      
        END                                                 AS SQL_text                       -- выполняющийся в текущий момент код (часть batch, процедуры, функции)
       ,p.query_plan                                                                          -- план выполнения текущего кода
     --,r.plan_handle
       ,r.user_id
       ,(r.estimated_completion_time/1000)/60               AS minute
  FROM        sys.dm_exec_requests                   r   
  INNER JOIN  sys.dm_exec_sessions                   s ON r.session_id=s.session_id
  LEFT  JOIN  sys.dm_exec_query_memory_grants        m ON r.session_id=m.session_id
  OUTER APPLY sys.dm_exec_sql_text(r.sql_handle)     t   
  OUTER APPLY sys.dm_exec_query_plan(r.plan_handle)  p                      -- этому обращению необходима блокировка схемы, поэтому весь запрос может не выполниться при наличии заблокированных объектов 
    WHERE r.[status]        <> 'background'
          AND r.command     <> 'task manager'    
          AND r.session_id  <> @@SPID
          AND r.session_id  >  50
       -- AND r.database_id <> db_id('msdb') 
    ORDER BY r.logical_reads DESC
  
  
-- EXEC sp_whoisactive
