-- Запрос к серверу баз данных MS SQL для нахождения самых больших таблиц
SELECT  g.groupname                                           AS group_name
       ,schema_name(o.schema_id)                              AS scheme_name
       ,o.name                                                AS table_name
       ,MAX(o.modify_date)                                    AS table_modify_date
       ,SUM(p.reserved_page_count) * 8                        AS reserved_pages
       ,SUM(p.used_page_count) * 8                            AS used_pages
       ,SUM(CASE WHEN (p.index_id < 2)
                   THEN (  p.in_row_data_page_count
                         + p.lob_used_page_count
                         + p.row_overflow_used_page_count)
                   ELSE  p.lob_used_page_count 
                       + p.row_overflow_used_page_count
            END)                                              AS pages
       ,SUM(CASE WHEN (p.index_id < 2)
                   THEN p.row_count
                 ELSE 0
            END)                                              AS rows_count
  FROM       sys.dm_db_partition_stats  p
  INNER JOIN sys.objects                o  ON p.object_id = o.object_id AND o.type = 'U'
  INNER JOIN sys.partitions             t  ON p.partition_id = t.partition_id
  INNER JOIN sys.sysindexes             i  ON p.object_id = i.id AND t.index_id = i.indid
  INNER JOIN sys.sysfilegroups          g  ON i.groupid = g.groupid
    GROUP BY o.name, g.groupname, schema_name(o.schema_id)
    ORDER BY reserved_pages DESC
