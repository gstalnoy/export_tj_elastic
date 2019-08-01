/*         99 - 90 %%           */

--
-- –егистрЌакоплени€.ѕрочие–асходыЌезавершенногоѕроизводства
--
CREATE NONCLUSTERED INDEX [IDX_AE_1_AccumRg53091] ON [dbo].[_AccumRg53091] ([_Fld53099_TYPE], [_Fld53099_RTRef], [_Fld53099_RRRef], [_Fld1979]) INCLUDE ( [_RecorderTRef], [_RecorderRRef])
CREATE NONCLUSTERED INDEX [IDX_AE_2_AccumRg53091] ON [dbo].[_AccumRg53091] ([_RecorderTRef], [_RecorderRRef], [_RecordKind], [_Fld1979] ) INCLUDE ( [_Period], [_Fld53092RRef], [_Fld53093RRef], [_Fld53100RRef], [_Fld53103], [_Fld53104], [_Fld53105], [_Fld80440], [_Fld53110RRef], [_Fld66611_TYPE], [_Fld66611_RTRef], [_Fld66611_RRRef] )
CREATE NONCLUSTERED INDEX [IDX_AE_3_AccumRg53091] ON [dbo].[_AccumRg53091] ([_RecorderTRef],[_RecorderRRef],[_RecordKind],[_Fld1979]) INCLUDE ([_Period],[_Fld53092RRef],[_Fld53093RRef],[_Fld53100RRef],[_Fld53103],[_Fld53104],[_Fld53105],[_Fld80440],[_Fld53110RRef],[_Fld66611_TYPE],[_Fld66611_RTRef],[_Fld66611_RRRef])
CREATE NONCLUSTERED INDEX [IDX_AE_4_AccumRg53091] ON [dbo].[_AccumRg53091] ([_RecordKind],[_Fld1979]) INCLUDE ([_Period],[_RecorderTRef],[_RecorderRRef],[_Fld53092RRef],[_Fld53093RRef],[_Fld53100RRef],[_Fld53103],[_Fld53104],[_Fld53105],[_Fld80440],[_Fld53110RRef],[_Fld66611_TYPE],[_Fld66611_RTRef],[_Fld66611_RRRef])
CREATE NONCLUSTERED INDEX [IDX_AE_5_AccumRg53091] ON [dbo].[_AccumRg53091] ([_RecordKind],[_Fld1979]) INCLUDE ([_Period],[_RecorderTRef],[_RecorderRRef],[_Fld53092RRef],[_Fld53093RRef],[_Fld53100RRef],[_Fld53103],[_Fld53104],[_Fld53105],[_Fld80440],[_Fld53110RRef],[_Fld66611_TYPE],[_Fld66611_RTRef],[_Fld66611_RRRef])

GO

 --_AccumRg58811
--–егистрЌакоплени€.зрн оличественно ачественный”чет

CREATE NONCLUSTERED INDEX [IDX_AE_1_AccumRg58811] ON [dbo].[_AccumRg58811] ([_Fld58828RRef],[_Fld1979]) INCLUDE ([_RecorderTRef],[_RecorderRRef])
CREATE NONCLUSTERED INDEX [IDX_AE_2_AccumRg58811] ON [dbo].[_AccumRg58811] ([_Active],[_Fld58812RRef],[_Fld58813RRef],[_Fld58814RRef],[_Fld58815RRef],[_Fld58816RRef],[_Fld58817RRef],[_Fld1979],[_Period]) INCLUDE ([_RecorderTRef],[_RecorderRRef],[_RecordKind],[_Fld58818RRef],[_Fld58820],[_Fld58821],[_Fld58822],[_Fld58823],[_Fld58824])
CREATE NONCLUSTERED INDEX [IDX_AE_3_AccumRg58981] ON [dbo].[_AccumRg58981] ([_Active],[_Fld58982RRef],[_Fld58983RRef],[_Fld58984RRef],[_Fld58985RRef],[_Fld58986RRef],[_Fld58987RRef],[_Fld1979],[_Period]) INCLUDE ([_RecorderTRef],[_RecorderRRef],[_RecordKind],[_Fld58988RRef],[_Fld58989RRef],[_Fld58990])
CREATE NONCLUSTERED INDEX [IDX_AE_4_AccumRg58811] ON [dbo].[_AccumRg58811] ([_Active],[_Fld1979],[_Period]) INCLUDE ([_RecorderTRef],[_RecorderRRef],[_RecordKind],[_Fld58812RRef],[_Fld58813RRef],[_Fld58814RRef],[_Fld58815RRef],[_Fld58816RRef],[_Fld58817RRef],[_Fld58818RRef],[_Fld58820])
 
GO

 -- _AccumRg52256
 -- –егистрЌакоплени€.ќбеспечение«аказов
 
CREATE NONCLUSTERED INDEX [IDX_AE_1_AccumRg52256] ON [dbo].[_AccumRg52256] ([_Active],[_RecordKind],[_Fld52257RRef],[_Fld52258RRef],[_Fld52259RRef],[_Fld52260RRef],[_Fld1979],[_Fld52261]) INCLUDE ([_RecorderTRef],[_RecorderRRef])
CREATE NONCLUSTERED INDEX [IDX_AE_2_AccumRg52256] ON [dbo].[_AccumRg52256] ([_Active],[_RecordKind],[_Fld1979],[_Fld52261]) INCLUDE ([_RecorderTRef],[_RecorderRRef],[_Fld52257RRef],[_Fld52258RRef],[_Fld52259RRef],[_Fld52260RRef])

 
 -- _Document1073
 -- ƒокумент.—писаниеЅезналичныхƒенежных—редств
CREATE NONCLUSTERED INDEX [IDX_AE_1_Document1073] ON [dbo].[_Document1073] ([_IDRRef])
CREATE NONCLUSTERED INDEX [IDX_AE_2_Document1073] ON [dbo].[_Document1073] ([_Posted],[_Fld37441RRef],[_Fld37442RRef],[_Fld1979])
CREATE NONCLUSTERED INDEX [IDX_AE_3_Document1073] ON [dbo].[_Document1073] ([_Posted],[_Fld37441RRef],[_Fld37442RRef],[_Fld37476],[_Fld1979])

GO

 -- _Document1006
 -- ƒокумент.ѕриобретение“оваров”слуг
CREATE NONCLUSTERED INDEX [IDX_AE_1_Document1006] ON [dbo].[_Document1006] ([_Fld79330_TYPE],[_Fld79330_RTRef],[_Fld79330_RRRef],[_Fld1979],[_IDRRef])
CREATE NONCLUSTERED INDEX [IDX_AE_2_Document1006] ON [dbo].[_Document1006] ([_Marked],[_Fld34039RRef],[_Fld34089RRef],[_Fld34043RRef],[_Fld1979],[_IDRRef]) INCLUDE ([_Date_Time],[_Fld34065RRef])
CREATE NONCLUSTERED INDEX [IDX_AE_3_Document1006] ON [dbo].[_Document1006] ([_Marked],[_Fld34090RRef],[_Fld34043RRef],[_Fld1979],[_IDRRef]) INCLUDE ([_Date_Time],[_Fld34091RRef])
CREATE NONCLUSTERED INDEX [IDX_AE_4_Document1006] ON [dbo].[_Document1006] ([_Marked],[_Fld34090RRef],[_Fld34043RRef],[_Fld1979],[_IDRRef]) INCLUDE ([_Date_Time],[_Fld34103RRef])

GO

 -- _Document1047
 -- ƒокумент.–еализаци€“оваров”слуг
CREATE NONCLUSTERED INDEX [IDX_AE_1_Document1047] ON [dbo].[_Document1047] ([_Marked],[_Fld36472RRef],[_Fld36498RRef],[_Fld1979],[_IDRRef]) INCLUDE ([_Date_Time],[_Fld36512RRef])
CREATE NONCLUSTERED INDEX [IDX_AE_2_Document1047] ON [dbo].[_Document1047] ([_Fld36472RRef],[_Fld1979],[_Date_Time]) INCLUDE ([_IDRRef])
CREATE NONCLUSTERED INDEX [IDX_AE_3_Document1047] ON [dbo].[_Document1047] ([_Posted],[_Fld36495RRef],[_Fld1979]) INCLUDE ([_IDRRef],[_Date_Time],[_Fld36472RRef],[_Fld36473RRef],[_Fld36478RRef])
CREATE NONCLUSTERED INDEX [IDX_AE_4_Document1047] ON [dbo].[_Document1047] ([_Posted],[_Fld36495RRef],[_Fld1979]) INCLUDE ([_IDRRef],[_Date_Time],[_Fld36473RRef])

GO

 -- _Document751_VT19238
 -- ƒокумент.јпкѕутевойЋистјвтотранспорта “„ «адание¬одителю
CREATE NONCLUSTERED INDEX [IDX_AE_1_Document751_VT19238] ON [dbo].[_Document751_VT19238] ([_Fld1979],[_Fld59671RRef])

GO

-- _Document974
-- ƒокумент.ѕеремещение“оваров
CREATE NONCLUSTERED INDEX [IDX_AE_1_Document974] ON [dbo].[_Document974] ([_Marked],[_Fld32545RRef],[_Fld1979],[_IDRRef]) INCLUDE ([_Date_Time],[_Fld32538RRef],[_Fld32548RRef])

GO

 -- _AccumRg53306
 -- –егистрЌакоплени€.–асчеты—ѕоставщиками
CREATE NONCLUSTERED INDEX [IDX_AE_1_AccumRg53306] ON [dbo].[_AccumRg53306] ([_Active],[_Fld53308_TYPE],[_Fld53308_RTRef],[_Fld53308_RRRef],[_Fld1979])

GO

-- _AccumRg53257
-- –егистрЌакоплени€.–асчеты— лиентами
CREATE NONCLUSTERED INDEX [IDX_AE_1_AccumRg53257] ON [dbo].[_AccumRg53257] ([_Active],[_Fld53259_TYPE],[_Fld53259_RTRef],[_Fld53259_RRRef],[_Fld1979])

GO

-- _InfoRg43201
-- –егистр—ведений.¬ерсииќбъектов
CREATE NONCLUSTERED INDEX [IDX_AE_1_InfoRg43201] ON [dbo].[_InfoRg43201] ([_Fld43210],[_Fld1979],[_Fld43209RRef])
CREATE NONCLUSTERED INDEX [IDX_AE_2_InfoRg43201] ON [dbo].[_InfoRg43201] ([_Fld43206_TYPE],[_Fld43210],[_Fld1979],[_Fld43209RRef]) INCLUDE ([_Fld43206_RTRef],[_Fld43206_RRRef])
CREATE NONCLUSTERED INDEX [IDX_AE_3_InfoRg43201] ON [dbo].[_InfoRg43201] ([_Fld43206_TYPE],[_Fld43210],[_Fld1979],[_Fld43207],[_Fld43209RRef]) INCLUDE ([_Fld43202_TYPE],[_Fld43202_RTRef],[_Fld43202_RRRef],[_Fld43203],[_Fld43206_RTRef],[_Fld43206_RRRef])
CREATE NONCLUSTERED INDEX [IDX_AE_4_InfoRg43201] ON [dbo].[_InfoRg43201] ([_Fld43206_TYPE],[_Fld43210],[_Fld1979],[_Fld43209RRef]) INCLUDE ([_Fld43202_TYPE],[_Fld43202_RTRef],[_Fld43202_RRRef],[_Fld43203],[_Fld43206_RTRef],[_Fld43206_RRRef],[_Fld43207])

GO

-- _AccumRg53456
-- –егистрЌакоплени€.—ебестоимость“оваров
CREATE NONCLUSTERED INDEX [IDX_AE_1_AccumRg53456] ON [dbo].[_AccumRg53456] ([_RecordKind],[_Fld53460RRef],[_Fld66624_TYPE],[_Fld66624_RTRef],[_Fld66624_RRRef],[_Fld1979]) INCLUDE ([_Period],[_RecorderTRef],[_RecorderRRef],[_Fld53457RRef])
CREATE NONCLUSTERED INDEX [IDX_AE_2_AccumRg53456] ON [dbo].[_AccumRg53456] ([_RecordKind],[_Fld53460RRef],[_Fld1979]) INCLUDE ([_Period],[_RecorderTRef],[_RecorderRRef],[_Fld53457RRef],[_Fld66624_TYPE],[_Fld66624_RTRef],[_Fld66624_RRRef])
CREATE NONCLUSTERED INDEX [IDX_AE_3_AccumRg53456] ON [dbo].[_AccumRg53456] ([_Active],[_RecordKind],[_Fld53458RRef],[_Fld53460RRef],[_Fld1979],[_Period]) INCLUDE ([_RecorderTRef],[_RecorderRRef],[_LineNo],[_Fld53457RRef],[_Fld53459RRef],[_Fld53461],[_Fld53462])
CREATE NONCLUSTERED INDEX [IDX_AE_4_AccumRg53456] ON [dbo].[_AccumRg53456] ([_RecordKind],[_Fld53469RRef],[_Fld1979],[_Period]) INCLUDE ([_Fld53457RRef],[_Fld53460RRef],[_Fld53461])

GO

--
-- –егистр—ведений.“аблицы√руппƒоступа
CREATE NONCLUSTERED INDEX [IDX_AE_1_InfoRg48431] ON [dbo].[_InfoRg48431] ([_Fld48433RRef],[_Fld1979]) INCLUDE ([_Fld48432RRef],[_Fld48434],[_Fld48435_TYPE],[_Fld48435_RTRef],[_Fld48435_RRRef])

GO

-- –егистр—ведений.јпкј–ћ–асход√—ћќтраженный¬–егл”чете
CREATE NONCLUSTERED INDEX [IDX_AE_1_InfoRg42975] ON [dbo].[_InfoRg42975] ([_Fld42982_TYPE],[_Fld42982_RTRef],[_Fld42982_RRRef],[_Fld1979])

GO

-- –егистр—ведений.зрн–азмещениеЌакладных¬ арточкахјнализа
CREATE NONCLUSTERED INDEX [IDX_AE_1_InfoRg58709] ON [dbo].[_InfoRg58709] ([_Fld58711RRef],[_Fld1979]) INCLUDE ([_Fld58710RRef])
CREATE NONCLUSTERED INDEX [IDX_AE_2_InfoRg58709] ON [dbo].[_InfoRg58709] ([_Fld58711RRef],[_Fld1979])

GO

-- –егистрЌакоплени€.–асчеты— лиентамиѕоƒокументам
CREATE NONCLUSTERED INDEX [IDX_AE_1_AccumRg53282] ON [dbo].[_AccumRg53282] ([_Fld53285_TYPE],[_Fld53285_RTRef],[_Fld53285_RRRef],[_Fld1979]) INCLUDE ([_Period],[_RecorderTRef],[_RecorderRRef])
CREATE NONCLUSTERED INDEX [IDX_AE_2_AccumRg53282] ON [dbo].[_AccumRg53282] ([_Fld53285_TYPE],[_Fld53285_RTRef],[_Fld53285_RRRef],[_Fld1979],[_Period]) INCLUDE ([_RecorderTRef],[_RecorderRRef],[_RecordKind],[_Fld53291],[_Fld53294])

GO

-- —правочник.—клады
CREATE NONCLUSTERED INDEX [IDX_AE_1_Reference533] ON [dbo].[_Reference533] ([_Fld13177],[_Fld1979])

GO

-- –егистрЌакоплени€.ѕартииѕрочих–асходов
CREATE NONCLUSTERED INDEX [IDX_AE_1_AccumRg52526] ON [dbo].[_AccumRg52526] ([_RecorderTRef],[_Active],[_Fld1979]) INCLUDE ([_RecorderRRef],[_LineNo])
CREATE NONCLUSTERED INDEX [IDX_AE_2_AccumRg52526] ON [dbo].[_AccumRg52526] ([_Fld1979],[_Fld52534]) INCLUDE ([_Period],[_RecorderTRef],[_RecorderRRef],[_RecordKind],[_Fld52527RRef],[_Fld52528RRef],[_Fld66532RRef])
CREATE NONCLUSTERED INDEX [IDX_AE_3_AccumRg52526] ON [dbo].[_AccumRg52526] ([_RecorderTRef],[_RecorderRRef],[_Active],[_RecordKind],[_Fld1979]) INCLUDE ([_Period],[_Fld52527RRef],[_Fld52528RRef],[_Fld52529_TYPE],[_Fld52529_RTRef],[_Fld52529_RRRef],[_Fld52530_TYPE],[_Fld52530_RTRef],[_Fld52530_RRRef],[_Fld66531_TYPE],[_Fld66531_RTRef],[_Fld66531_RRRef],[_Fld52531_TYPE],[_Fld52531_RTRef],[_Fld52531_RRRef],[_Fld52532RRef],[_Fld66532RRef],[_Fld52533RRef],[_Fld66533RRef],[_Fld52537],[_Fld80405],[_Fld52540RRef],[_Fld52542RRef],[_Fld66534_TYPE],[_Fld66534_RTRef],[_Fld66534_RRRef])

GO

-- –егистрЌакоплени€.ƒенежные—редстваЅезналичные
CREATE NONCLUSTERED INDEX [IDX_AE_1_AccumRg51445] ON [dbo].[_AccumRg51445] ([_Fld51458_TYPE],[_Fld51458_RTRef],[_Fld51458_RRRef],[_Fld1979]) INCLUDE ([_Period])
CREATE NONCLUSTERED INDEX [IDX_AE_2_AccumRg51445] ON [dbo].[_AccumRg51445] ([_Fld51458_TYPE],[_Fld1979]) INCLUDE ([_Period],[_Fld51458_RTRef],[_Fld51458_RRRef])

GO

-- –егистрЌакоплени€.–асчеты—ѕоставщикамиѕоƒокументам
CREATE NONCLUSTERED INDEX [IDX_AE_1_AccumRg53328] ON [dbo].[_AccumRg53328] ([_Fld53331_TYPE],[_Fld53331_RTRef],[_Fld53331_RRRef],[_Fld1979]) INCLUDE ([_Period],[_RecorderTRef],[_RecorderRRef])
CREATE NONCLUSTERED INDEX [IDX_AE_2_AccumRg53328] ON [dbo].[_AccumRg53328] ([_Fld53331_TYPE],[_Fld53331_RTRef],[_Fld53331_RRRef],[_Fld1979],[_Period]) INCLUDE ([_RecorderTRef],[_RecorderRRef],[_RecordKind],[_Fld53337],[_Fld53340])
CREATE NONCLUSTERED INDEX [IDX_AE_3_AccumRg53328] ON [dbo].[_AccumRg53328] ([_RecorderTRef],[_Fld1979]) INCLUDE ([_RecorderRRef],[_Fld53329RRef],[_Fld53330_TYPE],[_Fld53330_RTRef],[_Fld53330_RRRef],[_Fld53336],[_Fld53337],[_Fld53338],[_Fld53339],[_Fld53340],[_Fld53341],[_Fld53342],[_Fld53345RRef])


GO

-- –егистрЌакоплени€.зрнѕроизводство омбикорма –аспределению
CREATE NONCLUSTERED INDEX [IDX_AE_1_AccumRg58993] ON [dbo].[_AccumRg58993] ([_RecorderTRef],[_Active],[_Fld58995RRef],[_Fld59713RRef],[_Fld1979]) INCLUDE ([_RecorderRRef],[_LineNo],[_RecordKind],[_Fld59714RRef],[_Fld59000])
CREATE NONCLUSTERED INDEX [IDX_AE_2_AccumRg58993] ON [dbo].[_AccumRg58993] ([_RecorderTRef],[_Active],[_Fld59713RRef],[_Fld1979]) INCLUDE ([_RecorderRRef],[_LineNo],[_RecordKind],[_Fld58995RRef],[_Fld59714RRef],[_Fld59000])

GO

-- ƒокумент.зрн арточкајнализа«ерна
CREATE NONCLUSTERED INDEX [IDX_AE_1_Document57827] ON [dbo].[_Document57827] ([_Fld58191RRef],[_Fld58200RRef],[_Fld1979],[_Date_Time]) INCLUDE ([_IDRRef],[_Marked],[_Number],[_Posted],[_Fld58190RRef],[_Fld58192RRef],[_Fld58193RRef],[_Fld58194RRef],[_Fld58197RRef],[_Fld58199RRef],[_Fld58201RRef],[_Fld58203RRef],[_Fld58204_TYPE],[_Fld58204_RTRef],[_Fld58204_RRRef],[_Fld58206RRef],[_Fld58208RRef],[_Fld58209],[_Fld58212],[_Fld58227],[_Fld58228],[_Fld58229RRef],[_Fld58230],[_Fld58231RRef],[_Fld58232RRef],[_Fld59511_TYPE],[_Fld59511_S],[_Fld59511_RRRef],[_Fld59512_TYPE],[_Fld59512_S],[_Fld59512_RRRef],[_Fld59513],[_Fld59514RRef],[_Fld59515_TYPE],[_Fld59515_RTRef],[_Fld59515_RRRef],[_Fld59516],[_Fld59517])
CREATE NONCLUSTERED INDEX [IDX_AE_2_Document57827] ON [dbo].[_Document57827] ([_Fld58191RRef],[_Fld1979],[_Date_Time]) INCLUDE ([_IDRRef],[_Marked],[_Number],[_Posted],[_Fld58190RRef],[_Fld58192RRef],[_Fld58193RRef],[_Fld58194RRef],[_Fld58197RRef],[_Fld58199RRef],[_Fld58200RRef],[_Fld58201RRef],[_Fld58203RRef],[_Fld58204_TYPE],[_Fld58204_RTRef],[_Fld58204_RRRef],[_Fld58206RRef],[_Fld58208RRef],[_Fld58209],[_Fld58212],[_Fld58227],[_Fld58228],[_Fld58229RRef],[_Fld58230],[_Fld58231RRef],[_Fld58232RRef],[_Fld59511_TYPE],[_Fld59511_S],[_Fld59511_RRRef],[_Fld59512_TYPE],[_Fld59512_S],[_Fld59512_RRRef],[_Fld59513],[_Fld59514RRef],[_Fld59515_TYPE],[_Fld59515_RTRef],[_Fld59515_RRRef],[_Fld59516],[_Fld59517])
CREATE NONCLUSTERED INDEX [IDX_AE_3_Document57827] ON [dbo].[_Document57827] ([_Fld58191RRef],[_Fld58200RRef],[_Fld1979],[_Date_Time]) INCLUDE ([_IDRRef],[_Marked],[_Number],[_Posted],[_Fld58190RRef],[_Fld58192RRef],[_Fld58194RRef],[_Fld58197RRef],[_Fld58199RRef],[_Fld58201RRef],[_Fld58203RRef],[_Fld58204_TYPE],[_Fld58204_RTRef],[_Fld58204_RRRef],[_Fld58206RRef],[_Fld58208RRef],[_Fld58209],[_Fld58212],[_Fld58227],[_Fld58228],[_Fld58229RRef],[_Fld58230],[_Fld58231RRef],[_Fld58232RRef],[_Fld59511_TYPE],[_Fld59511_S],[_Fld59511_RRRef],[_Fld59512_TYPE],[_Fld59512_S],[_Fld59512_RRRef],[_Fld59513],[_Fld59514RRef],[_Fld59515_TYPE],[_Fld59515_RTRef],[_Fld59515_RRRef],[_Fld59516],[_Fld59517])
CREATE NONCLUSTERED INDEX [IDX_AE_4_Document57827] ON [dbo].[_Document57827] ([_Fld58191RRef],[_Fld58201RRef],[_Fld1979],[_Date_Time]) INCLUDE ([_IDRRef],[_Marked],[_Number],[_Posted],[_Fld58190RRef],[_Fld58192RRef],[_Fld58193RRef],[_Fld58194RRef],[_Fld58197RRef],[_Fld58199RRef],[_Fld58200RRef],[_Fld58203RRef],[_Fld58204_TYPE],[_Fld58204_RTRef],[_Fld58204_RRRef],[_Fld58206RRef],[_Fld58208RRef],[_Fld58209],[_Fld58212],[_Fld58227],[_Fld58228],[_Fld58229RRef],[_Fld58230],[_Fld58231RRef],[_Fld58232RRef],[_Fld59511_TYPE],[_Fld59511_S],[_Fld59511_RRRef],[_Fld59512_TYPE],[_Fld59512_S],[_Fld59512_RRRef],[_Fld59513],[_Fld59514RRef],[_Fld59515_TYPE],[_Fld59515_RTRef],[_Fld59515_RRRef],[_Fld59516],[_Fld59517])
CREATE NONCLUSTERED INDEX [IDX_AE_5_Document57827] ON [dbo].[_Document57827] ([_Fld58190RRef],[_Fld58191RRef],[_Fld1979],[_Date_Time]) INCLUDE ([_IDRRef],[_Marked],[_Number],[_Posted],[_Fld58192RRef],[_Fld58193RRef],[_Fld58194RRef],[_Fld58197RRef],[_Fld58199RRef],[_Fld58200RRef],[_Fld58201RRef],[_Fld58203RRef],[_Fld58204_TYPE],[_Fld58204_RTRef],[_Fld58204_RRRef],[_Fld58206RRef],[_Fld58208RRef],[_Fld58209],[_Fld58212],[_Fld58227],[_Fld58228],[_Fld58229RRef],[_Fld58230],[_Fld58231RRef],[_Fld58232RRef],[_Fld59511_TYPE],[_Fld59511_S],[_Fld59511_RRRef],[_Fld59512_TYPE],[_Fld59512_S],[_Fld59512_RRRef],[_Fld59513],[_Fld59514RRef],[_Fld59515_TYPE],[_Fld59515_RTRef],[_Fld59515_RRRef],[_Fld59516],[_Fld59517])
CREATE NONCLUSTERED INDEX [IDX_AE_6_Document57827] ON [dbo].[_Document57827] ([_Fld58191RRef],[_Fld1979],[_Date_Time]) INCLUDE ([_IDRRef],[_Marked],[_Number],[_Posted],[_Fld58190RRef],[_Fld58192RRef],[_Fld58194RRef],[_Fld58197RRef],[_Fld58199RRef],[_Fld58200RRef],[_Fld58201RRef],[_Fld58203RRef],[_Fld58204_TYPE],[_Fld58204_RTRef],[_Fld58204_RRRef],[_Fld58206RRef],[_Fld58208RRef],[_Fld58209],[_Fld58212],[_Fld58227],[_Fld58228],[_Fld58229RRef],[_Fld58230],[_Fld58231RRef],[_Fld58232RRef],[_Fld59511_TYPE],[_Fld59511_S],[_Fld59511_RRRef],[_Fld59512_TYPE],[_Fld59512_S],[_Fld59512_RRRef],[_Fld59513],[_Fld59514RRef],[_Fld59515_TYPE],[_Fld59515_RTRef],[_Fld59515_RRRef],[_Fld59516],[_Fld59517])

GO

-- ƒокумент.«а€вкаЌа–асходованиеƒенежных—редств
CREATE NONCLUSTERED INDEX [IDX_AE_1_Document841] ON [dbo].[_Document841] ([_Fld24854RRef],[_Fld1979],[_Date_Time],[_Fld24837RRef]) INCLUDE ([_IDRRef],[_Marked],[_Number],[_Posted],[_Fld24836RRef],[_Fld24838],[_Fld24839RRef],[_Fld24846],[_Fld24847RRef],[_Fld24849RRef],[_Fld24850RRef],[_Fld24875RRef],[_Fld65146RRef],[_Fld78675],[_Fld78676],[_Fld78677])
CREATE NONCLUSTERED INDEX [IDX_AE_2_Document841] ON [dbo].[_Document841] ([_Fld24854RRef],[_Fld1979],[_Fld24837RRef],[_Fld24846]) INCLUDE ([_IDRRef],[_Marked],[_Date_Time],[_Number],[_Posted],[_Fld24836RRef],[_Fld24838],[_Fld24839RRef],[_Fld24847RRef],[_Fld24849RRef],[_Fld24850RRef],[_Fld24875RRef],[_Fld65146RRef],[_Fld78675],[_Fld78676],[_Fld78677])
CREATE NONCLUSTERED INDEX [IDX_AE_3_Document841] ON [dbo].[_Document841] ([_Fld1979],[_Date_Time],[_Fld24837RRef]) INCLUDE ([_IDRRef],[_Marked],[_Number],[_Posted],[_Fld24836RRef],[_Fld24838],[_Fld24839RRef],[_Fld24846],[_Fld24847RRef],[_Fld24849RRef],[_Fld24850RRef],[_Fld24854RRef],[_Fld78675],[_Fld78676])
CREATE NONCLUSTERED INDEX [IDX_AE_4_Document841] ON [dbo].[_Document841] ([_Marked],[_Fld1979],[_Fld24836RRef],[_Fld24837RRef],[_Fld24846]) INCLUDE ([_IDRRef],[_Date_Time],[_Number],[_Posted],[_Fld24835RRef],[_Fld24838],[_Fld24839RRef],[_Fld24847RRef],[_Fld24849RRef],[_Fld24850RRef],[_Fld24853RRef],[_Fld24854RRef],[_Fld24862RRef],[_Fld24875RRef],[_Fld65146RRef],[_Fld78675],[_Fld78676],[_Fld78677])

GO

-- –егистр—ведений.∆урнал”чета—четов‘актур
CREATE NONCLUSTERED INDEX [IDX_AE_1_InfoRg44116] ON [dbo].[_InfoRg44116] ([_Fld44119_TYPE],[_Fld44119_RTRef],[_Fld44119_RRRef],[_Fld1979])
CREATE NONCLUSTERED INDEX [IDX_AE_2_InfoRg44116] ON [dbo].[_InfoRg44116] ([_Fld44119_TYPE],[_Fld44119_RTRef],[_Fld44119_RRRef],[_Fld1979]) INCLUDE ([_Fld44134],[_Fld44135])

GO

-- –егистр—ведений.—осто€ни€»–еквизитыƒоставки
CREATE NONCLUSTERED INDEX [IDX_AE_1_InfoRg47932] ON [dbo].[_InfoRg47932] ([_Fld47935_TYPE],[_Fld47935_S],[_Fld47935_RTRef],[_Fld47935_RRRef],[_Fld1979],[_Fld47936RRef]) INCLUDE ([_Fld47947])
CREATE NONCLUSTERED INDEX [IDX_AE_2_InfoRg47932] ON [dbo].[_InfoRg47932] ([_Fld1979],[_Fld47936RRef]) INCLUDE ([_Fld47947])

GO

-- –егистр—ведений.—уммыƒокументов¬¬алюте–егл
CREATE NONCLUSTERED INDEX [IDX_AE_1_InfoRg48367] ON [dbo].[_InfoRg48367] ([_Fld48375RRef],[_Fld1979]) INCLUDE ([_RecorderTRef],[_RecorderRRef],[_Fld48373RRef],[_Fld48376RRef])
CREATE NONCLUSTERED INDEX [IDX_AE_2_InfoRg48367] ON [dbo].[_InfoRg48367] ([_Fld48375RRef],[_Fld1979]) INCLUDE ([_RecorderTRef],[_RecorderRRef],[_Fld48369],[_Fld48370],[_Fld48371],[_Fld48372],[_Fld80204],[_Fld80205],[_Fld48373RRef],[_Fld48376RRef])

GO

-- –егистр—ведений.зрн–езультатыЌаблюдений
CREATE NONCLUSTERED INDEX [IDX_AE_1_InfoRg58715] ON [dbo].[_InfoRg58715] ([_Fld58716_TYPE],[_Fld58717RRef],[_Fld1979],[_Fld58716_RTRef]) INCLUDE ([_RecorderTRef],[_RecorderRRef],[_Fld58718_TYPE],[_Fld58718_L],[_Fld58718_N],[_Fld58718_T],[_Fld58718_S],[_Fld58719_TYPE],[_Fld58719_L],[_Fld58719_N],[_Fld58719_T],[_Fld58719_S],[_Fld69074])
CREATE NONCLUSTERED INDEX [IDX_AE_2_InfoRg58715] ON [dbo].[_InfoRg58715] ([_Fld58716_TYPE],[_Fld58717RRef],[_Fld1979],[_Fld58716_RTRef]) INCLUDE ([_RecorderTRef],[_RecorderRRef],[_Fld58718_TYPE],[_Fld58718_L],[_Fld58718_N],[_Fld58718_T],[_Fld58718_S],[_Fld69074])

GO

-- —правочник.¬идыЌоменклатуры.“аблична€„асть.ѕолитики”чета—ерий
CREATE NONCLUSTERED INDEX [IDX_AE_1_Reference177_VT4263] ON [dbo].[_Reference177_VT4263] ([_Fld1979],[_Fld4265_TYPE],[_Fld4265_RTRef],[_Fld4265_RRRef]) INCLUDE ([_Fld4266RRef])

GO

-- —правочник. лючијналитики”четаЌоменклатуры
CREATE NONCLUSTERED INDEX [IDX_AE_1_Reference303] ON [dbo].[_Reference303] ([_Fld7090RRef],[_Fld7091RRef],[_Fld7093_TYPE],[_Fld7093_RTRef],[_Fld7093_RRRef],[_Fld1979]) INCLUDE ([_IDRRef])
CREATE NONCLUSTERED INDEX [IDX_AE_2_Reference303] ON [dbo].[_Reference303] ([_Fld7093_TYPE],[_Fld7093_RTRef],[_Fld7093_RRRef],[_Fld1979]) INCLUDE ([_IDRRef],[_Fld7090RRef],[_Fld7091RRef],[_Fld64691RRef])
