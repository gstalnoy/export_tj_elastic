--dbcc opentran
/*
SELECT
SUM(unallocated_extent_page_count) AS [free pages],
(SUM(unallocated_extent_page_count)*1.0/128) AS [free space in MB]
FROM sys.dm_db_file_space_usage;
*/

/*
SELECT
session_id , elapsed_time_seconds as duration_seconds, *
FROM sys .dm_tran_active_snapshot_database_transactions
ORDER BY duration_seconds DESC;
*/

DECLARE @curr_date as DATETIME
SET @curr_date = GETDATE()

select --SESSION_TRAN.*,
SESSION_TRAN.session_id AS connectID, -- "���������� � ����" � ������� �������� 1�
--TRAN_INFO.*,
TRAN_INFO.transaction_begin_time,
DateDiff(MINUTE, TRAN_INFO.transaction_begin_time, @curr_date) AS Duration, -- ������������ � �������
TRAN_INFO.transaction_type, -- 1 = ���������� ������-������; 2 = ���������� ������ ��� ������; 3 = ��������� ����������; 4 = �������������� ����������.
TRAN_INFO.transaction_state, -- 0 = ���������� ��� �� ���� ��������� ����������������; 1 = ���������� ���� ����������������, �� ��� �� ��������; 2 = ���������� �������; 3 = ���������� �����������. ������������ ��� ���������� ������� ��� �������; 4 = ����������� ������� ��� ��������������� �� �������������� ����������. ������������� ������ ��� �������������� ����������. �������������� ���������� ��� ��� �������, �� ���������� ��������� �� ����� ����� �����; 5 = ���������� ��������� � ������� ��������� � ������� ����������; 6 = ���������� �������������; 7 = ������������ ����� ����������; 8 = ����� ���������� ��� ��������.
--CONN_INFO.*,
CONN_INFO.connect_time,
CONN_INFO.num_reads,
CONN_INFO.num_writes,
CONN_INFO.last_read,
CONN_INFO.last_write,
CONN_INFO.client_net_address,
CONN_INFO.most_recent_sql_handle,
--SQL_TEXT.*,
SQL_TEXT.dbid,
db_name(SQL_TEXT.dbid) AS IB_NAME,
SQL_TEXT.text,
--QUERIES_INFO.*,
QUERIES_INFO.start_time,
QUERIES_INFO.status,
QUERIES_INFO.command,
QUERIES_INFO.wait_type,
QUERIES_INFO.wait_time,
PLAN_INFO.query_plan

FROM sys.dm_tran_session_transactions AS SESSION_TRAN
JOIN sys.dm_tran_active_transactions AS TRAN_INFO
ON SESSION_TRAN.transaction_id = TRAN_INFO.transaction_id
LEFT JOIN sys.dm_exec_connections AS CONN_INFO
ON SESSION_TRAN.session_id = CONN_INFO.session_id
CROSS APPLY sys.dm_exec_sql_text(CONN_INFO.most_recent_sql_handle) AS SQL_TEXT
LEFT JOIN sys.dm_exec_requests AS QUERIES_INFO
ON SESSION_TRAN.session_id = QUERIES_INFO.session_id
LEFT JOIN (
SELECT VL_SESSION_TRAN.session_id AS session_id,
VL_PLAN_INFO.query_plan AS query_plan
FROM sys.dm_tran_session_transactions AS VL_SESSION_TRAN
INNER JOIN sys.dm_exec_requests AS VL_QUERIES_INFO
ON VL_SESSION_TRAN.session_id = VL_QUERIES_INFO.session_id
CROSS APPLY sys.dm_exec_text_query_plan(VL_QUERIES_INFO.plan_handle, VL_QUERIES_INFO.statement_start_offset, VL_QUERIES_INFO.statement_end_offset) AS VL_PLAN_INFO) AS PLAN_INFO
ON SESSION_TRAN.session_id = PLAN_INFO.session_id

ORDER BY transaction_begin_time ASC