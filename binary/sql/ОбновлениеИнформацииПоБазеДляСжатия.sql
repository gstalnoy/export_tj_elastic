/****** Script for SelectTopNRows command from SSMS  ******/

--SELECT [name], [active] FROM [CompressionSetting].[dbo].[Databases] where name = '_C1_ERP_REV_01'

update [CompressionSetting].[dbo].[Databases] set active = 0 where [name] = '_C1_ERP_REV_01'