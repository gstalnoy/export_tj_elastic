SELECT
	CASE
	    /* Если разница по времени большее 6 часов, то 1 - сигнал об ошибке, иначе 0 - все хорошо */
	    WHEN TIMESTAMPDIFF(HOUR, MAX(creationDate_date), NOW()) - 6 >= 0 THEN 1
	    ELSE 0
	END AS Error ,	 
 	TIMESTAMPDIFF(HOUR, MAX(creationDate_date), NOW()) as DeltaTime /* Разница в часах */
FROM 	
 	productionorder as PO