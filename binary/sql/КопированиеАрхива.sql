exec sp_configure 'show advanced option', 1;
go
reconfigure;
go
exec sp_configure 'xp_cmdshell', 1;
go
reconfigure;
go
xp_cmdshell 'copy c:\backup \\dev0\Backup\_ERP0_';
go
exec sp_configure 'xp_cmdshell', 0;
go
reconfigure;
