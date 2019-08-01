USE [master]
GO

/****** Object:  DdlTrigger [data_compression]    Script Date: 02.11.2018 16:11:23 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TRIGGER [data_compression] 

ON ALL SERVER 
AFTER CREATE_TABLE 
AS 
DECLARE @SchemaName nvarchar(150),

@ObjectName nvarchar(150),
@DatabaseName nvarchar(150),
@cmd nvarchar(500)

--������� ��� ����� �� ����������� ������� CREATE TABLE 
SET @SchemaName = EVENTDATA().value('(/EVENT_INSTANCE/SchemaName)[1]','nvarchar(150)')
--������� ��� �������
SET @ObjectName = EVENTDATA().value('(/EVENT_INSTANCE/ObjectName)[1]','nvarchar(150)')

--������� ��� ����
SET @DatabaseName = EVENTDATA().value('(/EVENT_INSTANCE/DatabaseName)[1]','nvarchar(150)')
--���������� �� ���������� ������ ��������� ������� �� ��������� �������� ������ ��� �������
set @cmd = 'ALTER TABLE [' + @DatabaseName + '].[' + @SchemaName + '].[' + @ObjectName + '] REBUILD PARTITION = ALL WITH (DATA_COMPRESSION = PAGE)'

--������ ��������� ��������� � ���� ���� ��� � ������� CompressionSetting.dbo.Databases � ��������� Active = 1, �� ��������� �������, ����� ����������
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

ENABLE TRIGGER [data_compression] ON ALL SERVER
GO


