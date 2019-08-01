select
	name [��� ����],
	physical_name [������������ ������],
	size * 8.0 / 1048576 as [������, ��]
	
from sys.master_files
where database_id > 4 and type = 0 and SUBSTRING ( physical_name ,1 , 2 ) = 'D:'
order by size * 8.0 / 1048576 desc
