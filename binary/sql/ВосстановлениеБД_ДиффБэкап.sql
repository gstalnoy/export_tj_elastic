

RESTORE DATABASE _C1_ERP_KSV_01 
FROM DISK = 'D:\Backup\ERP0\Backup.bak' 
WITH  FILE = 1,  
MOVE 'C1_ERP_0'     TO 'J:\Data\_C1_ERP_KSV_01.mdf',  
MOVE 'C1_ERP_0_log' TO 'J:\Data\_C1_ERP_KSV_01_log.ldf',  
NOUNLOAD,  
REPLACE,  
--RECOVERY,
NORECOVERY,
STATS = 5

go


-- diff

RESTORE DATABASE _C1_ERP_KSV_01 
FROM DISK = 'D:\Backup\C1_ERP_0_backup_2019_07_11_090005_9712432.bak' 
WITH  FILE = 1,  
MOVE 'C1_ERP_0'     TO 'J:\Data\_C1_ERP_KSV_01.mdf',  
MOVE 'C1_ERP_0_log' TO 'J:\Data\_C1_ERP_KSV_01_log.ldf',  
NOUNLOAD,  
REPLACE,  
RECOVERY,
STATS = 5



