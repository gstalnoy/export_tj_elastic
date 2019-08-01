/*
	_Reference533 —Ô‡‚Ó˜ÌËÍ.—ÍÎ‡‰˚

     IDX_AE__Reference533__Fld13177__Fld1979	            96    ¡
     IDX_AE__Reference533__Fld13177__Fld1979__Fld13200	112   ¡
     IDX_AE__Reference533__Fld13179__Fld1979__Fld13201	112   ¡
     IDX_AE__Reference533__Fld13179__Fld1979_1	        96    ¡
     IDX_AE__Reference533__Fld13179__Fld1979_2	        112   ¡
     IDX_AE__Reference533__Fld13181__Fld1979	            96    ¡
     IDX_AE__Reference533__Fld13193__Fld1979	            96    ¡
     IDX_AE__Reference533__Fld13196__Fld1979	            96    ¡
     IDX_AE__Reference533__Fld13197__Fld1979	            96    ¡
     IDX_AE__Reference533__Fld13206__Fld1979	            96    ¡

*/

IF NOT EXISTS ( SELECT * FROM sysindexes WHERE NAME = 'IDX_AE__Reference533__Fld13179__Fld1979_1' AND id = OBJECT_ID('_Reference533') )
	CREATE INDEX [IDX_AE__Reference533__Fld13179__Fld1979_1] ON [dbo].[_Reference533] ([_Fld13179], [_Fld1979])

IF NOT EXISTS ( SELECT * FROM sysindexes WHERE NAME = 'IDX_AE__Reference533__Fld13179__Fld1979_2' AND id = OBJECT_ID('_Reference533') )
	CREATE INDEX [IDX_AE__Reference533__Fld13179__Fld1979_2] ON [dbo].[_Reference533] ([_Fld13179], [_Fld1979]) INCLUDE ([_IDRRef], [_Fld13201])

IF NOT EXISTS ( SELECT * FROM sysindexes WHERE NAME = 'IDX_AE__Reference533__Fld13177__Fld1979' AND id = OBJECT_ID('_Reference533') )
	CREATE INDEX [IDX_AE__Reference533__Fld13177__Fld1979] ON [dbo].[_Reference533] ([_Fld13177], [_Fld1979])

IF NOT EXISTS ( SELECT * FROM sysindexes WHERE NAME = 'IDX_AE__Reference533__Fld13196__Fld1979' AND id = OBJECT_ID('_Reference533') )
	CREATE INDEX [IDX_AE__Reference533__Fld13196__Fld1979] ON [dbo].[_Reference533] ([_Fld13196], [_Fld1979])

IF NOT EXISTS ( SELECT * FROM sysindexes WHERE NAME = 'IDX_AE__Reference533__Fld13197__Fld1979' AND id = OBJECT_ID('_Reference533') )
	CREATE INDEX [IDX_AE__Reference533__Fld13197__Fld1979] ON [dbo].[_Reference533] ([_Fld13197], [_Fld1979])

IF NOT EXISTS ( SELECT * FROM sysindexes WHERE NAME = 'IDX_AE__Reference533__Fld13181__Fld1979' AND id = OBJECT_ID('_Reference533') )
	CREATE INDEX [IDX_AE__Reference533__Fld13181__Fld1979] ON [dbo].[_Reference533] ([_Fld13181], [_Fld1979])

IF NOT EXISTS ( SELECT * FROM sysindexes WHERE NAME = 'IDX_AE__Reference533__Fld13206__Fld1979' AND id = OBJECT_ID('_Reference533') )
	CREATE INDEX [IDX_AE__Reference533__Fld13206__Fld1979] ON [dbo].[_Reference533] ([_Fld13206], [_Fld1979])

IF NOT EXISTS ( SELECT * FROM sysindexes WHERE NAME = 'IDX_AE__Reference533__Fld13193__Fld1979' AND id = OBJECT_ID('_Reference533') )
	CREATE INDEX [IDX_AE__Reference533__Fld13193__Fld1979] ON [dbo].[_Reference533] ([_Fld13193], [_Fld1979])

IF NOT EXISTS ( SELECT * FROM sysindexes WHERE NAME = 'IDX_AE__Reference533__Fld13179__Fld1979__Fld13201' AND id = OBJECT_ID('_Reference533') )
	CREATE INDEX [IDX_AE__Reference533__Fld13179__Fld1979__Fld13201] ON [dbo].[_Reference533] ([_Fld13179], [_Fld1979],[_Fld13201]) INCLUDE ([_IDRRef])

IF NOT EXISTS ( SELECT * FROM sysindexes WHERE NAME = 'IDX_AE__Reference533__Fld13177__Fld1979__Fld13200' AND id = OBJECT_ID('_Reference533') )
	CREATE INDEX [IDX_AE__Reference533__Fld13177__Fld1979__Fld13200] ON [dbo].[_Reference533] ([_Fld13177], [_Fld1979],[_Fld13200]) INCLUDE ([_IDRRef])


