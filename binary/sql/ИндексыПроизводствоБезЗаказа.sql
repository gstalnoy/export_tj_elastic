/*
		_AccumRg52526 (РегистрНакопления.ПартииПрочихРасходов)
		IDX_AE__AccumRg52526__RecorderTRef__RecorderRRef__Fld1979	3 458 584 КБ
*/
IF NOT EXISTS ( SELECT * FROM sysindexes WHERE NAME = 'IDX_AE__AccumRg52526__RecorderTRef__RecorderRRef__Fld1979' AND id = OBJECT_ID('_AccumRg52526') )
	CREATE INDEX [IDX_AE__AccumRg52526__RecorderTRef__RecorderRRef__Fld1979] ON [dbo].[_AccumRg52526] ([_RecorderTRef], [_RecorderRRef], [_Fld1979]) INCLUDE ([_Period], [_LineNo], [_Active], [_RecordKind], [_Fld52527RRef], [_Fld52528RRef], [_Fld52529_TYPE], [_Fld52529_RTRef], [_Fld52529_RRRef], [_Fld52530_TYPE], [_Fld52530_RTRef], [_Fld52530_RRRef], [_Fld66531_TYPE], [_Fld66531_RTRef], [_Fld66531_RRRef], [_Fld52531_TYPE], [_Fld52531_RTRef], [_Fld52531_RRRef], [_Fld52532RRef], [_Fld66532RRef], [_Fld52533RRef], [_Fld66533RRef], [_Fld52534], [_Fld52535], [_Fld52536], [_Fld52537], [_Fld52538], [_Fld52539], [_Fld80405], [_Fld52540RRef], [_Fld52541_TYPE], [_Fld52541_RTRef], [_Fld52541_RRRef], [_Fld52542RRef], [_Fld66534_TYPE], [_Fld66534_RTRef], [_Fld66534_RRRef], [_Fld66535], [_Fld66536], [_Fld80406RRef], [_DimHash]);
	
	
/*
	_AccumRg53091 (РегистрНакопления.ПрочиеРасходыНезавершенногоПроизводства)
*/	
/*
IF NOT EXISTS ( SELECT * FROM sysindexes WHERE NAME = 'IX__AccumRg53091__RecorderTRef__RecorderRRef__Fld1979_1' AND id = OBJECT_ID('_AccumRg53091') )
		CREATE INDEX [IX__AccumRg53091__RecorderTRef__RecorderRRef__Fld1979_1] ON [dbo].[_AccumRg53091] ([_RecorderTRef], [_RecorderRRef], [_Fld1979]) INCLUDE ([_Period], [_LineNo], [_Active], [_RecordKind], [_Fld53092RRef], [_Fld53093RRef], [_Fld66609_TYPE], [_Fld66609_RTRef], [_Fld66609_RRRef], [_Fld53094_TYPE], [_Fld53094_RTRef], [_Fld53094_RRRef], [_Fld53095], [_Fld83283RRef], [_Fld53096RRef], [_Fld53097RRef], [_Fld53098RRef], [_Fld53099_TYPE], [_Fld53099_RTRef], [_Fld53099_RRRef], [_Fld53100RRef], [_Fld67612RRef], [_Fld53101], [_Fld53102], [_Fld53103], [_Fld53104], [_Fld53105], [_Fld53106], [_Fld80440], [_Fld67613], [_Fld83284], [_Fld83285], [_Fld83286], [_Fld53107RRef], [_Fld53108RRef], [_Fld53109], [_Fld53110RRef], [_Fld53111RRef], [_Fld53112RRef], [_Fld53113_TYPE], [_Fld53113_RTRef], [_Fld53113_RRRef], [_Fld53114RRef], [_Fld53115_TYPE], [_Fld53115_RTRef], [_Fld53115_RRRef], [_Fld53116], [_Fld66610], [_Fld67614], [_Fld83287], [_Fld83288], [_Fld83289], [_Fld66611_TYPE], [_Fld66611_RTRef], [_Fld66611_RRRef], [_Fld80441RRef], [_DimHash]);
	
IF NOT EXISTS ( SELECT * FROM sysindexes WHERE NAME = 'IX__AccumRg53091__RecorderTRef__RecorderRRef__Fld1979_2' AND id = OBJECT_ID('_AccumRg53091') )
		CREATE INDEX [IX__AccumRg53091__RecorderTRef__RecorderRRef__Fld1979_2] ON [dbo].[_AccumRg53091] ([_RecorderTRef], [_RecorderRRef], [_Fld1979]) INCLUDE ([_Period], [_Fld53092RRef], [_Fld53094_TYPE], [_Fld53094_RTRef], [_Fld53094_RRRef], [_Fld53095], [_Fld53096RRef], [_Fld53097RRef], [_Fld53098RRef], [_Fld53099_TYPE], [_Fld53099_RTRef], [_Fld53099_RRRef], [_Fld53100RRef], [_Fld53101], [_Fld53102], [_Fld53103], [_Fld53104], [_Fld53105], [_Fld53106])
*/

/*
IX__AccumRg53091__RecorderTRef__RecorderRRef__Fld1979_1 - 	58 350 256 КБ
IX__AccumRg53091__RecorderTRef__RecorderRRef__Fld1979_2	-   21 673 016 КБ
*/ 