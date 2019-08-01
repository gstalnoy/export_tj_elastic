
declare
@TotalCacheSize int,
@QueriesCacheSize int

select
  @TotalCacheSize = SUM(CAST(size_in_bytes as bigint)) / 1048576,
  @QueriesCacheSize = SUM(CAST((case 
                                  when objtype in ('Adhoc', 'Prepared') 
                                  then size_in_bytes else 0 
                                end) as bigint)) / 1048576
from sys.dm_exec_cached_plans

select 
  'Queries' as 'Cache', 
  @QueriesCacheSize as 'Cache Size (MB)', 
  CAST(@QueriesCacheSize * 100 / @TotalCacheSize as int) as 'Percent of Total'
union all
select 
  'Total' as 'Cache', 
  @TotalCacheSize as 'Cache Size (MB)', 
  100 as 'Percent of Total'
option(recompile)