RESTORE DATABASE [_C1_Retail_TMP_01] 

FROM  DISK = N'C:\Temp\backup.bak' 
	WITH RECOVERY, FILE = 8,  
	MOVE N'C1_Retail_0' TO N'D:\Data\_C1_Retail_TMP_01.mdf',  
	MOVE N'C1_Retail_0_log' TO N'F:\LOG_SQL\_C1_Retail_TMP_01_log.ldf',  
	NOUNLOAD,  
	REPLACE,  
	STATS = 10
GO
