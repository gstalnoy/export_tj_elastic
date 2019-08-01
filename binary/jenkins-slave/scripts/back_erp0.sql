
:setvar servername erp0
:setvar db_username db_backup
:setvar db_pass 159357456
:connect $(servername) -U $(db_username) -P $(db_pass)

USE C1_ERP_0;

DECLARE @pathname NVARCHAR(512);
DECLARE @dt NVARCHAR(512);
DECLARE @phys_name NVARCHAR(512);

set @dt = '_' + FORMAT( getdate(), 'dd_MM_yyyy_HH_mm_ss', 'ru-RU' );

SET @pathname = 'ERP0_TO_DEV';
SET @pathname = @pathname + @dt;
SET @pathname = @pathname + '.bak';

SET @phys_name = '\\dev0\Development\Backup\ERP\BACK\' + @pathname;

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