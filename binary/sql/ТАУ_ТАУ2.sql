/****** Script for SelectTopNRows command from SSMS  ******/
SELECT  [id]
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
  where [Start_time] > '20180101' 
  --Name like '%перекач%'
  --Name like '%завал%'
  --[Source] like '%ЗЯ%'
  --and ([Source] like '%ЗЯ%' or [Destination] like '%ЗЯ%')
  and ([Source] like '%3.%' or [Destination] like '%3.%')