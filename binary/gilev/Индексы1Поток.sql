use [_C1_ERP_RSA_04];
GO

DECLARE @NumberPotok int
DECLARE @NumberAllPotok int

SET @NumberAllPotok = 2 -- количество потоков
SET @NumberPotok = 0 -- номер потока

DECLARE @dbTables TABLE
(
	ID INT  NOT NULL,
	TABLE_NAME VARCHAR(255) NOT NULL,
	INDEXNAME VARCHAR(255) NOT NULL,
	avg_fragmentation_in_percent decimal  NOT NULL
)

INSERT INTO @dbTables
SELECT ID,TABLE_NAME,INDEXNAME,avg_fragmentation_in_percent FROM [ForReglament].[dbo].[TableListForDefrag]

DECLARE @tableCount int
DECLARE @tableName VARCHAR(128)
DECLARE @indexName VARCHAR(128)
DECLARE @sql VARCHAR(300)
DECLARE @TekHH int
DECLARE @AvcFragment int

SELECT @tableCount = COUNT(*) - @NumberPotok  FROM @dbTables

WHILE (@tableCount>0)
BEGIN

	SELECT @TekHH  = DATEPART(hour, GETDATE())

	SELECT TOP 1 @tableName = TABLE_NAME, @indexName = INDEXNAME, @AvcFragment = avg_fragmentation_in_percent from @dbTables WHERE ID = @tableCount
	

	Insert into [ForReglament].[dbo].[HystoryForDefrag] (table_name,StartDate,indexname) VALUES (@tableName,GETDATE(), @indexName) ;

      

	SET @sql = 'BEGIN TRY ALTER INDEX ['+@indexName+'] ON ['+ @tableName+']'+
	CASE
		WHEN @AvcFragment  > 30 THEN ' REBUILD WITH (ONLINE=OFF) END TRY BEGIN CATCH ALTER INDEX ['+@indexName+'] ON ['+ @tableName+ '] REBUILD WITH (ONLINE=OFF) END CATCH;'
		ELSE ' REORGANIZE END TRY BEGIN CATCH END CATCH;' 
	end
		
	EXEC(@sql)	

    UPDATE [ForReglament].[dbo].[HystoryForDefrag]  SET EndDate = GETDATE() WHERE table_name = @tableName and indexname = @indexName;

	DELETE FROM @dbTables
	WHERE id=@tableCount
	
	SET @tableCount=@tableCount-@NumberAllPotok
END
