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
  where 
	[Start_time] > '20180101' 
	--and Name like '%прие%'
    and Name like '%перекач%'
	--and Name like '%завалка%'
	--and ([Source] like '%ЗЯ%' or [Destination] like '%ЗЯ%')