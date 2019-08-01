-- ������ � ������� ��� ������ MS SQL ��� ��������� ������� ������� ���������� � ����������� ���������� �������� (���������� ��������� ��������, �. ������)
SELECT  r.session_id                                                                          -- id ������
       ,r.[status]                                                                            -- ������ ���������� �������
       ,s.nt_user_name                                      AS NT_user_name                   -- �������� �����
       ,s.host_name                                                                           -- ��� ����������, � �������� ������� ������
       ,USER_NAME(r.user_id)                                AS user_name  
       ,db_name(r.database_id)                              AS DB                             -- ��� ���� ������                       
       ,r.blocking_session_id                                                                 -- id ������ ����, ���� ����, �.�. ��� ������������ ��� ������
       ,r.wait_type                                                                           -- ��� ��������
       ,r.wait_time                                         AS [wait_time_ms/1000]
       ,r.wait_resource
       ,r.reads                                                                               -- ���������� ���������� ������ � �������� �����
       ,r.logical_reads                                                                       -- ���������� ���������� ������, ����� ������ ������� � ������
       ,r.writes
       ,r.row_count  
       ,r.start_time                                                                          -- ����-����� ������ ���������� �������
       ,r.cpu_time                                                                            -- ����������� "�������", ������������ ������������� CPU
       ,r.total_elapsed_time  
       ,r.granted_query_memory                              AS granted_query_memory_by_page   -- ������ ������ � ���������, �����������  ��� ������������ ������� ����
       ,m.requested_memory_kb/1024                          AS '���������� ������ ��'
       ,m.granted_memory_kb/1024                            AS '��� �������������� ������ ��'
       ,m.required_memory_kb/1024                           AS '��� ��������� ����� ������ ��'
       ,CASE WHEN m.is_next_candidate=0 
               THEN '���'
         WHEN m.is_next_candidate=1 
               THEN '��'
         ELSE '������ ��� ����'
        END                                                 AS '��������� �� ��������� ������'
       ,r.percent_complete                                  AS percent_for_alter_backup_etc   -- �������� ��������� ��� �������� ��������� �����, �������� ������
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
        END                                                 AS SQL_text                       -- ������������� � ������� ������ ��� (����� batch, ���������, �������)
       ,p.query_plan                                                                          -- ���� ���������� �������� ����
     --,r.plan_handle
       ,r.user_id
       ,(r.estimated_completion_time/1000)/60               AS minute
  FROM        sys.dm_exec_requests                   r   
  INNER JOIN  sys.dm_exec_sessions                   s ON r.session_id=s.session_id
  LEFT  JOIN  sys.dm_exec_query_memory_grants        m ON r.session_id=m.session_id
  OUTER APPLY sys.dm_exec_sql_text(r.sql_handle)     t   
  OUTER APPLY sys.dm_exec_query_plan(r.plan_handle)  p                      -- ����� ��������� ���������� ���������� �����, ������� ���� ������ ����� �� ����������� ��� ������� ��������������� �������� 
    WHERE r.[status]        <> 'background'
          AND r.command     <> 'task manager'    
          AND r.session_id  <> @@SPID
          AND r.session_id  >  50
       -- AND r.database_id <> db_id('msdb') 
    ORDER BY r.logical_reads DESC
  
  
-- EXEC sp_whoisactive
