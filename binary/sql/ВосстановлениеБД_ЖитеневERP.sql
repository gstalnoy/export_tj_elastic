--_C1_ERP_JIV_01
-- I:\Data\_C1_ERP_JIV_01.mdf
-- I:\Data\_C1_ERP_JIV_01_log.ldf

DECLARE @DB_NAME AS VARCHAR(150)
DECLARE @DB_NAME_SRC AS VARCHAR(150)
DECLARE @DB_NAME_LOG_SRC AS VARCHAR(150)

DECLARE @DB_NAME_DST AS VARCHAR(150)
DECLARE @DB_NAME_LOG_DST AS VARCHAR(150)

DECLARE @DB_PATH_DATA AS VARCHAR(150)
DECLARE @DB_PATH_LOG AS VARCHAR(150)

DECLARE @DB_BAK AS VARCHAR(150)

/* Расположение архива базы */
SET @DB_BAK = N'C:\Repl\prez.bak';

/* База ERP */
SET @DB_NAME_SRC     = N'C1_ERP_0';
SET @DB_NAME_LOG_SRC = N'C1_ERP_0_log';

/* База приемник*/
SET @DB_NAME = '_C1_ERP_JIV_01'

/* Каталоги приемники */
SET @DB_PATH_DATA = N'I:\DATA'
SET @DB_PATH_LOG  = N'I:\DATA'

SET @DB_NAME_DST     = @DB_PATH_DATA + '\' + @DB_NAME + '.mdf'
SET @DB_NAME_LOG_DST = @DB_PATH_LOG  + '\' + @DB_NAME + '.ldf'

DECLARE @sql AS varchar(20), @spid AS int

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

PRINT 'Process completed...'

USE master;

RESTORE DATABASE 
	@DB_NAME 
FROM  DISK = @DB_BAK 
	WITH  FILE = 1,  
	MOVE @DB_NAME_SRC     TO @DB_NAME_DST,  
	MOVE @DB_NAME_LOG_SRC TO @DB_NAME_LOG_DST,  
	NOUNLOAD,  
	REPLACE,  
	STATS = 5
