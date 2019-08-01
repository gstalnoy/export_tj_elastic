declare @db nvarchar(100)
declare @sql nvarchar(256)
declare cursor_size_srv cursor for
SELECT  --@@SERVERNAME AS Server ,
        name AS DBName 
        --recovery_model_Desc AS RecoveryModel ,
        --Compatibility_level AS CompatiblityLevel ,
        --create_date ,
        --state_desc
FROM    sys.databases
where name not in ('master','msdb','model','tempdb') 
--and recovery_model_desc = 'full'
ORDER BY Name; 
 
OPEN cursor_size_srv
FETCH NEXT FROM cursor_size_srv INTO @db
WHILE (@@FETCH_STATUS=0)
BEGIN
set @sql = 'USE '+@db+'
GO
DBCC SHRINKFILE (N'''+@db+'_log'' , 0, TRUNCATEONLY)
GO'
print (@sql);
FETCH NEXT FROM cursor_size_srv INTO @db
END
CLOSE cursor_size_srv
DEALLOCATE cursor_size_srv