DECLARE @pathname NVARCHAR(512);
SET @pathname = 'ERP_' + REPLACE(convert(varchar(50),GETDATE(), 121),':','_') + '.bak'

DECLARE @phys_name NVARCHAR(512);
SET @phys_name ='\\dev0\Repl\' + @pathname;

DECLARE @rest_phys_name NVARCHAR(512);
SET @rest_phys_name ='C:\Repl\' + @pathname;


PRINT 'Начало создания архива ERP ' + @phys_name;

EXEC sp_addumpdevice 'disk', 'networkdevice', @phys_name;

BACKUP DATABASE [C1_ERP_0] TO  
	networkdevice
	WITH COPY_ONLY, 
	NOINIT,  
	NAME = N' C1_ERP_0-Full Database Backup', 
	SKIP, 
	NOREWIND, 
	NOUNLOAD, 
	COMPRESSION, 
	STATS = 10;

EXEC sp_dropdevice 'networkdevice';

EXEC msdb.dbo.RestoreDB @rest_phys_name, '_C1_ERP_COPY_YESTERDAY', 'C1_ERP_0', 'C1_ERP_0_log';