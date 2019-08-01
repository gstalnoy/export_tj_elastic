-- 10 Database Backup Status
declare @RegistrySettings table (HKey nvarchar(255), Val nvarchar(1024))
declare @backupDirectory nvarchar(1024)
declare @backupFileList table ( backupFileName nvarchar(1204), idepth int, ifile int)

insert into @RegistrySettings
exec xp_instance_regread N'HKEY_LOCAL_MACHINE', N'Software\Microsoft\MSSQLServer\MSSQLServer', N'BackupDirectory'
insert into @RegistrySettings
exec xp_instance_regread N'HKEY_LOCAL_MACHINE', N'Software\Microsoft\MSSQLServer\MSSQLServer', N'DefaultData'
insert into @RegistrySettings
exec xp_instance_regread N'HKEY_LOCAL_MACHINE', N'Software\Microsoft\MSSQLServer\MSSQLServer', N'DefaultLog'

select @backupDirectory = val from @RegistrySettings where HKey = 'BackupDirectory'

select N'Server Name is: '+@@servername as "Server Version and Backup File Directory Name __________________________________________________________________________"
union all
select N'Version is: '+ @@VERSION 
union all
select 'Default backup directory is: ' + @backupDirectory
union all
select hkey + ' : ' +val from @RegistrySettings where HKey != 'BackupDirectory'  

Select case when database_name like 'FPSC%' then 'FP>>' else '    ' end as FP, 
q.*
,str([Log MB]*1.0/([Log MB]+[Data MB]) * 100.0,3)+'%' as [Log/Data PCT]
,case when recovery_model = 'FULL' and "Log MB" > 5000 and ( LastTransactionLogBackup is null or LastTransactionLogBackup <= getdate()- 3) then 'Alert - Transaction File Not Backed Up'
when recovery_model = 'Simple' and (LastFullBackup is null or LastFullBackup <= getdate()- 1) then 'Alert - Simple Recovery Mode and Daily Full Backup Missing'
when recovery_model = 'Full' and (LastFullBackup is null or LastFullBackup <= getdate()- 7) then 'Alert - Full Recovery Mode and Weekly Full Backup Missing'
else 'ok' end as "Backup Alert Message"
from
(
select name as database_name, crDate as DB_create_date
,DATABASEPROPERTYEX([name],'recovery') as recovery_model
,ltrim(ISNULL(STR(ABS(DATEDIFF(day, GetDate(),LastFullBackup))) + ' days ago', 'NEVER')) as Days_Since_Full_Backup
,case when DATABASEPROPERTYEX([name],'recovery') = 'SIMPLE' then '( Does Not Apply for Simple Recovery Mode )' 
else ltrim(ISNULL(STR(ABS(DATEDIFF(day, GetDate(),LastTransactionLogBackup))) + ' days ago', 'NEVER')) end as Days_Since_Transaction_Log_Backup
,bkq.LastFullBackup,bkq.LastTransactionLogBackup
--,(SELECT COUNT(1) FROM sys.master_files WHERE DB_NAME(database_id) = DB.name AND type_desc = 'rows') AS DataFiles
,(SELECT SUM((size*8)/1024) FROM sys.master_files WHERE DB_NAME(database_id) = DB.name AND type_desc = 'rows') AS [Data MB]
--,(SELECT COUNT(1) FROM sys.master_files WHERE DB_NAME(database_id) = DB.name AND type_desc = 'log') AS LogFiles
,(SELECT SUM((size*8)/1024) FROM sys.master_files WHERE DB_NAME(database_id) = DB.name AND type_desc = 'log') AS [Log MB]
from sys.sysdatabases db
left join
(
SELECT bk.database_name
,max(CASE TYPE WHEN 'D' THEN bk.backup_finish_date else null end) as LastFullBackup
,max(CASE TYPE WHEN 'L' THEN bk.backup_finish_date else null end) as LastTransactionLogBackup
FROM msdb..backupset BK 
group by bk.database_name
) bkq on bkq.database_name = db.name
WHERE db.name not in ('model','tempdb','msdb','master')
) q
order by FP desc,q.DB_create_date desc