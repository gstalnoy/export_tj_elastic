DECLARE @object int; 
DECLARE @conn int; 
DECLARE @Table1C int;
DECLARE @String1C int;
DECLARE @Col1C nvarchar(max);

DECLARE @hr int;  
DECLARE @src varchar(255), @desc varchar(255);  
DECLARE @str_connect nvarchar(max);

DECLARE @str_server nvarchar(max);
DECLARE @str_basa nvarchar(max);
DECLARE @str_user nvarchar(max);
DECLARE @str_pas nvarchar(max);

--Соединение = V8.Connect("srvr=""" + Сервер + """; ref=""" + База.ИмяФайла + """; usr=""" + Пользователь + """; pwd=""" + Пароль + """;");
set @str_server = 'DEV0';
set @str_basa   = '_C1_ERP_RSA_04';
set @str_user   = 'РудаковСА';
set @str_pas    = '1';

-- Srvr="dev0";Ref="_C1_ERP_RSA_04";
set @str_connect = 'Srvr="' + @str_server + '"' +';Ref="' + @str_basa + '"' + '; Usr="' + @str_user + '"' + '; Pwd="' + @str_pas + '"';

print 'Пробуем подключиться к базе с параметрами ' + @str_connect;


EXEC @hr = sp_OACreate 'V83.ComConnector', @object OUT;  
IF @hr <> 0  
BEGIN  
   EXEC sp_OAGetErrorInfo @object, @src OUT, @desc OUT   
   raiserror('Ошибка создания COM подключения к ИБ 1С 0x%x, %s, %s',16,1, @hr, @src, @desc)  
    RETURN  
END;

EXEC @hr = sp_OAMethod @object, 'Connect', @conn OUT, @str_connect;  
IF @hr <> 0  
BEGIN  
   EXEC sp_OAGetErrorInfo @object  
   raiserror('Ошибка подключения к ИБ 1С 0x%x, %s, %s',16,1, @hr, @src, @desc)  
    RETURN  
END;  

EXEC @hr = sp_OAMethod @conn, 'GetDBStorageStructureInfo', @Table1C OUT;  
IF @hr <> 0  
BEGIN  
   EXEC sp_OAGetErrorInfo @conn  
   raiserror('Ошибка получения структуры ИБ 1С 0x%x, %s, %s',16,1, @hr, @src, @desc)  
    RETURN  
END;  

declare @ind int;

set @ind = 0;

WHILE @ind < 10  
BEGIN  

	EXEC @hr = sp_OAMethod @Table1C, 'Get', @String1C OUT, @ind;  
	IF @hr <> 0  
	BEGIN  
		EXEC sp_OAGetErrorInfo @Table1C  
		raiserror('Ошибка получения строки таблицы значений ИБ 1С 0x%x, %s, %s',16,1, @hr, @src, @desc)  
		RETURN  
	END;  
	-- Колонки 
	-- StorageTableName
	-- TableName
	-- Metadata
	-- Purpose
	-- Fields
	-- Indexes
	EXEC @hr = sp_OAGetProperty @String1C, 'StorageTableName', @Col1C OUT;  
	--EXEC @hr = sp_OAMethod @String1C, 'Get', @Col1C OUT, '0';  
	IF @hr <> 0  
	BEGIN  
		EXEC sp_OAGetErrorInfo @String1C  
		raiserror('Ошибка получения значения строки таблицы значений ИБ 1С 0x%x, %s, %s',16,1, @hr, @src, @desc)  
		RETURN  
	END;  

	set @ind = @ind + 1;

END  




--print @Table1C;