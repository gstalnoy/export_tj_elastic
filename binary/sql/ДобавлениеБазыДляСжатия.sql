/****** Script for SelectTopNRows command from SSMS  ******/

SELECT TOP (1000) [name],[active] FROM [CompressionSetting].[dbo].[Databases] where name = '_C1_ERP_GEOS_01'
  
  
  --update [CompressionSetting].[dbo].[Databases] set active = 1 where name = '_C1_ERP_REV_01'
  --INSERT INTO [dbo].[Databases]([name],[active]) VALUES ('_C1_ERP_RSA_04',1)