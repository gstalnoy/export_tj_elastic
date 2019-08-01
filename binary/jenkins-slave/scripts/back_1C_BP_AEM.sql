
:setvar servername app1c0
:setvar db_username db_backup
:setvar db_pass 159357456
:connect $(servername) -U $(db_username) -P $(db_pass)

USE master;

DECLARE @pathname  NVARCHAR(512);
DECLARE @phys_name NVARCHAR(512);
DECLARE @dt        NVARCHAR(512);

set @dt = '_' + FORMAT( getdate(), 'dd_MM_yyyy_HH_mm_ss', 'ru-RU' );

SET @pathname = '1C_BP_AEM';
SET @pathname = @pathname + @dt;
SET @pathname = @pathname + '.bak';

SET @phys_name = '\\dev0\Development\Backup\1C.BP.AEM\' + @pathname;

PRINT 'Start create arch 1C_BP_AEM ' + @phys_name;

EXEC sp_addumpdevice 'disk', 'networkdevice', @phys_name;

BACKUP DATABASE [1C.BP.AEM] TO  
	networkdevice
	WITH COPY_ONLY, 
	NOINIT,  
	NAME = N' 1C_BP_AEM-Full Database Backup', 
	SKIP, 
	NOREWIND, 
	NOUNLOAD, 
	COMPRESSION, 
	STATS = 10;

EXEC sp_dropdevice 'networkdevice';