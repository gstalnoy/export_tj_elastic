select
 _period as [���� �����],
 count(*) as [����� ����� �����],
 sum
 (
	case when _Fld52452 = 0 and _Fld52453 = 0 and 
_Fld52454 = 0 and 
_Fld52455 = 0 and 
_Fld52456 = 0 and 
_Fld52457 = 0 and 
_Fld52458 = 0
then 1 else 0
end

 ) as [������� ������]
from 
	_AccumRgT52468
group by _Period
order by [���� �����] desc