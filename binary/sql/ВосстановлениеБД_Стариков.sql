use master;
exec msdb.dbo.RestoreDB 'C:\Repl\ERP_2018-06-26 08_41_25.197.bak', '_C1_ERP_SAV_01', 'C1_ERP_0', 'C1_ERP_0_log';