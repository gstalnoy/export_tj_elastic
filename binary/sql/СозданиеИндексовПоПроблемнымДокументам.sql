 -- Документ.ПриобретениеТоваровУслуг
CREATE NONCLUSTERED INDEX [IDX_AE_1_Document1006] ON [dbo].[_Document1006] ([_Fld79330_TYPE],[_Fld79330_RTRef],[_Fld79330_RRRef],[_Fld1979],[_IDRRef])
CREATE NONCLUSTERED INDEX [IDX_AE_2_Document1006] ON [dbo].[_Document1006] ([_Marked],[_Fld34039RRef],[_Fld34089RRef],[_Fld34043RRef],[_Fld1979],[_IDRRef]) INCLUDE ([_Date_Time],[_Fld34065RRef])
CREATE NONCLUSTERED INDEX [IDX_AE_3_Document1006] ON [dbo].[_Document1006] ([_Marked],[_Fld34090RRef],[_Fld34043RRef],[_Fld1979],[_IDRRef]) INCLUDE ([_Date_Time],[_Fld34091RRef])
CREATE NONCLUSTERED INDEX [IDX_AE_4_Document1006] ON [dbo].[_Document1006] ([_Marked],[_Fld34090RRef],[_Fld34043RRef],[_Fld1979],[_IDRRef]) INCLUDE ([_Date_Time],[_Fld34103RRef])

-- РегистрНакопления.СебестоимостьТоваров
CREATE NONCLUSTERED INDEX [IDX_AE_1_AccumRg53456] ON [dbo].[_AccumRg53456] ([_RecordKind],[_Fld53460RRef],[_Fld66624_TYPE],[_Fld66624_RTRef],[_Fld66624_RRRef],[_Fld1979]) INCLUDE ([_Period],[_RecorderTRef],[_RecorderRRef],[_Fld53457RRef])
CREATE NONCLUSTERED INDEX [IDX_AE_2_AccumRg53456] ON [dbo].[_AccumRg53456] ([_RecordKind],[_Fld53460RRef],[_Fld1979]) INCLUDE ([_Period],[_RecorderTRef],[_RecorderRRef],[_Fld53457RRef],[_Fld66624_TYPE],[_Fld66624_RTRef],[_Fld66624_RRRef])
CREATE NONCLUSTERED INDEX [IDX_AE_3_AccumRg53456] ON [dbo].[_AccumRg53456] ([_Active],[_RecordKind],[_Fld53458RRef],[_Fld53460RRef],[_Fld1979],[_Period]) INCLUDE ([_RecorderTRef],[_RecorderRRef],[_LineNo],[_Fld53457RRef],[_Fld53459RRef],[_Fld53461],[_Fld53462])
CREATE NONCLUSTERED INDEX [IDX_AE_4_AccumRg53456] ON [dbo].[_AccumRg53456] ([_RecordKind],[_Fld53469RRef],[_Fld1979],[_Period]) INCLUDE ([_Fld53457RRef],[_Fld53460RRef],[_Fld53461])

-- РегистрСведений.СуммыДокументовВВалютеРегл
CREATE NONCLUSTERED INDEX [IDX_AE_1_InfoRg48367] ON [dbo].[_InfoRg48367] ([_Fld48375RRef],[_Fld1979]) INCLUDE ([_RecorderTRef],[_RecorderRRef],[_Fld48373RRef],[_Fld48376RRef])
CREATE NONCLUSTERED INDEX [IDX_AE_2_InfoRg48367] ON [dbo].[_InfoRg48367] ([_Fld48375RRef],[_Fld1979]) INCLUDE ([_RecorderTRef],[_RecorderRRef],[_Fld48369],[_Fld48370],[_Fld48371],[_Fld48372],[_Fld80204],[_Fld80205],[_Fld48373RRef],[_Fld48376RRef])

-- РегистрНакопления.ПартииПрочихРасходов
CREATE NONCLUSTERED INDEX [IDX_AE_1_AccumRg52526] ON [dbo].[_AccumRg52526] ([_RecorderTRef],[_Active],[_Fld1979]) INCLUDE ([_RecorderRRef],[_LineNo])
CREATE NONCLUSTERED INDEX [IDX_AE_2_AccumRg52526] ON [dbo].[_AccumRg52526] ([_Fld1979],[_Fld52534]) INCLUDE ([_Period],[_RecorderTRef],[_RecorderRRef],[_RecordKind],[_Fld52527RRef],[_Fld52528RRef],[_Fld66532RRef])
CREATE NONCLUSTERED INDEX [IDX_AE_3_AccumRg52526] ON [dbo].[_AccumRg52526] ([_RecorderTRef],[_RecorderRRef],[_Active],[_RecordKind],[_Fld1979]) INCLUDE ([_Period],[_Fld52527RRef],[_Fld52528RRef],[_Fld52529_TYPE],[_Fld52529_RTRef],[_Fld52529_RRRef],[_Fld52530_TYPE],[_Fld52530_RTRef],[_Fld52530_RRRef],[_Fld66531_TYPE],[_Fld66531_RTRef],[_Fld66531_RRRef],[_Fld52531_TYPE],[_Fld52531_RTRef],[_Fld52531_RRRef],[_Fld52532RRef],[_Fld66532RRef],[_Fld52533RRef],[_Fld66533RRef],[_Fld52537],[_Fld80405],[_Fld52540RRef],[_Fld52542RRef],[_Fld66534_TYPE],[_Fld66534_RTRef],[_Fld66534_RRRef])

 -- РегистрНакопления.ОбеспечениеЗаказов
 
CREATE NONCLUSTERED INDEX [IDX_AE_1_AccumRg52256] ON [dbo].[_AccumRg52256] ([_Active],[_RecordKind],[_Fld52257RRef],[_Fld52258RRef],[_Fld52259RRef],[_Fld52260RRef],[_Fld1979],[_Fld52261]) INCLUDE ([_RecorderTRef],[_RecorderRRef])
CREATE NONCLUSTERED INDEX [IDX_AE_2_AccumRg52256] ON [dbo].[_AccumRg52256] ([_Active],[_RecordKind],[_Fld1979],[_Fld52261]) INCLUDE ([_RecorderTRef],[_RecorderRRef],[_Fld52257RRef],[_Fld52258RRef],[_Fld52259RRef],[_Fld52260RRef])

 -- РегистрНакопления.РасчетыСПоставщиками
CREATE NONCLUSTERED INDEX [IDX_AE_1_AccumRg53306] ON [dbo].[_AccumRg53306] ([_Active],[_Fld53308_TYPE],[_Fld53308_RTRef],[_Fld53308_RRRef],[_Fld1979])

-- РегистрНакопления.РасчетыСПоставщикамиПоДокументам
CREATE NONCLUSTERED INDEX [IDX_AE_1_AccumRg53328] ON [dbo].[_AccumRg53328] ([_Fld53331_TYPE],[_Fld53331_RTRef],[_Fld53331_RRRef],[_Fld1979]) INCLUDE ([_Period],[_RecorderTRef],[_RecorderRRef])
CREATE NONCLUSTERED INDEX [IDX_AE_2_AccumRg53328] ON [dbo].[_AccumRg53328] ([_Fld53331_TYPE],[_Fld53331_RTRef],[_Fld53331_RRRef],[_Fld1979],[_Period]) INCLUDE ([_RecorderTRef],[_RecorderRRef],[_RecordKind],[_Fld53337],[_Fld53340])
CREATE NONCLUSTERED INDEX [IDX_AE_3_AccumRg53328] ON [dbo].[_AccumRg53328] ([_RecorderTRef],[_Fld1979]) INCLUDE ([_RecorderRRef],[_Fld53329RRef],[_Fld53330_TYPE],[_Fld53330_RTRef],[_Fld53330_RRRef],[_Fld53336],[_Fld53337],[_Fld53338],[_Fld53339],[_Fld53340],[_Fld53341],[_Fld53342],[_Fld53345RRef])

/*---------------------------------------------------------------------------------------------------------------------------------------------*/

 -- Документ.РеализацияТоваровУслуг
CREATE NONCLUSTERED INDEX [IDX_AE_1_Document1047] ON [dbo].[_Document1047] ([_Marked],[_Fld36472RRef],[_Fld36498RRef],[_Fld1979],[_IDRRef]) INCLUDE ([_Date_Time],[_Fld36512RRef])
CREATE NONCLUSTERED INDEX [IDX_AE_2_Document1047] ON [dbo].[_Document1047] ([_Fld36472RRef],[_Fld1979],[_Date_Time]) INCLUDE ([_IDRRef])
CREATE NONCLUSTERED INDEX [IDX_AE_3_Document1047] ON [dbo].[_Document1047] ([_Posted],[_Fld36495RRef],[_Fld1979]) INCLUDE ([_IDRRef],[_Date_Time],[_Fld36472RRef],[_Fld36473RRef],[_Fld36478RRef])
CREATE NONCLUSTERED INDEX [IDX_AE_4_Document1047] ON [dbo].[_Document1047] ([_Posted],[_Fld36495RRef],[_Fld1979]) INCLUDE ([_IDRRef],[_Date_Time],[_Fld36473RRef])

-- РегистрНакопления.РасчетыСКлиентами
CREATE NONCLUSTERED INDEX [IDX_AE_1_AccumRg53257] ON [dbo].[_AccumRg53257] ([_Active],[_Fld53259_TYPE],[_Fld53259_RTRef],[_Fld53259_RRRef],[_Fld1979])

-- РегистрНакопления.РасчетыСКлиентамиПоДокументам
CREATE NONCLUSTERED INDEX [IDX_AE_1_AccumRg53282] ON [dbo].[_AccumRg53282] ([_Fld53285_TYPE],[_Fld53285_RTRef],[_Fld53285_RRRef],[_Fld1979]) INCLUDE ([_Period],[_RecorderTRef],[_RecorderRRef])
CREATE NONCLUSTERED INDEX [IDX_AE_2_AccumRg53282] ON [dbo].[_AccumRg53282] ([_Fld53285_TYPE],[_Fld53285_RTRef],[_Fld53285_RRRef],[_Fld1979],[_Period]) INCLUDE ([_RecorderTRef],[_RecorderRRef],[_RecordKind],[_Fld53291],[_Fld53294])

/*---------------------------------------------------------------------------------------------------------------------------------------------*/

 -- Документ.СписаниеБезналичныхДенежныхСредств
CREATE NONCLUSTERED INDEX [IDX_AE_1_Document1073] ON [dbo].[_Document1073] ([_IDRRef])
CREATE NONCLUSTERED INDEX [IDX_AE_2_Document1073] ON [dbo].[_Document1073] ([_Posted],[_Fld37441RRef],[_Fld37442RRef],[_Fld1979])
CREATE NONCLUSTERED INDEX [IDX_AE_3_Document1073] ON [dbo].[_Document1073] ([_Posted],[_Fld37441RRef],[_Fld37442RRef],[_Fld37476],[_Fld1979])

-- РегистрНакопления.ДенежныеСредстваБезналичные
CREATE NONCLUSTERED INDEX [IDX_AE_1_AccumRg51445] ON [dbo].[_AccumRg51445] ([_Fld51458_TYPE],[_Fld51458_RTRef],[_Fld51458_RRRef],[_Fld1979]) INCLUDE ([_Period])
CREATE NONCLUSTERED INDEX [IDX_AE_2_AccumRg51445] ON [dbo].[_AccumRg51445] ([_Fld51458_TYPE],[_Fld1979]) INCLUDE ([_Period],[_Fld51458_RTRef],[_Fld51458_RRRef])

/*---------------------------------------------------------------------------------------------------------------------------------------------*/
-- Документ.ПеремещениеТоваров
CREATE NONCLUSTERED INDEX [IDX_AE_1_Document974] ON [dbo].[_Document974] ([_Marked],[_Fld32545RRef],[_Fld1979],[_IDRRef]) INCLUDE ([_Date_Time],[_Fld32538RRef],[_Fld32548RRef])

/*---------------------------------------------------------------------------------------------------------------------------------------------*/
-- Документ.ЗаявкаНаРасходованиеДенежныхСредств
CREATE NONCLUSTERED INDEX [IDX_AE_1_Document841] ON [dbo].[_Document841] ([_Fld24854RRef],[_Fld1979],[_Date_Time],[_Fld24837RRef]) INCLUDE ([_IDRRef],[_Marked],[_Number],[_Posted],[_Fld24836RRef],[_Fld24838],[_Fld24839RRef],[_Fld24846],[_Fld24847RRef],[_Fld24849RRef],[_Fld24850RRef],[_Fld24875RRef],[_Fld65146RRef],[_Fld78675],[_Fld78676],[_Fld78677])
CREATE NONCLUSTERED INDEX [IDX_AE_2_Document841] ON [dbo].[_Document841] ([_Fld24854RRef],[_Fld1979],[_Fld24837RRef],[_Fld24846]) INCLUDE ([_IDRRef],[_Marked],[_Date_Time],[_Number],[_Posted],[_Fld24836RRef],[_Fld24838],[_Fld24839RRef],[_Fld24847RRef],[_Fld24849RRef],[_Fld24850RRef],[_Fld24875RRef],[_Fld65146RRef],[_Fld78675],[_Fld78676],[_Fld78677])
CREATE NONCLUSTERED INDEX [IDX_AE_3_Document841] ON [dbo].[_Document841] ([_Fld1979],[_Date_Time],[_Fld24837RRef]) INCLUDE ([_IDRRef],[_Marked],[_Number],[_Posted],[_Fld24836RRef],[_Fld24838],[_Fld24839RRef],[_Fld24846],[_Fld24847RRef],[_Fld24849RRef],[_Fld24850RRef],[_Fld24854RRef],[_Fld78675],[_Fld78676])
CREATE NONCLUSTERED INDEX [IDX_AE_4_Document841] ON [dbo].[_Document841] ([_Marked],[_Fld1979],[_Fld24836RRef],[_Fld24837RRef],[_Fld24846]) INCLUDE ([_IDRRef],[_Date_Time],[_Number],[_Posted],[_Fld24835RRef],[_Fld24838],[_Fld24839RRef],[_Fld24847RRef],[_Fld24849RRef],[_Fld24850RRef],[_Fld24853RRef],[_Fld24854RRef],[_Fld24862RRef],[_Fld24875RRef],[_Fld65146RRef],[_Fld78675],[_Fld78676],[_Fld78677])

/*---------------------------------------------------------------------------------------------------------------------------------------------*/
-- _InfoRg43201
-- РегистрСведений.ВерсииОбъектов
CREATE NONCLUSTERED INDEX [IDX_AE_1_InfoRg43201] ON [dbo].[_InfoRg43201] ([_Fld43210],[_Fld1979],[_Fld43209RRef])
CREATE NONCLUSTERED INDEX [IDX_AE_2_InfoRg43201] ON [dbo].[_InfoRg43201] ([_Fld43206_TYPE],[_Fld43210],[_Fld1979],[_Fld43209RRef]) INCLUDE ([_Fld43206_RTRef],[_Fld43206_RRRef])
CREATE NONCLUSTERED INDEX [IDX_AE_3_InfoRg43201] ON [dbo].[_InfoRg43201] ([_Fld43206_TYPE],[_Fld43210],[_Fld1979],[_Fld43207],[_Fld43209RRef]) INCLUDE ([_Fld43202_TYPE],[_Fld43202_RTRef],[_Fld43202_RRRef],[_Fld43203],[_Fld43206_RTRef],[_Fld43206_RRRef])
CREATE NONCLUSTERED INDEX [IDX_AE_4_InfoRg43201] ON [dbo].[_InfoRg43201] ([_Fld43206_TYPE],[_Fld43210],[_Fld1979],[_Fld43209RRef]) INCLUDE ([_Fld43202_TYPE],[_Fld43202_RTRef],[_Fld43202_RRRef],[_Fld43203],[_Fld43206_RTRef],[_Fld43206_RRRef],[_Fld43207])
