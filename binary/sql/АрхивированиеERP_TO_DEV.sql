
declare @sql nvarchar(max);
declare @dbName nvarchar(MAX);
declare @dbNameArch nvarchar(MAX);
declare @dbNameRest nvarchar(MAX);

set @dbName = 'C1_ERP_0';
set @dbNameArch = 'ERP_' + FORMAT( GETDATE(), 'dd_MM_yyyy_HH_mm_ss', 'ru-RU' ) + '.bak';
set @dbNameRest = 'C:\Repl\' + @dbNameArch;

set @sql = 'exec [msdb].[dbo].[CreateBackupDB] ''' + @dbName + ''', ''' + @dbNameArch + '''';

EXECUTE( @sql ) AT ERP0;

EXECUTE msdb.dbo.RestoreDB @dbNameRest, '_C1_ERP_COPY_YESTERDAY', 'C1_ERP_0', 'C1_ERP_0_log'

