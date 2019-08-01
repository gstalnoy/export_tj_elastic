-- Документооборот
exec msdb.dbo.RestoreDB_OneDB 'D:\Development\Backup\DO\DO0_TO_DEV_23_07_2019_17_43_42.bak', '_C1_DO_0_Test_Prelise', 'C1_DO_0', 'C1_DO_0_log'
-- ЗУП 3
exec msdb.dbo.RestoreDB_OneDB 'D:\Development\Backup\C1_ZUP_0\C1_ZUP_0_23_07_2019_17_47_16.bak', '_C1_ZUP_31_Test_Prelise', 'C1_ZUP_31', 'C1_ZUP_31_log'
-- Розница
exec msdb.dbo.RestoreDB_OneDB 'D:\Development\Backup\C1_Retail_0\C1_Retail_0_23_07_2019_17_48_43.bak', '_C1_Retail_0_Test_Prelise', 'C1_Retail_0', 'C1_Retail_0_log'
-- Весовая
exec msdb.dbo.RestoreDB_OneDB 'D:\Backup\wg21_to_dev0_1.bak', '_C1_WG_20_Test_Prelise', 'C1_WG_21', 'C1_WG_21_log'
-- СЖСВ
exec msdb.dbo.RestoreDB_OneDB 'D:\Development\Backup\C1_SV_0\C1_SV_0_23_07_2019_17_49_16.bak', '_C1_SV_0_Test_Prelise', 'C1_SV_0', 'C1_SV_0_log'
-- Бит-финанс
exec msdb.dbo.RestoreDB_OneDB 'D:\Development\Backup\C1_BF_0\C1_BF_0_24_07_2019_14_23_16.bak', '_C1_BF_0_Test_Prelise', 'C1_BF_0', 'C1_BF_0_log'