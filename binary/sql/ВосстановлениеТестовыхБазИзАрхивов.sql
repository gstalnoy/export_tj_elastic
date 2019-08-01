-- БИТ-финанс
exec msdb.dbo.RestoreDB_OneDB 'D:\Development\Backup\C1_BF_0\C1_BF_0_04_02_2019_10_03_17.bak', '_C1_BF_0_Test_Prelise', 'C1_BF_0', 'C1_BF_0_log';
go
-- До
exec msdb.dbo.RestoreDB_OneDB 'D:\Development\Backup\DO\DO0_TO_DEV_04_02_2019_10_17_22.bak', '_C1_DO_0_Test_Prelise', 'C1_DO_0', 'C1_DO_0_log';
go
-- Розница
exec msdb.dbo.RestoreDB_OneDB 'D:\Development\Backup\C1_Retail_0\C1_Retail_0_04_02_2019_10_46_39.bak', '_C1_Retail_0_Test_Prelise', 'C1_Retail_0', 'C1_Retail_0_log';
go
-- СЖСВ
exec msdb.dbo.RestoreDB_OneDB 'D:\Development\Backup\C1_SV_0\C1_SV_0_04_02_2019_10_17_46.bak', '_C1_SV_0_Test_Prelise', 'C1_SV_0', 'C1_SV_0_log';
go
--Весовая
exec msdb.dbo.RestoreDB_OneDB 'D:\Backup\wg211_to_dev_7_7_7_777_777_777.bak', '_C1_WG_20_Test_Prelise', 'C1_WG_21', 'C1_WG_21_log';
go
-- ЗУП 2.5
exec msdb.dbo.RestoreDB_OneDB 'D:\Development\Backup\C1_ZUP_0\C1_ZUP_0_04_02_2019_10_36_48.bak', '_C1_ZUP_0_Test_Prelise', 'C1_ZUP_0', 'C1_ZUP_0_log';
go
-- ЗУП 3.1
exec msdb.dbo.RestoreDB_OneDB 'D:\Development\Backup\C1_ZUP_31\C1_ZUP_31_04_02_2019_10_38_19.bak', '_C1_ZUP_31_Test_Prelise', 'C1_ZUP_31', 'C1_ZUP_31_log';

