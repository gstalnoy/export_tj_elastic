/****** Script for SelectTopNRows command from SSMS  ******/
SELECT [id]
      ,[Session_ID]
      ,[Name]
      ,[Start_time]
      ,[Stop_time]
      ,[Start_Weight]
      ,[Stop_Weight]
      ,[Source]
      ,[Transit]
      ,[Destination]
      ,[Note]
  FROM [ASUTP].[dbo].[Report_Route]
  where [Start_time] >= '20180521' and [Start_time] <= '20180523'
  and Name like '%Элеватор: перекачка%'