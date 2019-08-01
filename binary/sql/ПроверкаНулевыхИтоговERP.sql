-- _AccumRgT51642	(с 09.2017 по 03.2019 - 19 месяцев)					
-- _AccumRgT53810	(с 10.2017 по 02.2019 - 17 месяцев)					
-- _AccRgAT32063	(с 10.2017 по 08.2018 - 11 месяцев)					

SELECT 
'_AccumRgT50580' AS [ИмяТаблицыSQL],
convert(datetime,_Period, 120) as [ПериодИтогов],						--///// |_Period as [ПериодИтогов],
SUM(CASE WHEN _splitter=0 THEN 1 ELSE 0 END) as [КоличествоСтрок],
SUM(CASE WHEN _Fld50578 = 0 AND _Fld50579 = 0 AND _Splitter = 0 THEN 1 ELSE 0 END) as [КоличествоНулевыхСтрок]
FROM _AccumRgT50580
GROUP BY _Period
UNION ALL
SELECT 
'_AccumRgT50585' AS [ИмяТаблицыSQL],
convert(datetime,_Period, 120) as [ПериодИтогов],						--///// |_Period as [ПериодИтогов],
SUM(CASE WHEN _splitter=0 THEN 1 ELSE 0 END) as [КоличествоСтрок],
SUM(CASE WHEN _Fld50584 = 0 AND _Splitter = 0 THEN 1 ELSE 0 END) as [КоличествоНулевыхСтрок]
FROM _AccumRgT50585
GROUP BY _Period
UNION ALL
SELECT 
'_AccumRgT50862' AS [ИмяТаблицыSQL],
convert(datetime,_Period, 120) as [ПериодИтогов],						--///// |_Period as [ПериодИтогов],
SUM(CASE WHEN _splitter=0 THEN 1 ELSE 0 END) as [КоличествоСтрок],
SUM(CASE WHEN _Fld50857 = 0 AND _Fld50858 = 0 AND _Fld50859 = 0 AND _Splitter = 0 THEN 1 ELSE 0 END) as [КоличествоНулевыхСтрок]
FROM _AccumRgT50862
GROUP BY _Period
UNION ALL
SELECT 
'_AccumRgT51460' AS [ИмяТаблицыSQL],
convert(datetime,_Period, 120) as [ПериодИтогов],						--///// |_Period as [ПериодИтогов],
COUNT(*) as [КоличествоСтрок],
SUM(CASE WHEN _Fld51448 = 0 AND _Fld51449 = 0 AND _Fld51450 = 0 AND _Fld51451 = 0 AND _Fld51452 = 0 THEN 1 ELSE 0 END) as [КоличествоНулевыхСтрок]
FROM _AccumRgT51460
GROUP BY _Period
UNION ALL
SELECT 
'_AccumRgT51514' AS [ИмяТаблицыSQL],
convert(datetime,_Period, 120) as [ПериодИтогов],						--///// |_Period as [ПериодИтогов],
COUNT(*) as [КоличествоСтрок],
SUM(CASE WHEN _Fld51507 = 0 AND _Fld51508 = 0 AND _Fld51509 = 0 THEN 1 ELSE 0 END) as [КоличествоНулевыхСтрок]
FROM _AccumRgT51514
GROUP BY _Period
UNION ALL
SELECT 
'_AccumRgT51670' AS [ИмяТаблицыSQL],
convert(datetime,_Period, 120) as [ПериодИтогов],						--///// |_Period as [ПериодИтогов],
COUNT(*) as [КоличествоСтрок],
SUM(CASE WHEN _Fld51669 = 0 THEN 1 ELSE 0 END) as [КоличествоНулевыхСтрок]
FROM _AccumRgT51670
GROUP BY _Period
UNION ALL
SELECT 
'_AccumRgT51679' AS [ИмяТаблицыSQL],
convert(datetime,_Period, 120) as [ПериодИтогов],						--///// |_Period as [ПериодИтогов],
SUM(CASE WHEN _splitter=0 THEN 1 ELSE 0 END) as [КоличествоСтрок],
SUM(CASE WHEN _Fld51678 = 0 AND _Splitter = 0 THEN 1 ELSE 0 END) as [КоличествоНулевыхСтрок]
FROM _AccumRgT51679
GROUP BY _Period
UNION ALL
SELECT 
'_AccumRgT52274' AS [ИмяТаблицыSQL],
convert(datetime,_Period, 120) as [ПериодИтогов],						--///// |_Period as [ПериодИтогов],
SUM(CASE WHEN _splitter=0 THEN 1 ELSE 0 END) as [КоличествоСтрок],
SUM(CASE WHEN _Fld52272 = 0 AND _Splitter = 0 THEN 1 ELSE 0 END) as [КоличествоНулевыхСтрок]
FROM _AccumRgT52274
GROUP BY _Period
UNION ALL
SELECT 
'_AccumRgT52632' AS [ИмяТаблицыSQL],
convert(datetime,_Period, 120) as [ПериодИтогов],						--///// |_Period as [ПериодИтогов],
SUM(CASE WHEN _splitter=0 THEN 1 ELSE 0 END) as [КоличествоСтрок],
SUM(CASE WHEN _Fld52629 = 0 AND _Fld52630 = 0 AND _Splitter = 0 THEN 1 ELSE 0 END) as [КоличествоНулевыхСтрок]
FROM _AccumRgT52632
GROUP BY _Period
UNION ALL
SELECT 
'_AccumRgT52641' AS [ИмяТаблицыSQL],
convert(datetime,_Period, 120) as [ПериодИтогов],						--///// |_Period as [ПериодИтогов],
COUNT(*) as [КоличествоСтрок],
SUM(CASE WHEN _Fld52640 = 0 THEN 1 ELSE 0 END) as [КоличествоНулевыхСтрок]
FROM _AccumRgT52641
GROUP BY _Period
UNION ALL
SELECT 
'_AccumRgT52935' AS [ИмяТаблицыSQL],
convert(datetime,_Period, 120) as [ПериодИтогов],						--///// |_Period as [ПериодИтогов],
SUM(CASE WHEN _splitter=0 THEN 1 ELSE 0 END) as [КоличествоСтрок],
SUM(CASE WHEN _Fld52933 = 0 AND _Splitter = 0 THEN 1 ELSE 0 END) as [КоличествоНулевыхСтрок]
FROM _AccumRgT52935
GROUP BY _Period
UNION ALL
SELECT 
'_AccumRgT53048' AS [ИмяТаблицыSQL],
convert(datetime,_Period, 120) as [ПериодИтогов],						--///// |_Period as [ПериодИтогов],
SUM(CASE WHEN _splitter=0 THEN 1 ELSE 0 END) as [КоличествоСтрок],
SUM(CASE WHEN _Fld53045 = 0 AND _Fld53046 = 0 AND _Splitter = 0 THEN 1 ELSE 0 END) as [КоличествоНулевыхСтрок]
FROM _AccumRgT53048
GROUP BY _Period
UNION ALL
SELECT 
'_AccumRgT53154' AS [ИмяТаблицыSQL],
convert(datetime,_Period, 120) as [ПериодИтогов],						--///// |_Period as [ПериодИтогов],
SUM(CASE WHEN _splitter=0 THEN 1 ELSE 0 END) as [КоличествоСтрок],
SUM(CASE WHEN _Fld53149 = 0 AND _Splitter = 0 THEN 1 ELSE 0 END) as [КоличествоНулевыхСтрок]
FROM _AccumRgT53154
GROUP BY _Period
UNION ALL
SELECT 
'_AccumRgT53165' AS [ИмяТаблицыSQL],
convert(datetime,_Period, 120) as [ПериодИтогов],						--///// |_Period as [ПериодИтогов],
SUM(CASE WHEN _splitter=0 THEN 1 ELSE 0 END) as [КоличествоСтрок],
SUM(CASE WHEN _Fld53161 = 0 AND _Fld53162 = 0 AND _Fld53163 = 0 AND _Splitter = 0 THEN 1 ELSE 0 END) as [КоличествоНулевыхСтрок]
FROM _AccumRgT53165
GROUP BY _Period
UNION ALL
SELECT 
'_AccumRgT53255' AS [ИмяТаблицыSQL],
convert(datetime,_Period, 120) as [ПериодИтогов],						--///// |_Period as [ПериодИтогов],
SUM(CASE WHEN _splitter=0 THEN 1 ELSE 0 END) as [КоличествоСтрок],
SUM(CASE WHEN _Fld53249 = 0 AND _Splitter = 0 THEN 1 ELSE 0 END) as [КоличествоНулевыхСтрок]
FROM _AccumRgT53255
GROUP BY _Period
UNION ALL
SELECT 
'_AccumRgT53454' AS [ИмяТаблицыSQL],
convert(datetime,_Period, 120) as [ПериодИтогов],						--///// |_Period as [ПериодИтогов],
COUNT(*) as [КоличествоСтрок],
SUM(CASE WHEN _Fld53450 = 0 AND _Fld53451 = 0 AND _Fld53452 = 0 THEN 1 ELSE 0 END) as [КоличествоНулевыхСтрок]
FROM _AccumRgT53454
GROUP BY _Period
UNION ALL
SELECT 
'_AccumRgT53595' AS [ИмяТаблицыSQL],
convert(datetime,_Period, 120) as [ПериодИтогов],						--///// |_Period as [ПериодИтогов],
SUM(CASE WHEN _splitter=0 THEN 1 ELSE 0 END) as [КоличествоСтрок],
SUM(CASE WHEN _Fld53591 = 0 AND _Fld53592 = 0 AND _Fld53593 = 0 AND _Splitter = 0 THEN 1 ELSE 0 END) as [КоличествоНулевыхСтрок]
FROM _AccumRgT53595
GROUP BY _Period
UNION ALL
SELECT 
'_AccumRgT53633' AS [ИмяТаблицыSQL],
convert(datetime,_Period, 120) as [ПериодИтогов],						--///// |_Period as [ПериодИтогов],
COUNT(*) as [КоличествоСтрок],
SUM(CASE WHEN _Fld53631 = 0 AND _Fld53632 = 0 THEN 1 ELSE 0 END) as [КоличествоНулевыхСтрок]
FROM _AccumRgT53633
GROUP BY _Period
UNION ALL
SELECT 
'_AccumRgT53642' AS [ИмяТаблицыSQL],
convert(datetime,_Period, 120) as [ПериодИтогов],						--///// |_Period as [ПериодИтогов],
COUNT(*) as [КоличествоСтрок],
SUM(CASE WHEN _Fld53641 = 0 THEN 1 ELSE 0 END) as [КоличествоНулевыхСтрок]
FROM _AccumRgT53642
GROUP BY _Period
UNION ALL
SELECT 
'_AccumRgT53695' AS [ИмяТаблицыSQL],
convert(datetime,_Period, 120) as [ПериодИтогов],						--///// |_Period as [ПериодИтогов],
COUNT(*) as [КоличествоСтрок],
SUM(CASE WHEN _Fld53692 = 0 AND _Fld53693 = 0 THEN 1 ELSE 0 END) as [КоличествоНулевыхСтрок]
FROM _AccumRgT53695
GROUP BY _Period
UNION ALL
SELECT 
'_AccumRgT53767' AS [ИмяТаблицыSQL],
convert(datetime,_Period, 120) as [ПериодИтогов],						--///// |_Period as [ПериодИтогов],
COUNT(*) as [КоличествоСтрок],
SUM(CASE WHEN _Fld53766 = 0 THEN 1 ELSE 0 END) as [КоличествоНулевыхСтрок]
FROM _AccumRgT53767
GROUP BY _Period
UNION ALL
SELECT 
'_AccumRgT53869' AS [ИмяТаблицыSQL],
convert(datetime,_Period, 120) as [ПериодИтогов],						--///// |_Period as [ПериодИтогов],
COUNT(*) as [КоличествоСтрок],
SUM(CASE WHEN _Fld53864 = 0 AND _Fld53865 = 0 AND _Fld53866 = 0 THEN 1 ELSE 0 END) as [КоличествоНулевыхСтрок]
FROM _AccumRgT53869
GROUP BY _Period
UNION ALL
SELECT 
'_AccumRgT53889' AS [ИмяТаблицыSQL],
convert(datetime,_Period, 120) as [ПериодИтогов],						--///// |_Period as [ПериодИтогов],
COUNT(*) as [КоличествоСтрок],
SUM(CASE WHEN _Fld53888 = 0 THEN 1 ELSE 0 END) as [КоличествоНулевыхСтрок]
FROM _AccumRgT53889
GROUP BY _Period
UNION ALL
SELECT 
'_AccumRgT52265' AS [ИмяТаблицыSQL],
convert(datetime,_Period, 120) as [ПериодИтогов],						--///// |_Period as [ПериодИтогов],
SUM(CASE WHEN _splitter=0 THEN 1 ELSE 0 END) as [КоличествоСтрок],
SUM(CASE WHEN _Fld52261 = 0 AND _Fld52262 = 0 AND _Fld52263 = 0 AND _Splitter = 0 THEN 1 ELSE 0 END) as [КоличествоНулевыхСтрок]
FROM _AccumRgT52265
GROUP BY _Period
UNION ALL
SELECT 
'_AccumRgT57481' AS [ИмяТаблицыSQL],
convert(datetime,_Period, 120) as [ПериодИтогов],						--///// |_Period as [ПериодИтогов],
COUNT(*) as [КоличествоСтрок],
SUM(CASE WHEN _Fld57480 = 0 THEN 1 ELSE 0 END) as [КоличествоНулевыхСтрок]
FROM _AccumRgT57481
GROUP BY _Period
UNION ALL
SELECT 
'_AccumRgT57520' AS [ИмяТаблицыSQL],
convert(datetime,_Period, 120) as [ПериодИтогов],						--///// |_Period as [ПериодИтогов],
SUM(CASE WHEN _splitter=0 THEN 1 ELSE 0 END) as [КоличествоСтрок],
SUM(CASE WHEN _Fld57517 = 0 AND _Fld57518 = 0 AND _Fld57519 = 0 AND _Splitter = 0 THEN 1 ELSE 0 END) as [КоличествоНулевыхСтрок]
FROM _AccumRgT57520
GROUP BY _Period
UNION ALL
SELECT 
'_AccumRgT57526' AS [ИмяТаблицыSQL],
convert(datetime,_Period, 120) as [ПериодИтогов],						--///// |_Period as [ПериодИтогов],
SUM(CASE WHEN _splitter=0 THEN 1 ELSE 0 END) as [КоличествоСтрок],
SUM(CASE WHEN _Fld57525 = 0 AND _Splitter = 0 THEN 1 ELSE 0 END) as [КоличествоНулевыхСтрок]
FROM _AccumRgT57526
GROUP BY _Period
UNION ALL
SELECT 
'_AccumRgT58846' AS [ИмяТаблицыSQL],
convert(datetime,_Period, 120) as [ПериодИтогов],						--///// |_Period as [ПериодИтогов],
SUM(CASE WHEN _splitter=0 THEN 1 ELSE 0 END) as [КоличествоСтрок],
SUM(CASE WHEN _Fld58845 = 0 AND _Fld59616 = 0 AND _Splitter = 0 THEN 1 ELSE 0 END) as [КоличествоНулевыхСтрок]
FROM _AccumRgT58846
GROUP BY _Period
UNION ALL
SELECT 
'_AccumRgT59002' AS [ИмяТаблицыSQL],
convert(datetime,_Period, 120) as [ПериодИтогов],						--///// |_Period as [ПериодИтогов],
SUM(CASE WHEN _splitter=0 THEN 1 ELSE 0 END) as [КоличествоСтрок],
SUM(CASE WHEN _Fld59000 = 0 AND _Splitter = 0 THEN 1 ELSE 0 END) as [КоличествоНулевыхСтрок]
FROM _AccumRgT59002
GROUP BY _Period
UNION ALL
SELECT 
'_AccumRgT58882' AS [ИмяТаблицыSQL],
convert(datetime,_Period, 120) as [ПериодИтогов],						--///// |_Period as [ПериодИтогов],
SUM(CASE WHEN _splitter=0 THEN 1 ELSE 0 END) as [КоличествоСтрок],
SUM(CASE WHEN _Fld58879 = 0 AND _Fld58880 = 0 AND _Fld58881 = 0 AND _Splitter = 0 THEN 1 ELSE 0 END) as [КоличествоНулевыхСтрок]
FROM _AccumRgT58882
GROUP BY _Period
UNION ALL
SELECT 
'_AccumRgT59994' AS [ИмяТаблицыSQL],
convert(datetime,_Period, 120) as [ПериодИтогов],						--///// |_Period as [ПериодИтогов],
SUM(CASE WHEN _splitter=0 THEN 1 ELSE 0 END) as [КоличествоСтрок],
SUM(CASE WHEN _Fld59993 = 0 AND _Splitter = 0 THEN 1 ELSE 0 END) as [КоличествоНулевыхСтрок]
FROM _AccumRgT59994
GROUP BY _Period
UNION ALL
SELECT 
'_AccumRgT60108' AS [ИмяТаблицыSQL],
convert(datetime,_Period, 120) as [ПериодИтогов],						--///// |_Period as [ПериодИтогов],
COUNT(*) as [КоличествоСтрок],
SUM(CASE WHEN _Fld60104 = 0 AND _Fld60105 = 0 AND _Fld60106 = 0 AND _Fld60107 = 0 THEN 1 ELSE 0 END) as [КоличествоНулевыхСтрок]
FROM _AccumRgT60108
GROUP BY _Period
UNION ALL
SELECT 
'_AccumRgT51574' AS [ИмяТаблицыSQL],
convert(datetime,_Period, 120) as [ПериодИтогов],						--///// |_Period as [ПериодИтогов],
COUNT(*) as [КоличествоСтрок],
SUM(CASE WHEN _Fld51570 = 0 AND _Fld51571 = 0 AND _Fld51572 = 0 THEN 1 ELSE 0 END) as [КоличествоНулевыхСтрок]
FROM _AccumRgT51574
GROUP BY _Period
UNION ALL
SELECT 
'_AccumRgT55115' AS [ИмяТаблицыSQL],
convert(datetime,_Period, 120) as [ПериодИтогов],						--///// |_Period as [ПериодИтогов],
SUM(CASE WHEN _splitter=0 THEN 1 ELSE 0 END) as [КоличествоСтрок],
SUM(CASE WHEN _Fld55113 = 0 AND _Fld55114 = 0 AND _Splitter = 0 THEN 1 ELSE 0 END) as [КоличествоНулевыхСтрок]
FROM _AccumRgT55115
GROUP BY _Period
UNION ALL
SELECT 
'_AccumRgT64566' AS [ИмяТаблицыSQL],
convert(datetime,_Period, 120) as [ПериодИтогов],						--///// |_Period as [ПериодИтогов],
SUM(CASE WHEN _splitter=0 THEN 1 ELSE 0 END) as [КоличествоСтрок],
SUM(CASE WHEN _Fld64565 = 0 AND _Splitter = 0 THEN 1 ELSE 0 END) as [КоличествоНулевыхСтрок]
FROM _AccumRgT64566
GROUP BY _Period
UNION ALL
SELECT 
'_AccumRgT50873' AS [ИмяТаблицыSQL],
convert(datetime,_Period, 120) as [ПериодИтогов],						--///// |_Period as [ПериодИтогов],
SUM(CASE WHEN _splitter=0 THEN 1 ELSE 0 END) as [КоличествоСтрок],
SUM(CASE WHEN _Fld50870 = 0 AND _Fld50871 = 0 AND _Fld66389 = 0 AND _Fld66390 = 0 AND _Splitter = 0 THEN 1 ELSE 0 END) as [КоличествоНулевыхСтрок]
FROM _AccumRgT50873
GROUP BY _Period
UNION ALL
SELECT 
'_AccumRgT51443' AS [ИмяТаблицыSQL],
convert(datetime,_Period, 120) as [ПериодИтогов],						--///// |_Period as [ПериодИтогов],
SUM(CASE WHEN _splitter=0 THEN 1 ELSE 0 END) as [КоличествоСтрок],
SUM(CASE WHEN _Fld51438 = 0 AND _Fld51439 = 0 AND _Fld51440 = 0 AND _Fld51441 = 0 AND _Splitter = 0 THEN 1 ELSE 0 END) as [КоличествоНулевыхСтрок]
FROM _AccumRgT51443
GROUP BY _Period
UNION ALL
SELECT 
'_AccumRgT51470' AS [ИмяТаблицыSQL],
convert(datetime,_Period, 120) as [ПериодИтогов],						--///// |_Period as [ПериодИтогов],
SUM(CASE WHEN _splitter=0 THEN 1 ELSE 0 END) as [КоличествоСтрок],
SUM(CASE WHEN _Fld51465 = 0 AND _Fld51466 = 0 AND _Fld51467 = 0 AND _Fld51468 = 0 AND _Fld51469 = 0 AND _Splitter = 0 THEN 1 ELSE 0 END) as [КоличествоНулевыхСтрок]
FROM _AccumRgT51470
GROUP BY _Period
UNION ALL
SELECT 
'_AccumRgT51483' AS [ИмяТаблицыSQL],
convert(datetime,_Period, 120) as [ПериодИтогов],						--///// |_Period as [ПериодИтогов],
SUM(CASE WHEN _splitter=0 THEN 1 ELSE 0 END) as [КоличествоСтрок],
SUM(CASE WHEN _Fld51479 = 0 AND _Fld51480 = 0 AND _Fld51481 = 0 AND _Splitter = 0 THEN 1 ELSE 0 END) as [КоличествоНулевыхСтрок]
FROM _AccumRgT51483
GROUP BY _Period
UNION ALL
SELECT 
'_AccumRgT51502' AS [ИмяТаблицыSQL],
convert(datetime,_Period, 120) as [ПериодИтогов],						--///// |_Period as [ПериодИтогов],
COUNT(*) as [КоличествоСтрок],
SUM(CASE WHEN _Fld51493 = 0 THEN 1 ELSE 0 END) as [КоличествоНулевыхСтрок]
FROM _AccumRgT51502
GROUP BY _Period
UNION ALL
SELECT 
'_AccumRgT51528' AS [ИмяТаблицыSQL],
convert(datetime,_Period, 120) as [ПериодИтогов],						--///// |_Period as [ПериодИтогов],
COUNT(*) as [КоличествоСтрок],
SUM(CASE WHEN _Fld51521 = 0 AND _Fld51522 = 0 AND _Fld51523 = 0 AND _Fld51524 = 0 THEN 1 ELSE 0 END) as [КоличествоНулевыхСтрок]
FROM _AccumRgT51528
GROUP BY _Period
UNION ALL
SELECT 
'_AccumRgT51642' AS [ИмяТаблицыSQL],
convert(datetime,_Period, 120) as [ПериодИтогов],						--///// |_Period as [ПериодИтогов],
COUNT(*) as [КоличествоСтрок],
SUM(CASE WHEN _Fld51640 = 0 AND _Fld51641 = 0 THEN 1 ELSE 0 END) as [КоличествоНулевыхСтрок]
FROM _AccumRgT51642
GROUP BY _Period
UNION ALL
SELECT 
'_AccumRgT51652' AS [ИмяТаблицыSQL],
convert(datetime,_Period, 120) as [ПериодИтогов],						--///// |_Period as [ПериодИтогов],
COUNT(*) as [КоличествоСтрок],
SUM(CASE WHEN _Fld51650 = 0 AND _Fld51651 = 0 THEN 1 ELSE 0 END) as [КоличествоНулевыхСтрок]
FROM _AccumRgT51652
GROUP BY _Period
UNION ALL
SELECT 
'_AccumRgT51690' AS [ИмяТаблицыSQL],
convert(datetime,_Period, 120) as [ПериодИтогов],						--///// |_Period as [ПериодИтогов],
COUNT(*) as [КоличествоСтрок],
SUM(CASE WHEN _Fld51688 = 0 AND _Fld51689 = 0 THEN 1 ELSE 0 END) as [КоличествоНулевыхСтрок]
FROM _AccumRgT51690
GROUP BY _Period
UNION ALL
SELECT 
'_AccumRgT51799' AS [ИмяТаблицыSQL],
convert(datetime,_Period, 120) as [ПериодИтогов],						--///// |_Period as [ПериодИтогов],
COUNT(*) as [КоличествоСтрок],
SUM(CASE WHEN _Fld51797 = 0 AND _Fld51798 = 0 THEN 1 ELSE 0 END) as [КоличествоНулевыхСтрок]
FROM _AccumRgT51799
GROUP BY _Period
UNION ALL
SELECT 
'_AccumRgT52619' AS [ИмяТаблицыSQL],
convert(datetime,_Period, 120) as [ПериодИтогов],						--///// |_Period as [ПериодИтогов],
SUM(CASE WHEN _splitter=0 THEN 1 ELSE 0 END) as [КоличествоСтрок],
SUM(CASE WHEN _Fld52606 = 0 AND _Fld52607 = 0 AND _Fld52608 = 0 AND _Fld52609 = 0 AND _Fld52610 = 0 AND _Fld52611 = 0 AND _Fld52612 = 0 AND _Splitter = 0 THEN 1 ELSE 0 END) as [КоличествоНулевыхСтрок]
FROM _AccumRgT52619
GROUP BY _Period
UNION ALL
SELECT 
'_AccumRgT53606' AS [ИмяТаблицыSQL],
convert(datetime,_Period, 120) as [ПериодИтогов],						--///// |_Period as [ПериодИтогов],
SUM(CASE WHEN _splitter=0 THEN 1 ELSE 0 END) as [КоличествоСтрок],
SUM(CASE WHEN _Fld53603 = 0 AND _Fld53604 = 0 AND _Fld53605 = 0 AND _Splitter = 0 THEN 1 ELSE 0 END) as [КоличествоНулевыхСтрок]
FROM _AccumRgT53606
GROUP BY _Period
UNION ALL
SELECT 
'_AccumRgT53623' AS [ИмяТаблицыSQL],
convert(datetime,_Period, 120) as [ПериодИтогов],						--///// |_Period as [ПериодИтогов],
COUNT(*) as [КоличествоСтрок],
SUM(CASE WHEN _Fld53616 = 0 AND _Fld53617 = 0 AND _Fld53618 = 0 AND _Fld53619 = 0 AND _Fld53620 = 0 AND _Fld53621 = 0 THEN 1 ELSE 0 END) as [КоличествоНулевыхСтрок]
FROM _AccumRgT53623
GROUP BY _Period
UNION ALL
SELECT 
'_AccumRgT53744' AS [ИмяТаблицыSQL],
convert(datetime,_Period, 120) as [ПериодИтогов],						--///// |_Period as [ПериодИтогов],
SUM(CASE WHEN _splitter=0 THEN 1 ELSE 0 END) as [КоличествоСтрок],
SUM(CASE WHEN _Fld53735 = 0 AND _Fld53736 = 0 AND _Splitter = 0 THEN 1 ELSE 0 END) as [КоличествоНулевыхСтрок]
FROM _AccumRgT53744
GROUP BY _Period
UNION ALL
SELECT 
'_AccumRgT53761' AS [ИмяТаблицыSQL],
convert(datetime,_Period, 120) as [ПериодИтогов],						--///// |_Period as [ПериодИтогов],
SUM(CASE WHEN _splitter=0 THEN 1 ELSE 0 END) as [КоличествоСтрок],
SUM(CASE WHEN _Fld53752 = 0 AND _Splitter = 0 THEN 1 ELSE 0 END) as [КоличествоНулевыхСтрок]
FROM _AccumRgT53761
GROUP BY _Period
UNION ALL
SELECT 
'_AccRgAT02011' AS [ИмяТаблицыSQL],
convert(datetime,_Period, 120) as [ПериодИтогов],						--///// |_Period as [ПериодИтогов],
SUM(CASE WHEN _splitter=0 THEN 1 ELSE 0 END) as [КоличествоСтрок],
SUM(CASE WHEN _Fld2004 = 0 AND _TurnoverDt2012 = 0 AND _TurnoverCt2013 = 0 AND _Turnover2014 = 0 AND _Fld2005 = 0 AND _TurnoverDt2015 = 0 AND _TurnoverCt2016 = 0 AND _Turnover2017 = 0 AND _Fld2006 = 0 AND _TurnoverDt2018 = 0 AND _TurnoverCt2019 = 0 AND _Turnover2020 = 0 AND _Splitter = 0 THEN 1 ELSE 0 END) as [КоличествоНулевыхСтрок]
FROM _AccRgAT02011
GROUP BY _Period
UNION ALL
SELECT 
'_AccRgAT12021' AS [ИмяТаблицыSQL],
convert(datetime,_Period, 120) as [ПериодИтогов],						--///// |_Period as [ПериодИтогов],
SUM(CASE WHEN _splitter=0 THEN 1 ELSE 0 END) as [КоличествоСтрок],
SUM(CASE WHEN _Fld2004 = 0 AND _TurnoverDt2012 = 0 AND _TurnoverCt2013 = 0 AND _Turnover2014 = 0 AND _Fld2005 = 0 AND _TurnoverDt2015 = 0 AND _TurnoverCt2016 = 0 AND _Turnover2017 = 0 AND _Fld2006 = 0 AND _TurnoverDt2018 = 0 AND _TurnoverCt2019 = 0 AND _Turnover2020 = 0 AND _Splitter = 0 THEN 1 ELSE 0 END) as [КоличествоНулевыхСтрок]
FROM _AccRgAT12021
GROUP BY _Period
UNION ALL
SELECT 
'_AccRgAT22022' AS [ИмяТаблицыSQL],
convert(datetime,_Period, 120) as [ПериодИтогов],						--///// |_Period as [ПериодИтогов],
SUM(CASE WHEN _splitter=0 THEN 1 ELSE 0 END) as [КоличествоСтрок],
SUM(CASE WHEN _Fld2004 = 0 AND _TurnoverDt2012 = 0 AND _TurnoverCt2013 = 0 AND _Turnover2014 = 0 AND _Fld2005 = 0 AND _TurnoverDt2015 = 0 AND _TurnoverCt2016 = 0 AND _Turnover2017 = 0 AND _Fld2006 = 0 AND _TurnoverDt2018 = 0 AND _TurnoverCt2019 = 0 AND _Turnover2020 = 0 AND _Splitter = 0 THEN 1 ELSE 0 END) as [КоличествоНулевыхСтрок]
FROM _AccRgAT22022
GROUP BY _Period
UNION ALL
SELECT 
'_AccRgAT32023' AS [ИмяТаблицыSQL],
convert(datetime,_Period, 120) as [ПериодИтогов],						--///// |_Period as [ПериодИтогов],
SUM(CASE WHEN _splitter=0 THEN 1 ELSE 0 END) as [КоличествоСтрок],
SUM(CASE WHEN _Fld2004 = 0 AND _TurnoverDt2012 = 0 AND _TurnoverCt2013 = 0 AND _Turnover2014 = 0 AND _Fld2005 = 0 AND _TurnoverDt2015 = 0 AND _TurnoverCt2016 = 0 AND _Turnover2017 = 0 AND _Fld2006 = 0 AND _TurnoverDt2018 = 0 AND _TurnoverCt2019 = 0 AND _Turnover2020 = 0 AND _Splitter = 0 THEN 1 ELSE 0 END) as [КоличествоНулевыхСтрок]
FROM _AccRgAT32023
GROUP BY _Period
UNION ALL
SELECT 
'_AccumRgT58829' AS [ИмяТаблицыSQL],
convert(datetime,_Period, 120) as [ПериодИтогов],						--///// |_Period as [ПериодИтогов],
SUM(CASE WHEN _splitter=0 THEN 1 ELSE 0 END) as [КоличествоСтрок],
SUM(CASE WHEN _Fld58820 = 0 AND _Fld58821 = 0 AND _Fld58822 = 0 AND _Fld58823 = 0 AND _Fld58824 = 0 AND _Splitter = 0 THEN 1 ELSE 0 END) as [КоличествоНулевыхСтрок]
FROM _AccumRgT58829
GROUP BY _Period
UNION ALL
SELECT 
'_AccumRgT58992' AS [ИмяТаблицыSQL],
convert(datetime,_Period, 120) as [ПериодИтогов],						--///// |_Period as [ПериодИтогов],
SUM(CASE WHEN _splitter=0 THEN 1 ELSE 0 END) as [КоличествоСтрок],
SUM(CASE WHEN _Fld58990 = 0 AND _Splitter = 0 THEN 1 ELSE 0 END) as [КоличествоНулевыхСтрок]
FROM _AccumRgT58992
GROUP BY _Period
UNION ALL
SELECT 
'_AccumRgT70669' AS [ИмяТаблицыSQL],
convert(datetime,_Period, 120) as [ПериодИтогов],						--///// |_Period as [ПериодИтогов],
COUNT(*) as [КоличествоСтрок],
SUM(CASE WHEN _Fld70666 = 0 AND _Fld70667 = 0 AND _Fld70668 = 0 THEN 1 ELSE 0 END) as [КоличествоНулевыхСтрок]
FROM _AccumRgT70669
GROUP BY _Period
UNION ALL
SELECT 
'_AccumRgT76585' AS [ИмяТаблицыSQL],
convert(datetime,_Period, 120) as [ПериодИтогов],						--///// |_Period as [ПериодИтогов],
SUM(CASE WHEN _splitter=0 THEN 1 ELSE 0 END) as [КоличествоСтрок],
SUM(CASE WHEN _Fld76566 = 0 AND _Fld76567 = 0 AND _Fld76568 = 0 AND _Fld76569 = 0 AND _Fld76570 = 0 AND _Fld76571 = 0 AND _Fld76572 = 0 AND _Fld76573 = 0 AND _Fld76574 = 0 AND _Fld76575 = 0 AND _Fld76576 = 0 AND _Splitter = 0 THEN 1 ELSE 0 END) as [КоличествоНулевыхСтрок]
FROM _AccumRgT76585
GROUP BY _Period
UNION ALL
SELECT 
'_AccumRgT76613' AS [ИмяТаблицыSQL],
convert(datetime,_Period, 120) as [ПериодИтогов],						--///// |_Period as [ПериодИтогов],
SUM(CASE WHEN _splitter=0 THEN 1 ELSE 0 END) as [КоличествоСтрок],
SUM(CASE WHEN _Fld76593 = 0 AND _Fld76594 = 0 AND _Fld76595 = 0 AND _Fld76596 = 0 AND _Fld76597 = 0 AND _Fld76598 = 0 AND _Fld76599 = 0 AND _Fld76600 = 0 AND _Fld76601 = 0 AND _Fld76602 = 0 AND _Fld76603 = 0 AND _Splitter = 0 THEN 1 ELSE 0 END) as [КоличествоНулевыхСтрок]
FROM _AccumRgT76613
GROUP BY _Period
UNION ALL
SELECT 
'_AccumRgT76627' AS [ИмяТаблицыSQL],
convert(datetime,_Period, 120) as [ПериодИтогов],						--///// |_Period as [ПериодИтогов],
SUM(CASE WHEN _splitter=0 THEN 1 ELSE 0 END) as [КоличествоСтрок],
SUM(CASE WHEN _Fld76622 = 0 AND _Splitter = 0 THEN 1 ELSE 0 END) as [КоличествоНулевыхСтрок]
FROM _AccumRgT76627
GROUP BY _Period
UNION ALL
SELECT 
'_AccumRgT76645' AS [ИмяТаблицыSQL],
convert(datetime,_Period, 120) as [ПериодИтогов],						--///// |_Period as [ПериодИтогов],
SUM(CASE WHEN _splitter=0 THEN 1 ELSE 0 END) as [КоличествоСтрок],
SUM(CASE WHEN _Fld76640 = 0 AND _Splitter = 0 THEN 1 ELSE 0 END) as [КоличествоНулевыхСтрок]
FROM _AccumRgT76645
GROUP BY _Period
UNION ALL
SELECT 
'_AccumRgT76667' AS [ИмяТаблицыSQL],
convert(datetime,_Period, 120) as [ПериодИтогов],						--///// |_Period as [ПериодИтогов],
SUM(CASE WHEN _splitter=0 THEN 1 ELSE 0 END) as [КоличествоСтрок],
SUM(CASE WHEN _Fld76664 = 0 AND _Splitter = 0 THEN 1 ELSE 0 END) as [КоличествоНулевыхСтрок]
FROM _AccumRgT76667
GROUP BY _Period
UNION ALL
SELECT 
'_AccumRgT76715' AS [ИмяТаблицыSQL],
convert(datetime,_Period, 120) as [ПериодИтогов],						--///// |_Period as [ПериодИтогов],
SUM(CASE WHEN _splitter=0 THEN 1 ELSE 0 END) as [КоличествоСтрок],
SUM(CASE WHEN _Fld76706 = 0 AND _Fld76707 = 0 AND _Fld76708 = 0 AND _Fld76709 = 0 AND _Fld76710 = 0 AND _Fld76711 = 0 AND _Splitter = 0 THEN 1 ELSE 0 END) as [КоличествоНулевыхСтрок]
FROM _AccumRgT76715
GROUP BY _Period
UNION ALL
SELECT 
'_AccumRgT76846' AS [ИмяТаблицыSQL],
convert(datetime,_Period, 120) as [ПериодИтогов],						--///// |_Period as [ПериодИтогов],
SUM(CASE WHEN _splitter=0 THEN 1 ELSE 0 END) as [КоличествоСтрок],
SUM(CASE WHEN _Fld76819 = 0 AND _Fld76820 = 0 AND _Fld76821 = 0 AND _Fld76822 = 0 AND _Fld76823 = 0 AND _Fld76824 = 0 AND _Fld76825 = 0 AND _Fld76826 = 0 AND _Fld76827 = 0 AND _Fld76828 = 0 AND _Fld76829 = 0 AND _Fld76830 = 0 AND _Splitter = 0 THEN 1 ELSE 0 END) as [КоличествоНулевыхСтрок]
FROM _AccumRgT76846
GROUP BY _Period
UNION ALL
SELECT 
'_AccumRgT76889' AS [ИмяТаблицыSQL],
convert(datetime,_Period, 120) as [ПериодИтогов],						--///// |_Period as [ПериодИтогов],
SUM(CASE WHEN _splitter=0 THEN 1 ELSE 0 END) as [КоличествоСтрок],
SUM(CASE WHEN _Fld76855 = 0 AND _Fld76856 = 0 AND _Fld76857 = 0 AND _Fld76858 = 0 AND _Fld76859 = 0 AND _Fld76860 = 0 AND _Fld76861 = 0 AND _Fld76862 = 0 AND _Fld76863 = 0 AND _Fld76864 = 0 AND _Fld76865 = 0 AND _Fld76866 = 0 AND _Fld76867 = 0 AND _Fld76868 = 0 AND _Splitter = 0 THEN 1 ELSE 0 END) as [КоличествоНулевыхСтрок]
FROM _AccumRgT76889
GROUP BY _Period
UNION ALL
SELECT 
'_AccumRgT76904' AS [ИмяТаблицыSQL],
convert(datetime,_Period, 120) as [ПериодИтогов],						--///// |_Period as [ПериодИтогов],
SUM(CASE WHEN _splitter=0 THEN 1 ELSE 0 END) as [КоличествоСтрок],
SUM(CASE WHEN _Fld76903 = 0 AND _Splitter = 0 THEN 1 ELSE 0 END) as [КоличествоНулевыхСтрок]
FROM _AccumRgT76904
GROUP BY _Period
UNION ALL
SELECT 
'_AccumRgT76917' AS [ИмяТаблицыSQL],
convert(datetime,_Period, 120) as [ПериодИтогов],						--///// |_Period as [ПериодИтогов],
SUM(CASE WHEN _splitter=0 THEN 1 ELSE 0 END) as [КоличествоСтрок],
SUM(CASE WHEN _Fld76916 = 0 AND _Splitter = 0 THEN 1 ELSE 0 END) as [КоличествоНулевыхСтрок]
FROM _AccumRgT76917
GROUP BY _Period
UNION ALL
SELECT 
'_AccumRgT76929' AS [ИмяТаблицыSQL],
convert(datetime,_Period, 120) as [ПериодИтогов],						--///// |_Period as [ПериодИтогов],
SUM(CASE WHEN _splitter=0 THEN 1 ELSE 0 END) as [КоличествоСтрок],
SUM(CASE WHEN _Fld76925 = 0 AND _Splitter = 0 THEN 1 ELSE 0 END) as [КоличествоНулевыхСтрок]
FROM _AccumRgT76929
GROUP BY _Period
UNION ALL
SELECT 
'_AccumRgT49364' AS [ИмяТаблицыSQL],
convert(datetime,_Period, 120) as [ПериодИтогов],						--///// |_Period as [ПериодИтогов],
SUM(CASE WHEN _splitter=0 THEN 1 ELSE 0 END) as [КоличествоСтрок],
SUM(CASE WHEN _Fld49356 = 0 AND _Splitter = 0 THEN 1 ELSE 0 END) as [КоличествоНулевыхСтрок]
FROM _AccumRgT49364
GROUP BY _Period
UNION ALL
SELECT 
'_AccumRgT49376' AS [ИмяТаблицыSQL],
convert(datetime,_Period, 120) as [ПериодИтогов],						--///// |_Period as [ПериодИтогов],
SUM(CASE WHEN _splitter=0 THEN 1 ELSE 0 END) as [КоличествоСтрок],
SUM(CASE WHEN _Fld49371 = 0 AND _Fld49372 = 0 AND _Splitter = 0 THEN 1 ELSE 0 END) as [КоличествоНулевыхСтрок]
FROM _AccumRgT49376
GROUP BY _Period
UNION ALL
SELECT 
'_AccumRgT49382' AS [ИмяТаблицыSQL],
convert(datetime,_Period, 120) as [ПериодИтогов],						--///// |_Period as [ПериодИтогов],
SUM(CASE WHEN _splitter=0 THEN 1 ELSE 0 END) as [КоличествоСтрок],
SUM(CASE WHEN _Fld49381 = 0 AND _Splitter = 0 THEN 1 ELSE 0 END) as [КоличествоНулевыхСтрок]
FROM _AccumRgT49382
GROUP BY _Period
UNION ALL
SELECT 
'_AccumRgT49411' AS [ИмяТаблицыSQL],
convert(datetime,_Period, 120) as [ПериодИтогов],						--///// |_Period as [ПериодИтогов],
SUM(CASE WHEN _splitter=0 THEN 1 ELSE 0 END) as [КоличествоСтрок],
SUM(CASE WHEN _Fld49410 = 0 AND _Splitter = 0 THEN 1 ELSE 0 END) as [КоличествоНулевыхСтрок]
FROM _AccumRgT49411
GROUP BY _Period
UNION ALL
SELECT 
'_AccumRgT49439' AS [ИмяТаблицыSQL],
convert(datetime,_Period, 120) as [ПериодИтогов],						--///// |_Period as [ПериодИтогов],
SUM(CASE WHEN _splitter=0 THEN 1 ELSE 0 END) as [КоличествоСтрок],
SUM(CASE WHEN _Fld49438 = 0 AND _Splitter = 0 THEN 1 ELSE 0 END) as [КоличествоНулевыхСтрок]
FROM _AccumRgT49439
GROUP BY _Period
UNION ALL
SELECT 
'_AccumRgT49448' AS [ИмяТаблицыSQL],
convert(datetime,_Period, 120) as [ПериодИтогов],						--///// |_Period as [ПериодИтогов],
SUM(CASE WHEN _splitter=0 THEN 1 ELSE 0 END) as [КоличествоСтрок],
SUM(CASE WHEN _Fld49447 = 0 AND _Splitter = 0 THEN 1 ELSE 0 END) as [КоличествоНулевыхСтрок]
FROM _AccumRgT49448
GROUP BY _Period
UNION ALL
SELECT 
'_AccumRgT49457' AS [ИмяТаблицыSQL],
convert(datetime,_Period, 120) as [ПериодИтогов],						--///// |_Period as [ПериодИтогов],
SUM(CASE WHEN _splitter=0 THEN 1 ELSE 0 END) as [КоличествоСтрок],
SUM(CASE WHEN _Fld49456 = 0 AND _Splitter = 0 THEN 1 ELSE 0 END) as [КоличествоНулевыхСтрок]
FROM _AccumRgT49457
GROUP BY _Period
UNION ALL
SELECT 
'_AccumRgT49465' AS [ИмяТаблицыSQL],
convert(datetime,_Period, 120) as [ПериодИтогов],						--///// |_Period as [ПериодИтогов],
SUM(CASE WHEN _splitter=0 THEN 1 ELSE 0 END) as [КоличествоСтрок],
SUM(CASE WHEN _Fld49464 = 0 AND _Splitter = 0 THEN 1 ELSE 0 END) as [КоличествоНулевыхСтрок]
FROM _AccumRgT49465
GROUP BY _Period
UNION ALL
SELECT 
'_AccumRgT49476' AS [ИмяТаблицыSQL],
convert(datetime,_Period, 120) as [ПериодИтогов],						--///// |_Period as [ПериодИтогов],
SUM(CASE WHEN _splitter=0 THEN 1 ELSE 0 END) as [КоличествоСтрок],
SUM(CASE WHEN _Fld49473 = 0 AND _Fld49474 = 0 AND _Splitter = 0 THEN 1 ELSE 0 END) as [КоличествоНулевыхСтрок]
FROM _AccumRgT49476
GROUP BY _Period
UNION ALL
SELECT 
'_AccumRgT49770' AS [ИмяТаблицыSQL],
convert(datetime,_Period, 120) as [ПериодИтогов],						--///// |_Period as [ПериодИтогов],
SUM(CASE WHEN _splitter=0 THEN 1 ELSE 0 END) as [КоличествоСтрок],
SUM(CASE WHEN _Fld49761 = 0 AND _Fld49762 = 0 AND _Splitter = 0 THEN 1 ELSE 0 END) as [КоличествоНулевыхСтрок]
FROM _AccumRgT49770
GROUP BY _Period
UNION ALL
SELECT 
'_AccumRgT49926' AS [ИмяТаблицыSQL],
convert(datetime,_Period, 120) as [ПериодИтогов],						--///// |_Period as [ПериодИтогов],
SUM(CASE WHEN _splitter=0 THEN 1 ELSE 0 END) as [КоличествоСтрок],
SUM(CASE WHEN _Fld49924 = 0 AND _Fld49925 = 0 AND _Splitter = 0 THEN 1 ELSE 0 END) as [КоличествоНулевыхСтрок]
FROM _AccumRgT49926
GROUP BY _Period
UNION ALL
SELECT 
'_AccumRgT49964' AS [ИмяТаблицыSQL],
convert(datetime,_Period, 120) as [ПериодИтогов],						--///// |_Period as [ПериодИтогов],
SUM(CASE WHEN _splitter=0 THEN 1 ELSE 0 END) as [КоличествоСтрок],
SUM(CASE WHEN _Fld49963 = 0 AND _Splitter = 0 THEN 1 ELSE 0 END) as [КоличествоНулевыхСтрок]
FROM _AccumRgT49964
GROUP BY _Period
UNION ALL
SELECT 
'_AccumRgT49993' AS [ИмяТаблицыSQL],
convert(datetime,_Period, 120) as [ПериодИтогов],						--///// |_Period as [ПериодИтогов],
SUM(CASE WHEN _splitter=0 THEN 1 ELSE 0 END) as [КоличествоСтрок],
SUM(CASE WHEN _Fld49991 = 0 AND _Fld49992 = 0 AND _Splitter = 0 THEN 1 ELSE 0 END) as [КоличествоНулевыхСтрок]
FROM _AccumRgT49993
GROUP BY _Period
UNION ALL
SELECT 
'_AccumRgT50691' AS [ИмяТаблицыSQL],
convert(datetime,_Period, 120) as [ПериодИтогов],						--///// |_Period as [ПериодИтогов],
SUM(CASE WHEN _splitter=0 THEN 1 ELSE 0 END) as [КоличествоСтрок],
SUM(CASE WHEN _Fld50686 = 0 AND _Fld50687 = 0 AND _Splitter = 0 THEN 1 ELSE 0 END) as [КоличествоНулевыхСтрок]
FROM _AccumRgT50691
GROUP BY _Period
UNION ALL
SELECT 
'_AccumRgT50703' AS [ИмяТаблицыSQL],
convert(datetime,_Period, 120) as [ПериодИтогов],						--///// |_Period as [ПериодИтогов],
SUM(CASE WHEN _splitter=0 THEN 1 ELSE 0 END) as [КоличествоСтрок],
SUM(CASE WHEN _Fld50699 = 0 AND _Splitter = 0 THEN 1 ELSE 0 END) as [КоличествоНулевыхСтрок]
FROM _AccumRgT50703
GROUP BY _Period
UNION ALL
SELECT 
'_AccumRgT51535' AS [ИмяТаблицыSQL],
convert(datetime,_Period, 120) as [ПериодИтогов],						--///// |_Period as [ПериодИтогов],
SUM(CASE WHEN _splitter=0 THEN 1 ELSE 0 END) as [КоличествоСтрок],
SUM(CASE WHEN _Fld51533 = 0 AND _Fld51534 = 0 AND _Splitter = 0 THEN 1 ELSE 0 END) as [КоличествоНулевыхСтрок]
FROM _AccumRgT51535
GROUP BY _Period
UNION ALL
SELECT 
'_AccumRgT51701' AS [ИмяТаблицыSQL],
convert(datetime,_Period, 120) as [ПериодИтогов],						--///// |_Period as [ПериодИтогов],
COUNT(*) as [КоличествоСтрок],
SUM(CASE WHEN _Fld51698 = 0 AND _Fld51699 = 0 THEN 1 ELSE 0 END) as [КоличествоНулевыхСтрок]
FROM _AccumRgT51701
GROUP BY _Period
UNION ALL
SELECT 
'_AccumRgT51766' AS [ИмяТаблицыSQL],
convert(datetime,_Period, 120) as [ПериодИтогов],						--///// |_Period as [ПериодИтогов],
SUM(CASE WHEN _splitter=0 THEN 1 ELSE 0 END) as [КоличествоСтрок],
SUM(CASE WHEN _Fld51760 = 0 AND _Splitter = 0 THEN 1 ELSE 0 END) as [КоличествоНулевыхСтрок]
FROM _AccumRgT51766
GROUP BY _Period
UNION ALL
SELECT 
'_AccumRgT51780' AS [ИмяТаблицыSQL],
convert(datetime,_Period, 120) as [ПериодИтогов],						--///// |_Period as [ПериодИтогов],
SUM(CASE WHEN _splitter=0 THEN 1 ELSE 0 END) as [КоличествоСтрок],
SUM(CASE WHEN _Fld51776 = 0 AND _Splitter = 0 THEN 1 ELSE 0 END) as [КоличествоНулевыхСтрок]
FROM _AccumRgT51780
GROUP BY _Period
UNION ALL
SELECT 
'_AccumRgT51791' AS [ИмяТаблицыSQL],
convert(datetime,_Period, 120) as [ПериодИтогов],						--///// |_Period as [ПериодИтогов],
SUM(CASE WHEN _splitter=0 THEN 1 ELSE 0 END) as [КоличествоСтрок],
SUM(CASE WHEN _Fld51789 = 0 AND _Splitter = 0 THEN 1 ELSE 0 END) as [КоличествоНулевыхСтрок]
FROM _AccumRgT51791
GROUP BY _Period
UNION ALL
SELECT 
'_AccumRgT51859' AS [ИмяТаблицыSQL],
convert(datetime,_Period, 120) as [ПериодИтогов],						--///// |_Period as [ПериодИтогов],
SUM(CASE WHEN _splitter=0 THEN 1 ELSE 0 END) as [КоличествоСтрок],
SUM(CASE WHEN _Fld51852 = 0 AND _Splitter = 0 THEN 1 ELSE 0 END) as [КоличествоНулевыхСтрок]
FROM _AccumRgT51859
GROUP BY _Period
UNION ALL
SELECT 
'_AccumRgT52049' AS [ИмяТаблицыSQL],
convert(datetime,_Period, 120) as [ПериодИтогов],						--///// |_Period as [ПериодИтогов],
SUM(CASE WHEN _splitter=0 THEN 1 ELSE 0 END) as [КоличествоСтрок],
SUM(CASE WHEN _Fld52033 = 0 AND _Splitter = 0 THEN 1 ELSE 0 END) as [КоличествоНулевыхСтрок]
FROM _AccumRgT52049
GROUP BY _Period
UNION ALL
SELECT 
'_AccumRgT52443' AS [ИмяТаблицыSQL],
convert(datetime,_Period, 120) as [ПериодИтогов],						--///// |_Period as [ПериодИтогов],
SUM(CASE WHEN _splitter=0 THEN 1 ELSE 0 END) as [КоличествоСтрок],
SUM(CASE WHEN _Fld52440 = 0 AND _Fld52441 = 0 AND _Splitter = 0 THEN 1 ELSE 0 END) as [КоличествоНулевыхСтрок]
FROM _AccumRgT52443
GROUP BY _Period
UNION ALL
SELECT 
'_AccumRgT52468' AS [ИмяТаблицыSQL],
convert(datetime,_Period, 120) as [ПериодИтогов],						--///// |_Period as [ПериодИтогов],
SUM(CASE WHEN _splitter=0 THEN 1 ELSE 0 END) as [КоличествоСтрок],
SUM(CASE WHEN _Fld52452 = 0 AND _Fld52453 = 0 AND _Fld52454 = 0 AND _Fld52455 = 0 AND _Fld52456 = 0 AND _Fld52457 = 0 AND _Fld52458 = 0 AND _Splitter = 0 THEN 1 ELSE 0 END) as [КоличествоНулевыхСтрок]
FROM _AccumRgT52468
GROUP BY _Period
UNION ALL
SELECT 
'_AccumRgT52496' AS [ИмяТаблицыSQL],
convert(datetime,_Period, 120) as [ПериодИтогов],						--///// |_Period as [ПериодИтогов],
SUM(CASE WHEN _splitter=0 THEN 1 ELSE 0 END) as [КоличествоСтрок],
SUM(CASE WHEN _Fld52480 = 0 AND _Fld52481 = 0 AND _Fld52482 = 0 AND _Fld52483 = 0 AND _Fld52484 = 0 AND _Fld52485 = 0 AND _Fld52486 = 0 AND _Splitter = 0 THEN 1 ELSE 0 END) as [КоличествоНулевыхСтрок]
FROM _AccumRgT52496
GROUP BY _Period
UNION ALL
SELECT 
'_AccumRgT52524' AS [ИмяТаблицыSQL],
convert(datetime,_Period, 120) as [ПериодИтогов],						--///// |_Period as [ПериодИтогов],
SUM(CASE WHEN _splitter=0 THEN 1 ELSE 0 END) as [КоличествоСтрок],
SUM(CASE WHEN _Fld52504 = 0 AND _Fld52505 = 0 AND _Fld52506 = 0 AND _Fld52507 = 0 AND _Fld52508 = 0 AND _Fld52509 = 0 AND _Fld52510 = 0 AND _Splitter = 0 THEN 1 ELSE 0 END) as [КоличествоНулевыхСтрок]
FROM _AccumRgT52524
GROUP BY _Period
UNION ALL
SELECT 
'_AccumRgT52544' AS [ИмяТаблицыSQL],
convert(datetime,_Period, 120) as [ПериодИтогов],						--///// |_Period as [ПериодИтогов],
SUM(CASE WHEN _splitter=0 THEN 1 ELSE 0 END) as [КоличествоСтрок],
SUM(CASE WHEN _Fld52534 = 0 AND _Fld52535 = 0 AND _Fld52536 = 0 AND _Fld52537 = 0 AND _Fld52538 = 0 AND _Fld52539 = 0 AND _Fld80405 = 0 AND _Splitter = 0 THEN 1 ELSE 0 END) as [КоличествоНулевыхСтрок]
FROM _AccumRgT52544
GROUP BY _Period
UNION ALL
SELECT 
'_AccumRgT52597' AS [ИмяТаблицыSQL],
convert(datetime,_Period, 120) as [ПериодИтогов],						--///// |_Period as [ПериодИтогов],
SUM(CASE WHEN _splitter=0 THEN 1 ELSE 0 END) as [КоличествоСтрок],
SUM(CASE WHEN _Fld52577 = 0 AND _Fld52578 = 0 AND _Fld52579 = 0 AND _Fld52580 = 0 AND _Fld52581 = 0 AND _Fld52582 = 0 AND _Fld52583 = 0 AND _Splitter = 0 THEN 1 ELSE 0 END) as [КоличествоНулевыхСтрок]
FROM _AccumRgT52597
GROUP BY _Period
UNION ALL
SELECT 
'_AccumRgT53056' AS [ИмяТаблицыSQL],
convert(datetime,_Period, 120) as [ПериодИтогов],						--///// |_Period as [ПериодИтогов],
SUM(CASE WHEN _splitter=0 THEN 1 ELSE 0 END) as [КоличествоСтрок],
SUM(CASE WHEN _Fld53054 = 0 AND _Splitter = 0 THEN 1 ELSE 0 END) as [КоличествоНулевыхСтрок]
FROM _AccumRgT53056
GROUP BY _Period
UNION ALL
SELECT 
'_AccumRgT53067' AS [ИмяТаблицыSQL],
convert(datetime,_Period, 120) as [ПериодИтогов],						--///// |_Period as [ПериодИтогов],
SUM(CASE WHEN _splitter=0 THEN 1 ELSE 0 END) as [КоличествоСтрок],
SUM(CASE WHEN _Fld53063 = 0 AND _Fld80432 = 0 AND _Fld80433 = 0 AND _Splitter = 0 THEN 1 ELSE 0 END) as [КоличествоНулевыхСтрок]
FROM _AccumRgT53067
GROUP BY _Period
UNION ALL
SELECT 
'_AccumRgT53137' AS [ИмяТаблицыSQL],
convert(datetime,_Period, 120) as [ПериодИтогов],						--///// |_Period as [ПериодИтогов],
COUNT(*) as [КоличествоСтрок],
SUM(CASE WHEN _Fld53129 = 0 AND _Fld53130 = 0 THEN 1 ELSE 0 END) as [КоличествоНулевыхСтрок]
FROM _AccumRgT53137
GROUP BY _Period
UNION ALL
SELECT 
'_AccumRgT64555' AS [ИмяТаблицыSQL],
convert(datetime,_Period, 120) as [ПериодИтогов],						--///// |_Period as [ПериодИтогов],
COUNT(*) as [КоличествоСтрок],
SUM(CASE WHEN _Fld64553 = 0 THEN 1 ELSE 0 END) as [КоличествоНулевыхСтрок]
FROM _AccumRgT64555
GROUP BY _Period
UNION ALL
SELECT 
'_AccumRgT53173' AS [ИмяТаблицыSQL],
convert(datetime,_Period, 120) as [ПериодИтогов],						--///// |_Period as [ПериодИтогов],
SUM(CASE WHEN _splitter=0 THEN 1 ELSE 0 END) as [КоличествоСтрок],
SUM(CASE WHEN _Fld53169 = 0 AND _Fld53170 = 0 AND _Fld53171 = 0 AND _Splitter = 0 THEN 1 ELSE 0 END) as [КоличествоНулевыхСтрок]
FROM _AccumRgT53173
GROUP BY _Period
UNION ALL
SELECT 
'_AccumRgT53182' AS [ИмяТаблицыSQL],
convert(datetime,_Period, 120) as [ПериодИтогов],						--///// |_Period as [ПериодИтогов],
SUM(CASE WHEN _splitter=0 THEN 1 ELSE 0 END) as [КоличествоСтрок],
SUM(CASE WHEN _Fld53179 = 0 AND _Fld53180 = 0 AND _Fld53181 = 0 AND _Splitter = 0 THEN 1 ELSE 0 END) as [КоличествоНулевыхСтрок]
FROM _AccumRgT53182
GROUP BY _Period
UNION ALL
SELECT 
'_AccumRgT53191' AS [ИмяТаблицыSQL],
convert(datetime,_Period, 120) as [ПериодИтогов],						--///// |_Period as [ПериодИтогов],
SUM(CASE WHEN _splitter=0 THEN 1 ELSE 0 END) as [КоличествоСтрок],
SUM(CASE WHEN _Fld53186 = 0 AND _Fld53187 = 0 AND _Fld53188 = 0 AND _Fld53189 = 0 AND _Splitter = 0 THEN 1 ELSE 0 END) as [КоличествоНулевыхСтрок]
FROM _AccumRgT53191
GROUP BY _Period
UNION ALL
SELECT 
'_AccumRgT53229' AS [ИмяТаблицыSQL],
convert(datetime,_Period, 120) as [ПериодИтогов],						--///// |_Period as [ПериодИтогов],
SUM(CASE WHEN _splitter=0 THEN 1 ELSE 0 END) as [КоличествоСтрок],
SUM(CASE WHEN _Fld53217 = 0 AND _Splitter = 0 THEN 1 ELSE 0 END) as [КоличествоНулевыхСтрок]
FROM _AccumRgT53229
GROUP BY _Period
UNION ALL
SELECT 
'_AccumRgT53304' AS [ИмяТаблицыSQL],
convert(datetime,_Period, 120) as [ПериодИтогов],						--///// |_Period as [ПериодИтогов],
SUM(CASE WHEN _splitter=0 THEN 1 ELSE 0 END) as [КоличествоСтрок],
SUM(CASE WHEN _Fld53288 = 0 AND _Fld53289 = 0 AND _Fld53290 = 0 AND _Fld53291 = 0 AND _Fld53292 = 0 AND _Fld53293 = 0 AND _Fld53294 = 0 AND _Fld53295 = 0 AND _Fld53296 = 0 AND _Fld53297 = 0 AND _Fld53298 = 0 AND _Splitter = 0 THEN 1 ELSE 0 END) as [КоличествоНулевыхСтрок]
FROM _AccumRgT53304
GROUP BY _Period
UNION ALL
SELECT 
'_AccumRgT53350' AS [ИмяТаблицыSQL],
convert(datetime,_Period, 120) as [ПериодИтогов],						--///// |_Period as [ПериодИтогов],
SUM(CASE WHEN _splitter=0 THEN 1 ELSE 0 END) as [КоличествоСтрок],
SUM(CASE WHEN _Fld53334 = 0 AND _Fld53335 = 0 AND _Fld53336 = 0 AND _Fld53337 = 0 AND _Fld53338 = 0 AND _Fld53339 = 0 AND _Fld53340 = 0 AND _Fld53341 = 0 AND _Fld53342 = 0 AND _Fld53343 = 0 AND _Fld53344 = 0 AND _Splitter = 0 THEN 1 ELSE 0 END) as [КоличествоНулевыхСтрок]
FROM _AccumRgT53350
GROUP BY _Period
UNION ALL
SELECT 
'_AccumRgT53363' AS [ИмяТаблицыSQL],
convert(datetime,_Period, 120) as [ПериодИтогов],						--///// |_Period as [ПериодИтогов],
SUM(CASE WHEN _splitter=0 THEN 1 ELSE 0 END) as [КоличествоСтрок],
SUM(CASE WHEN _Fld53358 = 0 AND _Splitter = 0 THEN 1 ELSE 0 END) as [КоличествоНулевыхСтрок]
FROM _AccumRgT53363
GROUP BY _Period
UNION ALL
SELECT 
'_AccumRgT53492' AS [ИмяТаблицыSQL],
convert(datetime,_Period, 120) as [ПериодИтогов],						--///// |_Period as [ПериодИтогов],
SUM(CASE WHEN _splitter=0 THEN 1 ELSE 0 END) as [КоличествоСтрок],
SUM(CASE WHEN _Fld53461 = 0 AND _Fld53462 = 0 AND _Fld53463 = 0 AND _Fld66628 = 0 AND _Fld53464 = 0 AND _Fld53465 = 0 AND _Fld66629 = 0 AND _Fld66630 = 0 AND _Fld80464 = 0 AND _Fld66631 = 0 AND _Fld80465 = 0 AND _Fld53466 = 0 AND _Fld66632 = 0 AND _Fld66633 = 0 AND _Fld66634 = 0 AND _Fld66635 = 0 AND _Fld80466 = 0 AND _Fld53467 = 0 AND _Fld53468 = 0 AND _Fld80467 = 0 AND _Fld80468 = 0 AND _Fld80469 = 0 AND _Fld80470 = 0 AND _Fld80471 = 0 AND _Fld80472 = 0 AND _Splitter = 0 THEN 1 ELSE 0 END) as [КоличествоНулевыхСтрок]
FROM _AccumRgT53492
GROUP BY _Period
UNION ALL
SELECT 
'_AccumRgT53523' AS [ИмяТаблицыSQL],
convert(datetime,_Period, 120) as [ПериодИтогов],						--///// |_Period as [ПериодИтогов],
SUM(CASE WHEN _splitter=0 THEN 1 ELSE 0 END) as [КоличествоСтрок],
SUM(CASE WHEN _Fld53517 = 0 AND _Fld53518 = 0 AND _Fld53519 = 0 AND _Fld53520 = 0 AND _Splitter = 0 THEN 1 ELSE 0 END) as [КоличествоНулевыхСтрок]
FROM _AccumRgT53523
GROUP BY _Period
UNION ALL
SELECT 
'_AccumRgT53663' AS [ИмяТаблицыSQL],
convert(datetime,_Period, 120) as [ПериодИтогов],						--///// |_Period as [ПериодИтогов],
COUNT(*) as [КоличествоСтрок],
SUM(CASE WHEN _Fld53649 = 0 AND _Fld53650 = 0 AND _Fld53651 = 0 AND _Fld80480 = 0 AND _Fld80481 = 0 AND _Fld80482 = 0 THEN 1 ELSE 0 END) as [КоличествоНулевыхСтрок]
FROM _AccumRgT53663
GROUP BY _Period
UNION ALL
SELECT 
'_AccumRgT53728' AS [ИмяТаблицыSQL],
convert(datetime,_Period, 120) as [ПериодИтогов],						--///// |_Period as [ПериодИтогов],
SUM(CASE WHEN _splitter=0 THEN 1 ELSE 0 END) as [КоличествоСтрок],
SUM(CASE WHEN _Fld53723 = 0 AND _Fld53724 = 0 AND _Splitter = 0 THEN 1 ELSE 0 END) as [КоличествоНулевыхСтрок]
FROM _AccumRgT53728
GROUP BY _Period
UNION ALL
SELECT 
'_AccumRgT53683' AS [ИмяТаблицыSQL],
convert(datetime,_Period, 120) as [ПериодИтогов],						--///// |_Period as [ПериодИтогов],
COUNT(*) as [КоличествоСтрок],
SUM(CASE WHEN _Fld80486 = 0 AND _Fld53681 = 0 AND _Fld80487 = 0 AND _Fld80488 = 0 AND _Fld80489 = 0 AND _Fld53682 = 0 THEN 1 ELSE 0 END) as [КоличествоНулевыхСтрок]
FROM _AccumRgT53683
GROUP BY _Period
UNION ALL
SELECT 
'_AccumRgT53715' AS [ИмяТаблицыSQL],
convert(datetime,_Period, 120) as [ПериодИтогов],						--///// |_Period as [ПериодИтогов],
SUM(CASE WHEN _splitter=0 THEN 1 ELSE 0 END) as [КоличествоСтрок],
SUM(CASE WHEN _Fld53702 = 0 AND _Splitter = 0 THEN 1 ELSE 0 END) as [КоличествоНулевыхСтрок]
FROM _AccumRgT53715
GROUP BY _Period
UNION ALL
SELECT 
'_AccumRgT53775' AS [ИмяТаблицыSQL],
convert(datetime,_Period, 120) as [ПериодИтогов],						--///// |_Period as [ПериодИтогов],
COUNT(*) as [КоличествоСтрок],
SUM(CASE WHEN _Fld53774 = 0 THEN 1 ELSE 0 END) as [КоличествоНулевыхСтрок]
FROM _AccumRgT53775
GROUP BY _Period
UNION ALL
SELECT 
'_AccumRgT53859' AS [ИмяТаблицыSQL],
convert(datetime,_Period, 120) as [ПериодИтогов],						--///// |_Period as [ПериодИтогов],
SUM(CASE WHEN _splitter=0 THEN 1 ELSE 0 END) as [КоличествоСтрок],
SUM(CASE WHEN _Fld53857 = 0 AND _Splitter = 0 THEN 1 ELSE 0 END) as [КоличествоНулевыхСтрок]
FROM _AccumRgT53859
GROUP BY _Period
UNION ALL
SELECT 
'_AccumRgT52569' AS [ИмяТаблицыSQL],
convert(datetime,_Period, 120) as [ПериодИтогов],						--///// |_Period as [ПериодИтогов],
SUM(CASE WHEN _splitter=0 THEN 1 ELSE 0 END) as [КоличествоСтрок],
SUM(CASE WHEN _Fld52554 = 0 AND _Fld52555 = 0 AND _Fld52556 = 0 AND _Fld52557 = 0 AND _Fld52558 = 0 AND _Fld52559 = 0 AND _Splitter = 0 THEN 1 ELSE 0 END) as [КоличествоНулевыхСтрок]
FROM _AccumRgT52569
GROUP BY _Period
UNION ALL
SELECT 
'_AccumRgT82809' AS [ИмяТаблицыSQL],
convert(datetime,_Period, 120) as [ПериодИтогов],						--///// |_Period as [ПериодИтогов],
SUM(CASE WHEN _splitter=0 THEN 1 ELSE 0 END) as [КоличествоСтрок],
SUM(CASE WHEN _Fld82805 = 0 AND _Fld82806 = 0 AND _Splitter = 0 THEN 1 ELSE 0 END) as [КоличествоНулевыхСтрок]
FROM _AccumRgT82809
GROUP BY _Period
UNION ALL
SELECT 
'_AccumRgT51590' AS [ИмяТаблицыSQL],
convert(datetime,_Period, 120) as [ПериодИтогов],						--///// |_Period as [ПериодИтогов],
SUM(CASE WHEN _splitter=0 THEN 1 ELSE 0 END) as [КоличествоСтрок],
SUM(CASE WHEN _Fld51585 = 0 AND _Fld51586 = 0 AND _Fld51587 = 0 AND _Fld51588 = 0 AND _Splitter = 0 THEN 1 ELSE 0 END) as [КоличествоНулевыхСтрок]
FROM _AccumRgT51590
GROUP BY _Period
UNION ALL
SELECT 
'_AccumRgT53089' AS [ИмяТаблицыSQL],
convert(datetime,_Period, 120) as [ПериодИтогов],						--///// |_Period as [ПериодИтогов],
SUM(CASE WHEN _splitter=0 THEN 1 ELSE 0 END) as [КоличествоСтрок],
SUM(CASE WHEN _Fld53074 = 0 AND _Fld53075 = 0 AND _Fld53076 = 0 AND _Fld53077 = 0 AND _Fld53078 = 0 AND _Fld80435 = 0 AND _Splitter = 0 THEN 1 ELSE 0 END) as [КоличествоНулевыхСтрок]
FROM _AccumRgT53089
GROUP BY _Period
UNION ALL
SELECT 
'_AccumRgT53206' AS [ИмяТаблицыSQL],
convert(datetime,_Period, 120) as [ПериодИтогов],						--///// |_Period as [ПериодИтогов],
SUM(CASE WHEN _splitter=0 THEN 1 ELSE 0 END) as [КоличествоСтрок],
SUM(CASE WHEN _Fld53200 = 0 AND _Splitter = 0 THEN 1 ELSE 0 END) as [КоличествоНулевыхСтрок]
FROM _AccumRgT53206
GROUP BY _Period
UNION ALL
SELECT 
'_AccumRgT76810' AS [ИмяТаблицыSQL],
convert(datetime,_Period, 120) as [ПериодИтогов],						--///// |_Period as [ПериодИтогов],
SUM(CASE WHEN _splitter=0 THEN 1 ELSE 0 END) as [КоличествоСтрок],
SUM(CASE WHEN _Fld76803 = 0 AND _Splitter = 0 THEN 1 ELSE 0 END) as [КоличествоНулевыхСтрок]
FROM _AccumRgT76810
GROUP BY _Period
UNION ALL
SELECT 
'_AccumRgT85072' AS [ИмяТаблицыSQL],
convert(datetime,_Period, 120) as [ПериодИтогов],						--///// |_Period as [ПериодИтогов],
SUM(CASE WHEN _splitter=0 THEN 1 ELSE 0 END) as [КоличествоСтрок],
SUM(CASE WHEN _Fld85071 = 0 AND _Splitter = 0 THEN 1 ELSE 0 END) as [КоличествоНулевыхСтрок]
FROM _AccumRgT85072
GROUP BY _Period
UNION ALL
SELECT 
'_AccumRgT85085' AS [ИмяТаблицыSQL],
convert(datetime,_Period, 120) as [ПериодИтогов],						--///// |_Period as [ПериодИтогов],
SUM(CASE WHEN _splitter=0 THEN 1 ELSE 0 END) as [КоличествоСтрок],
SUM(CASE WHEN _Fld85081 = 0 AND _Fld85082 = 0 AND _Fld85083 = 0 AND _Splitter = 0 THEN 1 ELSE 0 END) as [КоличествоНулевыхСтрок]
FROM _AccumRgT85085
GROUP BY _Period
UNION ALL
SELECT 
'_AccumRgT85097' AS [ИмяТаблицыSQL],
convert(datetime,_Period, 120) as [ПериодИтогов],						--///// |_Period as [ПериодИтогов],
SUM(CASE WHEN _splitter=0 THEN 1 ELSE 0 END) as [КоличествоСтрок],
SUM(CASE WHEN _Fld85094 = 0 AND _Fld85095 = 0 AND _Splitter = 0 THEN 1 ELSE 0 END) as [КоличествоНулевыхСтрок]
FROM _AccumRgT85097
GROUP BY _Period
UNION ALL
SELECT 
'_AccumRgT85109' AS [ИмяТаблицыSQL],
convert(datetime,_Period, 120) as [ПериодИтогов],						--///// |_Period as [ПериодИтогов],
SUM(CASE WHEN _splitter=0 THEN 1 ELSE 0 END) as [КоличествоСтрок],
SUM(CASE WHEN _Fld85106 = 0 AND _Fld85107 = 0 AND _Splitter = 0 THEN 1 ELSE 0 END) as [КоличествоНулевыхСтрок]
FROM _AccumRgT85109
GROUP BY _Period
UNION ALL
SELECT 
'_AccumRgT85121' AS [ИмяТаблицыSQL],
convert(datetime,_Period, 120) as [ПериодИтогов],						--///// |_Period as [ПериодИтогов],
SUM(CASE WHEN _splitter=0 THEN 1 ELSE 0 END) as [КоличествоСтрок],
SUM(CASE WHEN _Fld85118 = 0 AND _Fld85119 = 0 AND _Splitter = 0 THEN 1 ELSE 0 END) as [КоличествоНулевыхСтрок]
FROM _AccumRgT85121
GROUP BY _Period
UNION ALL
SELECT 
'_AccumRgT85133' AS [ИмяТаблицыSQL],
convert(datetime,_Period, 120) as [ПериодИтогов],						--///// |_Period as [ПериодИтогов],
SUM(CASE WHEN _splitter=0 THEN 1 ELSE 0 END) as [КоличествоСтрок],
SUM(CASE WHEN _Fld85131 = 0 AND _Fld85132 = 0 AND _Splitter = 0 THEN 1 ELSE 0 END) as [КоличествоНулевыхСтрок]
FROM _AccumRgT85133
GROUP BY _Period
UNION ALL
SELECT 
'_AccumRgT85175' AS [ИмяТаблицыSQL],
convert(datetime,_Period, 120) as [ПериодИтогов],						--///// |_Period as [ПериодИтогов],
SUM(CASE WHEN _splitter=0 THEN 1 ELSE 0 END) as [КоличествоСтрок],
SUM(CASE WHEN _Fld85173 = 0 AND _Fld85174 = 0 AND _Splitter = 0 THEN 1 ELSE 0 END) as [КоличествоНулевыхСтрок]
FROM _AccumRgT85175
GROUP BY _Period
UNION ALL
SELECT 
'_AccumRgT49957' AS [ИмяТаблицыSQL],
convert(datetime,_Period, 120) as [ПериодИтогов],						--///// |_Period as [ПериодИтогов],
SUM(CASE WHEN _splitter=0 THEN 1 ELSE 0 END) as [КоличествоСтрок],
SUM(CASE WHEN _Fld49956 = 0 AND _Splitter = 0 THEN 1 ELSE 0 END) as [КоличествоНулевыхСтрок]
FROM _AccumRgT49957
GROUP BY _Period
UNION ALL
SELECT 
'_AccumRgT57533' AS [ИмяТаблицыSQL],
convert(datetime,_Period, 120) as [ПериодИтогов],						--///// |_Period as [ПериодИтогов],
SUM(CASE WHEN _splitter=0 THEN 1 ELSE 0 END) as [КоличествоСтрок],
SUM(CASE WHEN _Fld57531 = 0 AND _Splitter = 0 THEN 1 ELSE 0 END) as [КоличествоНулевыхСтрок]
FROM _AccumRgT57533
GROUP BY _Period
UNION ALL
SELECT 
'_AccumRgT58837' AS [ИмяТаблицыSQL],
convert(datetime,_Period, 120) as [ПериодИтогов],						--///// |_Period as [ПериодИтогов],
SUM(CASE WHEN _splitter=0 THEN 1 ELSE 0 END) as [КоличествоСтрок],
SUM(CASE WHEN _Fld58836 = 0 AND _Splitter = 0 THEN 1 ELSE 0 END) as [КоличествоНулевыхСтрок]
FROM _AccumRgT58837
GROUP BY _Period
UNION ALL
SELECT 
'_AccumRgT89732' AS [ИмяТаблицыSQL],
convert(datetime,_Period, 120) as [ПериодИтогов],						--///// |_Period as [ПериодИтогов],
COUNT(*) as [КоличествоСтрок],
SUM(CASE WHEN _Fld89726 = 0 THEN 1 ELSE 0 END) as [КоличествоНулевыхСтрок]
FROM _AccumRgT89732
GROUP BY _Period
UNION ALL
SELECT 
'_AccumRgT89758' AS [ИмяТаблицыSQL],
convert(datetime,_Period, 120) as [ПериодИтогов],						--///// |_Period as [ПериодИтогов],
COUNT(*) as [КоличествоСтрок],
SUM(CASE WHEN _Fld89741 = 0 AND _Fld89742 = 0 AND _Fld89743 = 0 AND _Fld89744 = 0 AND _Fld89745 = 0 AND _Fld89746 = 0 THEN 1 ELSE 0 END) as [КоличествоНулевыхСтрок]
FROM _AccumRgT89758
GROUP BY _Period
UNION ALL
SELECT 
'_AccumRgT89776' AS [ИмяТаблицыSQL],
convert(datetime,_Period, 120) as [ПериодИтогов],						--///// |_Period as [ПериодИтогов],
COUNT(*) as [КоличествоСтрок],
SUM(CASE WHEN _Fld89768 = 0 THEN 1 ELSE 0 END) as [КоличествоНулевыхСтрок]
FROM _AccumRgT89776
GROUP BY _Period
UNION ALL
SELECT 
'_AccumRgT89791' AS [ИмяТаблицыSQL],
convert(datetime,_Period, 120) as [ПериодИтогов],						--///// |_Period as [ПериодИтогов],
COUNT(*) as [КоличествоСтрок],
SUM(CASE WHEN _Fld89785 = 0 THEN 1 ELSE 0 END) as [КоличествоНулевыхСтрок]
FROM _AccumRgT89791
GROUP BY _Period
UNION ALL
SELECT 
'_AccumRgT89817' AS [ИмяТаблицыSQL],
convert(datetime,_Period, 120) as [ПериодИтогов],						--///// |_Period as [ПериодИтогов],
COUNT(*) as [КоличествоСтрок],
SUM(CASE WHEN _Fld89800 = 0 AND _Fld89801 = 0 AND _Fld89802 = 0 AND _Fld89803 = 0 AND _Fld89804 = 0 AND _Fld89805 = 0 THEN 1 ELSE 0 END) as [КоличествоНулевыхСтрок]
FROM _AccumRgT89817
GROUP BY _Period
UNION ALL
SELECT 
'_AccumRgT64487' AS [ИмяТаблицыSQL],
convert(datetime,_Period, 120) as [ПериодИтогов],						--///// |_Period as [ПериодИтогов],
SUM(CASE WHEN _splitter=0 THEN 1 ELSE 0 END) as [КоличествоСтрок],
SUM(CASE WHEN _Fld64466 = 0 AND _Fld64467 = 0 AND _Fld64468 = 0 AND _Fld80361 = 0 AND _Splitter = 0 THEN 1 ELSE 0 END) as [КоличествоНулевыхСтрок]
FROM _AccumRgT64487
GROUP BY _Period
UNION ALL
SELECT 
'_AccumRgT64510' AS [ИмяТаблицыSQL],
convert(datetime,_Period, 120) as [ПериодИтогов],						--///// |_Period as [ПериодИтогов],
SUM(CASE WHEN _splitter=0 THEN 1 ELSE 0 END) as [КоличествоСтрок],
SUM(CASE WHEN _Fld64498 = 0 AND _Fld64499 = 0 AND _Fld80393 = 0 AND _Splitter = 0 THEN 1 ELSE 0 END) as [КоличествоНулевыхСтрок]
FROM _AccumRgT64510
GROUP BY _Period
UNION ALL
SELECT 
'_AccumRgT53240' AS [ИмяТаблицыSQL],
convert(datetime,_Period, 120) as [ПериодИтогов],						--///// |_Period as [ПериодИтогов],
SUM(CASE WHEN _splitter=0 THEN 1 ELSE 0 END) as [КоличествоСтрок],
SUM(CASE WHEN _Fld53235 = 0 AND _Fld91343 = 0 AND _Fld53236 = 0 AND _Fld53237 = 0 AND _Splitter = 0 THEN 1 ELSE 0 END) as [КоличествоНулевыхСтрок]
FROM _AccumRgT53240
GROUP BY _Period
UNION ALL
SELECT 
'_AccumRgT53280' AS [ИмяТаблицыSQL],
convert(datetime,_Period, 120) as [ПериодИтогов],						--///// |_Period as [ПериодИтогов],
COUNT(*) as [КоличествоСтрок],
SUM(CASE WHEN _Fld53261 = 0 AND _Fld53262 = 0 AND _Fld53263 = 0 AND _Fld53264 = 0 AND _Fld53265 = 0 THEN 1 ELSE 0 END) as [КоличествоНулевыхСтрок]
FROM _AccumRgT53280
GROUP BY _Period
UNION ALL
SELECT 
'_AccumRgT53326' AS [ИмяТаблицыSQL],
convert(datetime,_Period, 120) as [ПериодИтогов],						--///// |_Period as [ПериодИтогов],
COUNT(*) as [КоличествоСтрок],
SUM(CASE WHEN _Fld53310 = 0 AND _Fld53311 = 0 AND _Fld53312 = 0 AND _Fld53313 = 0 THEN 1 ELSE 0 END) as [КоличествоНулевыхСтрок]
FROM _AccumRgT53326
GROUP BY _Period
UNION ALL
SELECT 
'_AccumRgT53784' AS [ИмяТаблицыSQL],
convert(datetime,_Period, 120) as [ПериодИтогов],						--///// |_Period as [ПериодИтогов],
SUM(CASE WHEN _splitter=0 THEN 1 ELSE 0 END) as [КоличествоСтрок],
SUM(CASE WHEN _Fld53783 = 0 AND _Splitter = 0 THEN 1 ELSE 0 END) as [КоличествоНулевыхСтрок]
FROM _AccumRgT53784
GROUP BY _Period
UNION ALL
SELECT 
'_AccumRgT53884' AS [ИмяТаблицыSQL],
convert(datetime,_Period, 120) as [ПериодИтогов],						--///// |_Period as [ПериодИтогов],
SUM(CASE WHEN _splitter=0 THEN 1 ELSE 0 END) as [КоличествоСтрок],
SUM(CASE WHEN _Fld53876 = 0 AND _Fld53877 = 0 AND _Fld53878 = 0 AND _Splitter = 0 THEN 1 ELSE 0 END) as [КоличествоНулевыхСтрок]
FROM _AccumRgT53884
GROUP BY _Period
UNION ALL
SELECT 
'_AccumRgT89699' AS [ИмяТаблицыSQL],
convert(datetime,_Period, 120) as [ПериодИтогов],						--///// |_Period as [ПериодИтогов],
SUM(CASE WHEN _splitter=0 THEN 1 ELSE 0 END) as [КоличествоСтрок],
SUM(CASE WHEN _Fld89676 = 0 AND _Fld89677 = 0 AND _Fld89678 = 0 AND _Fld89679 = 0 AND _Splitter = 0 THEN 1 ELSE 0 END) as [КоличествоНулевыхСтрок]
FROM _AccumRgT89699
GROUP BY _Period
UNION ALL
SELECT 
'_AccumRgT53120' AS [ИмяТаблицыSQL],
convert(datetime,_Period, 120) as [ПериодИтогов],						--///// |_Period as [ПериодИтогов],
SUM(CASE WHEN _splitter=0 THEN 1 ELSE 0 END) as [КоличествоСтрок],
SUM(CASE WHEN _Fld53101 = 0 AND _Fld53102 = 0 AND _Fld53103 = 0 AND _Fld53104 = 0 AND _Fld53105 = 0 AND _Fld53106 = 0 AND _Fld80440 = 0 AND _Fld67613 = 0 AND _Fld83284 = 0 AND _Fld83285 = 0 AND _Fld83286 = 0 AND _Splitter = 0 THEN 1 ELSE 0 END) as [КоличествоНулевыхСтрок]
FROM _AccumRgT53120
GROUP BY _Period
UNION ALL
SELECT 
'_AccumRgT89717' AS [ИмяТаблицыSQL],
convert(datetime,_Period, 120) as [ПериодИтогов],						--///// |_Period as [ПериодИтогов],
COUNT(*) as [КоличествоСтрок],
SUM(CASE WHEN _Fld89709 = 0 THEN 1 ELSE 0 END) as [КоличествоНулевыхСтрок]
FROM _AccumRgT89717
GROUP BY _Period
UNION ALL
SELECT 
'_AccumRgT53810' AS [ИмяТаблицыSQL],
convert(datetime,_Period, 120) as [ПериодИтогов],						--///// |_Period as [ПериодИтогов],
SUM(CASE WHEN _splitter=0 THEN 1 ELSE 0 END) as [КоличествоСтрок],
SUM(CASE WHEN _Fld53796 = 0 AND _Fld53797 = 0 AND _Fld53798 = 0 AND _Fld53799 = 0 AND _Splitter = 0 THEN 1 ELSE 0 END) as [КоличествоНулевыхСтрок]
FROM _AccumRgT53810
GROUP BY _Period
UNION ALL
SELECT 
'_AccumRgT58841' AS [ИмяТаблицыSQL],
convert(datetime,_Period, 120) as [ПериодИтогов],						--///// |_Period as [ПериодИтогов],
SUM(CASE WHEN _splitter=0 THEN 1 ELSE 0 END) as [КоличествоСтрок],
SUM(CASE WHEN _Fld58840 = 0 AND _Splitter = 0 THEN 1 ELSE 0 END) as [КоличествоНулевыхСтрок]
FROM _AccumRgT58841
GROUP BY _Period
UNION ALL
SELECT 
'_AccRgAT02042' AS [ИмяТаблицыSQL],
convert(datetime,_Period, 120) as [ПериодИтогов],						--///// |_Period as [ПериодИтогов],
SUM(CASE WHEN _splitter=0 THEN 1 ELSE 0 END) as [КоличествоСтрок],
SUM(CASE WHEN _Fld2032 = 0 AND _TurnoverDt2043 = 0 AND _TurnoverCt2044 = 0 AND _Turnover2045 = 0 AND _Fld2033 = 0 AND _TurnoverDt2046 = 0 AND _TurnoverCt2047 = 0 AND _Turnover2048 = 0 AND _Fld2034 = 0 AND _TurnoverDt2049 = 0 AND _TurnoverCt2050 = 0 AND _Turnover2051 = 0 AND _Fld2035 = 0 AND _TurnoverDt2052 = 0 AND _TurnoverCt2053 = 0 AND _Turnover2054 = 0 AND _Fld2036 = 0 AND _TurnoverDt2055 = 0 AND _TurnoverCt2056 = 0 AND _Turnover2057 = 0 AND _Fld2037 = 0 AND _TurnoverDt2058 = 0 AND _TurnoverCt2059 = 0 AND _Turnover2060 = 0 AND _Fld80523 = 0 AND _TurnoverDt80526 = 0 AND _TurnoverCt80527 = 0 AND _Turnover80528 = 0 AND _Fld80524 = 0 AND _TurnoverDt80529 = 0 AND _TurnoverCt80530 = 0 AND _Turnover80531 = 0 AND _Fld80525 = 0 AND _TurnoverDt80532 = 0 AND _TurnoverCt80533 = 0 AND _Turnover80534 = 0 AND _Splitter = 0 THEN 1 ELSE 0 END) as [КоличествоНулевыхСтрок]
FROM _AccRgAT02042
GROUP BY _Period
UNION ALL
SELECT 
'_AccRgAT12061' AS [ИмяТаблицыSQL],
convert(datetime,_Period, 120) as [ПериодИтогов],						--///// |_Period as [ПериодИтогов],
SUM(CASE WHEN _splitter=0 THEN 1 ELSE 0 END) as [КоличествоСтрок],
SUM(CASE WHEN _Fld2032 = 0 AND _TurnoverDt2043 = 0 AND _TurnoverCt2044 = 0 AND _Turnover2045 = 0 AND _Fld2033 = 0 AND _TurnoverDt2046 = 0 AND _TurnoverCt2047 = 0 AND _Turnover2048 = 0 AND _Fld2034 = 0 AND _TurnoverDt2049 = 0 AND _TurnoverCt2050 = 0 AND _Turnover2051 = 0 AND _Fld2035 = 0 AND _TurnoverDt2052 = 0 AND _TurnoverCt2053 = 0 AND _Turnover2054 = 0 AND _Fld2036 = 0 AND _TurnoverDt2055 = 0 AND _TurnoverCt2056 = 0 AND _Turnover2057 = 0 AND _Fld2037 = 0 AND _TurnoverDt2058 = 0 AND _TurnoverCt2059 = 0 AND _Turnover2060 = 0 AND _Fld80523 = 0 AND _TurnoverDt80526 = 0 AND _TurnoverCt80527 = 0 AND _Turnover80528 = 0 AND _Fld80524 = 0 AND _TurnoverDt80529 = 0 AND _TurnoverCt80530 = 0 AND _Turnover80531 = 0 AND _Fld80525 = 0 AND _TurnoverDt80532 = 0 AND _TurnoverCt80533 = 0 AND _Turnover80534 = 0 AND _Splitter = 0 THEN 1 ELSE 0 END) as [КоличествоНулевыхСтрок]
FROM _AccRgAT12061
GROUP BY _Period
UNION ALL
SELECT 
'_AccRgAT22062' AS [ИмяТаблицыSQL],
convert(datetime,_Period, 120) as [ПериодИтогов],						--///// |_Period as [ПериодИтогов],
SUM(CASE WHEN _splitter=0 THEN 1 ELSE 0 END) as [КоличествоСтрок],
SUM(CASE WHEN _Fld2032 = 0 AND _TurnoverDt2043 = 0 AND _TurnoverCt2044 = 0 AND _Turnover2045 = 0 AND _Fld2033 = 0 AND _TurnoverDt2046 = 0 AND _TurnoverCt2047 = 0 AND _Turnover2048 = 0 AND _Fld2034 = 0 AND _TurnoverDt2049 = 0 AND _TurnoverCt2050 = 0 AND _Turnover2051 = 0 AND _Fld2035 = 0 AND _TurnoverDt2052 = 0 AND _TurnoverCt2053 = 0 AND _Turnover2054 = 0 AND _Fld2036 = 0 AND _TurnoverDt2055 = 0 AND _TurnoverCt2056 = 0 AND _Turnover2057 = 0 AND _Fld2037 = 0 AND _TurnoverDt2058 = 0 AND _TurnoverCt2059 = 0 AND _Turnover2060 = 0 AND _Fld80523 = 0 AND _TurnoverDt80526 = 0 AND _TurnoverCt80527 = 0 AND _Turnover80528 = 0 AND _Fld80524 = 0 AND _TurnoverDt80529 = 0 AND _TurnoverCt80530 = 0 AND _Turnover80531 = 0 AND _Fld80525 = 0 AND _TurnoverDt80532 = 0 AND _TurnoverCt80533 = 0 AND _Turnover80534 = 0 AND _Splitter = 0 THEN 1 ELSE 0 END) as [КоличествоНулевыхСтрок]
FROM _AccRgAT22062
GROUP BY _Period
UNION ALL
SELECT 
'_AccRgAT32063' AS [ИмяТаблицыSQL],
convert(datetime,_Period, 120) as [ПериодИтогов],						--///// |_Period as [ПериодИтогов],
SUM(CASE WHEN _splitter=0 THEN 1 ELSE 0 END) as [КоличествоСтрок],
SUM(CASE WHEN _Fld2032 = 0 AND _TurnoverDt2043 = 0 AND _TurnoverCt2044 = 0 AND _Turnover2045 = 0 AND _Fld2033 = 0 AND _TurnoverDt2046 = 0 AND _TurnoverCt2047 = 0 AND _Turnover2048 = 0 AND _Fld2034 = 0 AND _TurnoverDt2049 = 0 AND _TurnoverCt2050 = 0 AND _Turnover2051 = 0 AND _Fld2035 = 0 AND _TurnoverDt2052 = 0 AND _TurnoverCt2053 = 0 AND _Turnover2054 = 0 AND _Fld2036 = 0 AND _TurnoverDt2055 = 0 AND _TurnoverCt2056 = 0 AND _Turnover2057 = 0 AND _Fld2037 = 0 AND _TurnoverDt2058 = 0 AND _TurnoverCt2059 = 0 AND _Turnover2060 = 0 AND _Fld80523 = 0 AND _TurnoverDt80526 = 0 AND _TurnoverCt80527 = 0 AND _Turnover80528 = 0 AND _Fld80524 = 0 AND _TurnoverDt80529 = 0 AND _TurnoverCt80530 = 0 AND _Turnover80531 = 0 AND _Fld80525 = 0 AND _TurnoverDt80532 = 0 AND _TurnoverCt80533 = 0 AND _Turnover80534 = 0 AND _Splitter = 0 THEN 1 ELSE 0 END) as [КоличествоНулевыхСтрок]
FROM _AccRgAT32063
GROUP BY _Period
ORDER BY 1,2