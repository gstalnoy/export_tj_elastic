SELECT  @@Servername AS ServerName ,
        d.Name AS DBName ,
        b.name,
        b.user_name,
        b.type,
        b.backup_start_date,
        b.Backup_finish_date,
        bmf.Physical_Device_name
FROM    sys.databases d
        INNER JOIN msdb..backupset b ON b.database_name = d.name
                                        AND b.[type] = 'D'
        INNER JOIN msdb.dbo.backupmediafamily bmf ON b.media_set_id = bmf.media_set_id
        where d.name = 'C1_ERP_0'
ORDER BY d.NAME ,
        b.Backup_finish_date DESC;