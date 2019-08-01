RESTORE DATABASE _C1_ERP_COPY_YESTERDAY 
FROM DISK = 'D:\Backup\ERP0\Backup.bak' 
WITH  FILE = 1,  
MOVE 'C1_ERP_0'     TO 'D:\Data\_C1_ERP_COPY_YESTERDAY.mdf',  
MOVE 'C1_ERP_0_log' TO 'F:\Log_SQL\_C1_ERP_COPY_YESTERDAY_log.ldf',  
NOUNLOAD,  
REPLACE,  
NORECOVERY,
STATS = 5

go


-- diff

RESTORE DATABASE _C1_ERP_COPY_YESTERDAY 
FROM DISK = 'D:\Backup\C1_ERP_0_backup_2019_04_10_150006_5637890.bak' 
WITH  FILE = 1,  
MOVE 'C1_ERP_0'     TO 'D:\Data\_C1_ERP_COPY_YESTERDAY.mdf',  
MOVE 'C1_ERP_0_log' TO 'F:\Log_SQL\_C1_ERP_COPY_YESTERDAY_log.ldf',  
NOUNLOAD,  
REPLACE,  
RECOVERY,
STATS = 5
