SELECT t.object_id               AS table_id
      ,t.name                    AS table_name
      ,t.modify_date             AS table_modify_date
    --,s.stats_id
      ,s.name                    AS stats_name
      ,sp.last_updated           AS stats_last_updated  -- если дата очень древняя, то и статистика, скорее всего, устаревшая
      ,sp.rows                   AS stats_rows
      ,sp.rows_sampled           AS stats_rows_sampled
      ,s.auto_created            AS stats_auto_created
  FROM       sys.tables  t 
  INNER JOIN sys.stats   s ON t.object_id=s.object_id 
  CROSS APPLY sys.dm_db_stats_properties(t.object_id, s.stats_id) sp
    ORDER BY sp.last_updated