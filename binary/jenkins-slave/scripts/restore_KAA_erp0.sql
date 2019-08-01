
:setvar servername dev0
:setvar db_username sa
:setvar db_pass Zfwdd6bB
:connect $(servername) -U $(db_username) -P $(db_pass)

use master;
exec msdb.dbo.RestoreDB '\\dev0\Repl\ERP_2018-06-26 08_41_25.197.bak', '_C1_ERP_KAA_01', 'C1_ERP_0', 'C1_ERP_0_log';
                                 
