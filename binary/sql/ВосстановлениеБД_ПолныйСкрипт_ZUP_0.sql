
DECLARE @sql AS varchar(20), @spid AS int

SELECT 
	@spid = min(spid)  
FROM 
	master..sysprocesses  
WHERE 
	dbid = db_id('_C1_ZUP_COPY_YESTERDAY') AND spid != @@spid    

WHILE (@spid IS NOT NULL)
BEGIN
    PRINT 'Killing process ' + cast(@spid AS varchar) + ' ...'
    SET @sql = 'kill ' + cast(@spid AS varchar)
    EXEC (@sql)

    SELECT 
        @spid = min(spid)  
    FROM 
        master..sysprocesses  
    WHERE 
        dbid = db_id('_C1_ZUP_COPY_YESTERDAY') 
        AND spid != @@spid
END

PRINT 'Process completed...'

DECLARE @LastBackupFile nvarchar(512), @LastBackupPath nvarchar(512);

USE [master]
RESTORE DATABASE 
	[_C1_ERP_COPY_YESTERDAY] 
FROM  DISK = N'\\app1c0\Repl\_C1_ZUP_0_.bak' 
	WITH  FILE = 6,  
	MOVE N'C1_ZUP_0'     TO N'D:\Data\_C1_ZUP_COPY_YESTERDAY.mdf',  
	MOVE N'C1_ZUP_0_log' TO N'F:\LOG_SQL\_C1_ZUP_COPY_YESTERDAY_log.ldf',  
	NOUNLOAD,  
	REPLACE,  
	STATS = 5





