use [_C1_ERP_RSA_04];
GO


DECLARE @NumberPotok int
DECLARE @NumberAllPotok int

SET @NumberAllPotok = 2 -- количество потоков
SET @NumberPotok = 1 -- номер потока

DECLARE @dbTables TABLE
(
	ID INT  NOT NULL,
	TABLE_NAME VARCHAR(128) NOT NULL
)

INSERT INTO @dbTables
SELECT ID,TABLE_NAME FROM [ForReglament].[dbo].[TableListForReglament] 


DECLARE @tableCount int
DECLARE @tableName VARCHAR(128)
DECLARE @sql VARCHAR(300)

SELECT @tableCount = COUNT(*) - @NumberPotok  FROM @dbTables


WHILE (@tableCount>0)
BEGIN
	SELECT TOP 1 @tableName = TABLE_NAME from @dbTables WHERE ID = @tableCount 
	
	Insert into [ForReglament].[dbo].[HystoryForReglament] (table_name,StartDate,isStatistka) VALUES (@tableName,GETDATE(),1) ;

    SET @sql = 'BEGIN TRY UPDATE STATISTICS [' + @tableName + '] WITH FULLSCAN  END TRY BEGIN CATCH END CATCH;'
	EXEC(@sql)	
	 
    UPDATE [ForReglament].[dbo].[HystoryForReglament]  SET EndDate = GETDATE() WHERE table_name = @tableName; 
	
	DELETE FROM @dbTables
	WHERE id=@tableCount
	
	SET @tableCount=@tableCount-@NumberAllPotok
END