/*
_AccumRg64456 (РегистрНакопления.ДетализацияПартийТоваровДляНДСиУСН)

IDX_AE__AccumRg64456__RecorderTRef__RecorderRRef__Fld1979 -	8 929 368 КБ
*/
IF NOT EXISTS ( SELECT * FROM sysindexes WHERE NAME = 'IDX_AE__AccumRg64456__RecorderTRef__RecorderRRef__Fld1979' AND id = OBJECT_ID('_AccumRg64456') )
	CREATE INDEX [IDX_AE__AccumRg64456__RecorderTRef__RecorderRRef__Fld1979] ON [dbo].[_AccumRg64456] ([_RecorderTRef], [_RecorderRRef], [_Fld1979]) INCLUDE ([_Period], [_Fld64457RRef], [_Fld64458RRef], [_Fld64459RRef], [_Fld64460RRef], [_Fld64461_TYPE], [_Fld64461_RTRef], [_Fld64461_RRRef], [_Fld64462_TYPE], [_Fld64462_RTRef], [_Fld64462_RRRef], [_Fld64463RRef], [_Fld64464RRef], [_Fld64465_TYPE], [_Fld64465_RTRef], [_Fld64465_RRRef], [_Fld64466], [_Fld64467], [_Fld64468], [_Fld80361], [_Fld64469RRef], [_Fld64470RRef], [_Fld64471RRef], [_Fld64472RRef], [_Fld64473_TYPE], [_Fld64473_RTRef], [_Fld64473_RRRef], [_Fld64474_TYPE], [_Fld64474_RTRef], [_Fld64474_RRRef], [_Fld64475_TYPE], [_Fld64475_RTRef], [_Fld64475_RRRef], [_Fld64476], [_Fld64477RRef], [_Fld64478_TYPE], [_Fld64478_RTRef], [_Fld64478_RRRef], [_Fld64479], [_Fld64480_TYPE], [_Fld64480_RTRef], [_Fld64480_RRRef], [_Fld64481RRef], [_Fld64482_TYPE], [_Fld64482_RTRef], [_Fld64482_RRRef]);

/*
_AccRgED2065 (РегистрБухгалтерии.Хозрасчетный.Субконто)

IX__AccRgED2065__RecorderTRef__RecorderRRef__Fld1979__Correspond -	1 826 352 КБ
*/
IF NOT EXISTS ( SELECT * FROM sysindexes WHERE NAME = 'IDX_AE__AccRgED2065__RecorderTRef__RecorderRRef__Fld1979__Correspond' AND id = OBJECT_ID('_AccRgED2065') )	
	CREATE INDEX [IDX_AE__AccRgED2065__RecorderTRef__RecorderRRef__Fld1979__Correspond] ON [dbo].[_AccRgED2065] ([_RecorderTRef], [_RecorderRRef], [_Fld1979],[_Correspond]);
	
	
