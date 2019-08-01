use master;
exec msdb.dbo.RestoreDB 'C:\Repl\_C1_ZUP_31_to_dev0_jjjj.bak', '_C1_ZUP_JIV_31_DEMO', 'C1_ZUP_31', 'C1_ZUP_31_log';