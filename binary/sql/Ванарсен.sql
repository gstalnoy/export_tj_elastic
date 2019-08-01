SELECT
	CASE
	    /* ���� ������� �� ������� ������� 6 �����, �� 1 - ������ �� ������, ����� 0 - ��� ������ */
	    WHEN TIMESTAMPDIFF(HOUR, MAX(creationDate_date), NOW()) - 6 >= 0 THEN 1
	    ELSE 0
	END AS Error ,	 
 	TIMESTAMPDIFF(HOUR, MAX(creationDate_date), NOW()) as DeltaTime /* ������� � ����� */
FROM 	
 	productionorder as PO