USE [master]
GO

/****** Object:  DdlTrigger [index_compression]    Script Date: 02.11.2018 16:12:06 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE TRIGGER [index_compression]
ON ALL SERVER
AFTER CREATE_INDEX

AS
DECLARE @SchemaName nvarchar(150),
@ObjectName nvarchar(150),
@TargetObjectName nvarchar(150),

@DatabaseName nvarchar(150),
@cmd nvarchar(500)
--Получим имя схемы из выполняемой команды CREATE INDEX
SET @SchemaName = EVENTDATA().value('(/EVENT_INSTANCE/SchemaName)[1]','nvarchar(150)')

--Получим имя индекса
SET @ObjectName = EVENTDATA().value('(/EVENT_INSTANCE/ObjectName)[1]','nvarchar(150)')
--Получим имя таблицы
SET @TargetObjectName = EVENTDATA().value('(/EVENT_INSTANCE/TargetObjectName)[1]','nvarchar(150)')

--Получим имя базы
SET @DatabaseName = EVENTDATA().value('(/EVENT_INSTANCE/DatabaseName)[1]','nvarchar(150)')
--Сформируем из полученных данных требуемую команду на установку признака сжатия для индекса
set @cmd = 'ALTER INDEX [' + @ObjectName + '] ON [' + @DatabaseName + '].[' + @SchemaName + '].[' + @TargetObjectName + '] REBUILD PARTITION = ALL WITH (DATA_COMPRESSION = PAGE)'

--Теперь проверяем настройки – если базы нет в таблице CompressionSetting.dbo.Databases с признаком Active = 1, то выполняем команду, иначе игнорируем
IF NOT EXISTS (SELECT  1 AS Expr1
            FROM CompressionSetting.dbo.Databases AS T
            WHERE (name = @DatabaseName) AND Active = 1)

BEGIN
    INSERT INTO CompressionSetting.dbo.trace (text, DatabaseName, DateTime) SELECT @cmd, @DatabaseName, GETDATE()

    EXEC (@cmd)
END
ELSE
BEGIN
    PRINT 'TEST'

END
GO

ENABLE TRIGGER [index_compression] ON ALL SERVER
GO


