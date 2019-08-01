RESTORE DATABASE 
	[_C1_ERP_REV_01] 
FROM  DISK = N'D:\Development\Replerp0\erp_star.bak' 
	WITH  FILE = 1,  
	MOVE N'C1_ERP_0'     TO N'D:\Data\_C1_ERP_REV_01.mdf',  
	MOVE N'C1_ERP_0_log' TO N'F:\LOG_SQL\_C1_ERP_REV_01_log.ldf',  
	NOUNLOAD,  
	REPLACE,  
	STATS = 5