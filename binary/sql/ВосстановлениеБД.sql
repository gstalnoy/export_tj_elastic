USE [master]
RESTORE DATABASE 
	[_C1_ERP_COPY_YESTERDAY] 
FROM  DISK = N'C:\Backup\ERP0\backup.bak' 
	WITH  FILE = 6,  
	MOVE N'C1_ERP_0'     TO N'D:\Data\_C1_ERP_COPY_YESTERDAY.mdf',  
	MOVE N'C1_ERP_0_log' TO N'F:\LOG_SQL\_C1_ERP_COPY_YESTERDAY_log.ldf',  
	NOUNLOAD,  
	REPLACE,  
	STATS = 5

GO


