/*
use [_Auto_Verification_1c]


select 
		 	((SELECT sum(convert(bigint,case when status & 64 = 0 then size else 0 end)) FROM dbo.sysfiles) - 
			(SELECT sum(a.total_pages) 	from sys.partitions p join sys.allocation_units a on p.partition_id = a.container_id
		left join sys.internal_tables it on p.object_id = it.object_id))* 8192/1048576 AS unallocated_space_MB
		*/

IF OBJECT_ID('TempDB..#DBSizes') IS NOT NULL
   DROP TABLE #DBSizes

CREATE TABLE #DBSizes
   (
   DBName         Varchar(128),
   FileType      Varchar(5),
   CurrentSizeMB   Dec(9,1),
   SpacedUsedMB   Dec(9,1),
   FreeSpaceMB      Dec(9,1),
   SpacedUsedGB   Dec(9,3),
   FreeSpaceGB      Dec(9,3),
   SamppleDT      SmallDatetime
   )

DECLARE @SQL   Varchar(1000)
SET @SQL = 'USE [?]
SELECT   DBName            = DB_NAME(),
      FileType         = DF.type_desc,
      CurrentSizeMB      = SUM(CAST(DF.size / 128.0 AS Dec(9,1))),
      SpacedUsedMB      = SUM(CAST(FILEPROPERTY(DF.name, ''SpaceUsed'') / 128.0 AS Dec(9,1))),
      FreeSpaceMB         = SUM(CAST((DF.size - FILEPROPERTY(name, ''SpaceUsed'')) / 128.0 AS Dec(9,1))),
      SpacedUsedGB      = SUM(CAST(FILEPROPERTY(DF.name, ''SpaceUsed'') / 128.0 / 1024.0 AS Dec(9,3))),
      FreeSpaceGB         = SUM(CAST((DF.size - FILEPROPERTY(name, ''SpaceUsed'')) / 128.0 / 1024.0 AS Dec(9,3))),
      SamppleDT         = CAST(GETDATE() AS SmallDatetime)
FROM   sys.database_files DF
WHERE   DF.type_desc = ''ROWS''
GROUP   BY DF.type_desc'

INSERT   #DBSizes
EXEC   sp_MSForEachDB @SQL

SELECT   *
FROM   #DBSizes
order by FreeSpaceGB desc