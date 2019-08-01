
:setvar servername dev0
:setvar db_username sa
:setvar db_pass Zfwdd6bB
:connect $(servername) -U $(db_username) -P $(db_pass)

use master;
exec msdb.dbo.RestoreDB 'D:\Repl\ERP_2018-07-03 14_39_10.180.bak', '_C1_ERP_SVN_01', 'C1_ERP_0', 'C1_ERP_0_log';
                                 
