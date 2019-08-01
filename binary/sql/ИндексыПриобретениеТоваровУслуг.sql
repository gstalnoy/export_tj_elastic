 
 -- Документ.ПриобретениеТоваровУслуг
 /* размер в КБ
 	IDX_AE_1_Document1006	5600
	IDX_AE_2_Document1006	11624
	IDX_AE_3_Document1006	9616
	IDX_AE_4_Document1006	9616
  */
IF NOT EXISTS ( SELECT * FROM sysindexes WHERE NAME = 'IDX_AE_1_Document1006' AND id = OBJECT_ID('_Document1006') )
	CREATE NONCLUSTERED INDEX [IDX_AE_1_Document1006] ON [dbo].[_Document1006] ([_Fld79330_TYPE],[_Fld79330_RTRef],[_Fld79330_RRRef],[_Fld1979],[_IDRRef]);

IF NOT EXISTS ( SELECT * FROM sysindexes WHERE NAME = 'IDX_AE_2_Document1006' AND id = OBJECT_ID('_Document1006') )
	CREATE NONCLUSTERED INDEX [IDX_AE_2_Document1006] ON [dbo].[_Document1006] ([_Marked],[_Fld34039RRef],[_Fld34089RRef],[_Fld34043RRef],[_Fld1979],[_IDRRef]) INCLUDE ([_Date_Time],[_Fld34065RRef]);

IF NOT EXISTS ( SELECT * FROM sysindexes WHERE NAME = 'IDX_AE_3_Document1006' AND id = OBJECT_ID('_Document1006') )
	CREATE NONCLUSTERED INDEX [IDX_AE_3_Document1006] ON [dbo].[_Document1006] ([_Marked],[_Fld34090RRef],[_Fld34043RRef],[_Fld1979],[_IDRRef]) INCLUDE ([_Date_Time],[_Fld34091RRef]);

IF NOT EXISTS ( SELECT * FROM sysindexes WHERE NAME = 'IDX_AE_4_Document1006' AND id = OBJECT_ID('_Document1006') )
	CREATE NONCLUSTERED INDEX [IDX_AE_4_Document1006] ON [dbo].[_Document1006] ([_Marked],[_Fld34090RRef],[_Fld34043RRef],[_Fld1979],[_IDRRef]) INCLUDE ([_Date_Time],[_Fld34103RRef]);

-- РегистрНакопления.СебестоимостьТоваров
/*
	IDX_AE_1_AccumRg53456	905 696
	IDX_AE_2_AccumRg53456	903 344
	IDX_AE_3_AccumRg53456	1 187 160
	IDX_AE_4_AccumRg53456	938 680
*/
IF NOT EXISTS ( SELECT * FROM sysindexes WHERE NAME = 'IDX_AE_1_AccumRg53456' AND id = OBJECT_ID('_AccumRg53456') )
	CREATE NONCLUSTERED INDEX [IDX_AE_1_AccumRg53456] ON [dbo].[_AccumRg53456] ([_RecordKind],[_Fld53460RRef],[_Fld66624_TYPE],[_Fld66624_RTRef],[_Fld66624_RRRef],[_Fld1979]) INCLUDE ([_Period],[_RecorderTRef],[_RecorderRRef],[_Fld53457RRef]);
IF NOT EXISTS ( SELECT * FROM sysindexes WHERE NAME = 'IDX_AE_2_AccumRg53456' AND id = OBJECT_ID('_AccumRg53456') )
	CREATE NONCLUSTERED INDEX [IDX_AE_2_AccumRg53456] ON [dbo].[_AccumRg53456] ([_RecordKind],[_Fld53460RRef],[_Fld1979]) INCLUDE ([_Period],[_RecorderTRef],[_RecorderRRef],[_Fld53457RRef],[_Fld66624_TYPE],[_Fld66624_RTRef],[_Fld66624_RRRef]);
IF NOT EXISTS ( SELECT * FROM sysindexes WHERE NAME = 'IDX_AE_3_AccumRg53456' AND id = OBJECT_ID('_AccumRg53456') )
	CREATE NONCLUSTERED INDEX [IDX_AE_3_AccumRg53456] ON [dbo].[_AccumRg53456] ([_Active],[_RecordKind],[_Fld53458RRef],[_Fld53460RRef],[_Fld1979],[_Period]) INCLUDE ([_RecorderTRef],[_RecorderRRef],[_LineNo],[_Fld53457RRef],[_Fld53459RRef],[_Fld53461],[_Fld53462]);
IF NOT EXISTS ( SELECT * FROM sysindexes WHERE NAME = 'IDX_AE_3_AccumRg53456' AND id = OBJECT_ID('_AccumRg53456') )
	CREATE NONCLUSTERED INDEX [IDX_AE_4_AccumRg53456] ON [dbo].[_AccumRg53456] ([_RecordKind],[_Fld53469RRef],[_Fld1979],[_Period]) INCLUDE ([_Fld53457RRef],[_Fld53460RRef],[_Fld53461])

-- РегистрСведений.СуммыДокументовВВалютеРегл
/*
	IDX_AE_1_InfoRg48367	201 232
	IDX_AE_2_InfoRg48367	270 360
*/
IF NOT EXISTS ( SELECT * FROM sysindexes WHERE NAME = 'IDX_AE_1_InfoRg48367' AND id = OBJECT_ID('_InfoRg48367') )
	CREATE NONCLUSTERED INDEX [IDX_AE_1_InfoRg48367] ON [dbo].[_InfoRg48367] ([_Fld48375RRef],[_Fld1979]) INCLUDE ([_RecorderTRef],[_RecorderRRef],[_Fld48373RRef],[_Fld48376RRef]);
IF NOT EXISTS ( SELECT * FROM sysindexes WHERE NAME = 'IDX_AE_2_InfoRg48367' AND id = OBJECT_ID('_InfoRg48367') )
	CREATE NONCLUSTERED INDEX [IDX_AE_2_InfoRg48367] ON [dbo].[_InfoRg48367] ([_Fld48375RRef],[_Fld1979]) INCLUDE ([_RecorderTRef],[_RecorderRRef],[_Fld48369],[_Fld48370],[_Fld48371],[_Fld48372],[_Fld80204],[_Fld80205],[_Fld48373RRef],[_Fld48376RRef]);

-- РегистрНакопления.ПартииПрочихРасходов
/*
	IDX_AE_1_AccumRg52526	368 184
	IDX_AE_2_AccumRg52526	899 800
	IDX_AE_3_AccumRg52526	2 663 728	
*/
IF NOT EXISTS ( SELECT * FROM sysindexes WHERE NAME = 'IDX_AE_1_AccumRg52526' AND id = OBJECT_ID('_AccumRg52526') )
	CREATE NONCLUSTERED INDEX [IDX_AE_1_AccumRg52526] ON [dbo].[_AccumRg52526] ([_RecorderTRef],[_Active],[_Fld1979]) INCLUDE ([_RecorderRRef],[_LineNo]);
IF NOT EXISTS ( SELECT * FROM sysindexes WHERE NAME = 'IDX_AE_2_AccumRg52526' AND id = OBJECT_ID('_AccumRg52526') )
	CREATE NONCLUSTERED INDEX [IDX_AE_2_AccumRg52526] ON [dbo].[_AccumRg52526] ([_Fld1979],[_Fld52534]) INCLUDE ([_Period],[_RecorderTRef],[_RecorderRRef],[_RecordKind],[_Fld52527RRef],[_Fld52528RRef],[_Fld66532RRef]);
IF NOT EXISTS ( SELECT * FROM sysindexes WHERE NAME = 'IDX_AE_3_AccumRg52526' AND id = OBJECT_ID('_AccumRg52526') )
	CREATE NONCLUSTERED INDEX [IDX_AE_3_AccumRg52526] ON [dbo].[_AccumRg52526] ([_RecorderTRef],[_RecorderRRef],[_Active],[_RecordKind],[_Fld1979]) INCLUDE ([_Period],[_Fld52527RRef],[_Fld52528RRef],[_Fld52529_TYPE],[_Fld52529_RTRef],[_Fld52529_RRRef],[_Fld52530_TYPE],[_Fld52530_RTRef],[_Fld52530_RRRef],[_Fld66531_TYPE],[_Fld66531_RTRef],[_Fld66531_RRRef],[_Fld52531_TYPE],[_Fld52531_RTRef],[_Fld52531_RRRef],[_Fld52532RRef],[_Fld66532RRef],[_Fld52533RRef],[_Fld66533RRef],[_Fld52537],[_Fld80405],[_Fld52540RRef],[_Fld52542RRef],[_Fld66534_TYPE],[_Fld66534_RTRef],[_Fld66534_RRRef])

 -- РегистрНакопления.ОбеспечениеЗаказов
 
 /*
	IDX_AE_1_AccumRg52256	86 672
	IDX_AE_2_AccumRg52256	85 672
 */
IF NOT EXISTS ( SELECT * FROM sysindexes WHERE NAME = 'IDX_AE_1_AccumRg52256' AND id = OBJECT_ID('_AccumRg52256') )
	CREATE NONCLUSTERED INDEX [IDX_AE_1_AccumRg52256] ON [dbo].[_AccumRg52256] ([_Active],[_RecordKind],[_Fld52257RRef],[_Fld52258RRef],[_Fld52259RRef],[_Fld52260RRef],[_Fld1979],[_Fld52261]) INCLUDE ([_RecorderTRef],[_RecorderRRef]);
IF NOT EXISTS ( SELECT * FROM sysindexes WHERE NAME = 'IDX_AE_2_AccumRg52256' AND id = OBJECT_ID('_AccumRg52256') )
	CREATE NONCLUSTERED INDEX [IDX_AE_2_AccumRg52256] ON [dbo].[_AccumRg52256] ([_Active],[_RecordKind],[_Fld1979],[_Fld52261]) INCLUDE ([_RecorderTRef],[_RecorderRRef],[_Fld52257RRef],[_Fld52258RRef],[_Fld52259RRef],[_Fld52260RRef])

 -- РегистрНакопления.РасчетыСПоставщиками
 /*
	IDX_AE_1_AccumRg53306	26 392
 */
IF NOT EXISTS ( SELECT * FROM sysindexes WHERE NAME = 'IDX_AE_1_AccumRg53306' AND id = OBJECT_ID('_AccumRg53306') )
	CREATE NONCLUSTERED INDEX [IDX_AE_1_AccumRg53306] ON [dbo].[_AccumRg53306] ([_Active],[_Fld53308_TYPE],[_Fld53308_RTRef],[_Fld53308_RRRef],[_Fld1979])

-- РегистрНакопления.РасчетыСПоставщикамиПоДокументам
/*
	IDX_AE_1_AccumRg53328	16 256
	IDX_AE_2_AccumRg53328	22 264
	IDX_AE_3_AccumRg53328	40 760
*/
IF NOT EXISTS ( SELECT * FROM sysindexes WHERE NAME = 'IDX_AE_1_AccumRg53328' AND id = OBJECT_ID('_AccumRg53328') )
	CREATE NONCLUSTERED INDEX [IDX_AE_1_AccumRg53328] ON [dbo].[_AccumRg53328] ([_Fld53331_TYPE],[_Fld53331_RTRef],[_Fld53331_RRRef],[_Fld1979]) INCLUDE ([_Period],[_RecorderTRef],[_RecorderRRef]);
IF NOT EXISTS ( SELECT * FROM sysindexes WHERE NAME = 'IDX_AE_2_AccumRg53328' AND id = OBJECT_ID('_AccumRg53328') )
	CREATE NONCLUSTERED INDEX [IDX_AE_2_AccumRg53328] ON [dbo].[_AccumRg53328] ([_Fld53331_TYPE],[_Fld53331_RTRef],[_Fld53331_RRRef],[_Fld1979],[_Period]) INCLUDE ([_RecorderTRef],[_RecorderRRef],[_RecordKind],[_Fld53337],[_Fld53340]);
IF NOT EXISTS ( SELECT * FROM sysindexes WHERE NAME = 'IDX_AE_3_AccumRg53328' AND id = OBJECT_ID('_AccumRg53328') )
	CREATE NONCLUSTERED INDEX [IDX_AE_3_AccumRg53328] ON [dbo].[_AccumRg53328] ([_RecorderTRef],[_Fld1979]) INCLUDE ([_RecorderRRef],[_Fld53329RRef],[_Fld53330_TYPE],[_Fld53330_RTRef],[_Fld53330_RRRef],[_Fld53336],[_Fld53337],[_Fld53338],[_Fld53339],[_Fld53340],[_Fld53341],[_Fld53342],[_Fld53345RRef])

