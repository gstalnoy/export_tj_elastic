DECLARE @spid AS int;
DECLARE @sql AS varchar(20);
declare @DB_NAME as varchar(max);
    
	set @DB_NAME = '_C1_ERP_REV_01';

	SELECT 
    	@spid = MIN(spid)  
    FROM 
    	master..sysprocesses  
    WHERE 
    	dbid = DB_ID(@DB_NAME) AND spid != @@SPID    
    
    WHILE (@spid IS NOT NULL)
    BEGIN
        PRINT 'Killing process ' + CAST(@spid AS VARCHAR) + ' ...'
        SET @sql = 'kill ' + CAST(@spid AS VARCHAR)
        EXEC (@sql)
    
        SELECT 
            @spid = MIN(spid)  
        FROM 
            master..sysprocesses  
        WHERE 
            dbid = DB_ID(@DB_NAME) 
            AND spid != @@SPID
    END

	PRINT 'Process completed...';



RESTORE DATABASE _C1_ERP_REV_01 
FROM DISK = 'D:\Backup\ERP0\Backup.bak' 
WITH  FILE = 1,  
MOVE 'C1_ERP_0'     TO 'D:\Data\_C1_ERP_REV_01.mdf',  
MOVE 'C1_ERP_0_log' TO 'F:\LOG_SQL\_C1_ERP_KSV_01_log.ldf',  
NOUNLOAD,  
REPLACE,  
NORECOVERY,
STATS = 5

go


-- diff
/*
RESTORE DATABASE _C1_ERP_REV_01
FROM DISK = 'D:\Backup\C1_ERP_0_backup_2019_07_08_130006_6733081.bak' 
WITH  FILE = 1,  
MOVE 'C1_ERP_0'     TO 'D:\Data\_C1_ERP_REV_01.mdf',  
MOVE 'C1_ERP_0_log' TO 'F:\LOG_SQL\_C1_ERP_KSV_01_log.ldf',  
NOUNLOAD,  
REPLACE,  
RECOVERY,
STATS = 5
*/