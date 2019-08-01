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
  where
  Start_time >= '20180828' and [Stop_time] <= '20180831'
  --and
	--Source like '%З.%' 
	--and Name like 'Элеватор: завалк%'