﻿
// Структура, содержащая значения реквизитов, прочитанные из информационной базы по ссылке на объект.
//
// Если необходимо зачитать реквизит независимо от прав текущего пользователя,
// то следует использовать предварительный переход в привилегированный режим.
//
// Параметры:
//  Ссылка    - ЛюбаяСсылка - объект, значения реквизитов которого необходимо получить.
//            - Строка      - полное имя предопределенного элемента, значения реквизитов которого необходимо получить.
//  Реквизиты - Строка - имена реквизитов, перечисленные через запятую, в формате
//                       требований к свойствам структуры.
//                       Например, "Код, Наименование, Родитель".
//            - Структура, ФиксированнаяСтруктура - в качестве ключа передается
//                       псевдоним поля для возвращаемой структуры с результатом, а в качестве
//                       значения (опционально) фактическое имя поля в таблице.
//                       Если ключ задан, а значение не определено, то имя поля берется из ключа.
//            - Массив, ФиксированныйМассив - имена реквизитов в формате требований
//                       к свойствам структуры.
//  ВыбратьРазрешенные - Булево - если Истина, то запрос к объекту выполняется с учетом прав пользователя, и в случае,
//                                    - если есть ограничение на уровне записей, то все реквизиты вернутся 
//                                      со значением Неопределено;
//                                    - если нет прав для работы с таблицей, то возникнет исключение.
//                              - если Ложь, то возникнет исключение при отсутствии прав на таблицу 
//                                или любой из реквизитов.
//
// Возвращаемое значение:
//  Структура - содержит имена (ключи) и значения затребованных реквизитов.
//            - если в параметр Реквизиты передана пустая строка, то возвращается пустая структура.
//            - если в параметр Ссылка передана пустая ссылка, то возвращается структура, 
//              соответствующая именам реквизитов со значениями Неопределено.
//            - если в параметр Ссылка передана ссылка несуществующего объекта (битая ссылка), 
//              то все реквизиты вернутся со значением Неопределено.
//
Функция ЗначенияРеквизитовОбъекта(Ссылка, Знач Реквизиты, ВыбратьРазрешенные = Ложь) Экспорт
	
	Попытка
		ПолноеИмяОбъектаМетаданных = Ссылка.Метаданные().ПолноеИмя(); 
	Исключение
		ВызватьИсключение НСтр("ru = 'Неверный первый параметр Ссылка: 
		                             |- Значение должно быть ссылкой или именем предопределенного элемента'");	
	КонецПопытки;
	
	// Разбор реквизитов, если второй параметр Строка.
	Если ТипЗнч(Реквизиты) = Тип("Строка") Тогда
		Если ПустаяСтрока(Реквизиты) Тогда
			Возврат Новый Структура;
		КонецЕсли;
		
		// Удаление пробелов.
		Реквизиты = СтрЗаменить(Реквизиты, " ", "");
		// Преобразование параметра в массив полей.
		Реквизиты = СтрРазделить(Реквизиты, ",");
	КонецЕсли;
	
	// Приведение реквизитов к единому формату.
	СтруктураПолей = Новый Структура;
	Если ТипЗнч(Реквизиты) = Тип("Структура")
		Или ТипЗнч(Реквизиты) = Тип("ФиксированнаяСтруктура") Тогда
		
		СтруктураПолей = Реквизиты;
		
	ИначеЕсли ТипЗнч(Реквизиты) = Тип("Массив")
		Или ТипЗнч(Реквизиты) = Тип("ФиксированныйМассив") Тогда
		
		Для Каждого Реквизит Из Реквизиты Цикл
			
			Попытка
				ПсевдонимПоля = СтрЗаменить(Реквизит, ".", "");
				СтруктураПолей.Вставить(ПсевдонимПоля, Реквизит);
			Исключение 
				// Если псевдоним не является ключом.
				// Не удалось распознать ошибку, проброс первичной ошибки.
				ВызватьИсключение;
			
			КонецПопытки;
		КонецЦикла;
	Иначе
		ВызватьИсключение СтроковыеФункцииКлиентСервер.ПодставитьПараметрыВСтроку(
			НСтр("ru = 'Неверный тип второго параметра Реквизиты: %1'"), Строка(ТипЗнч(Реквизиты)));
	КонецЕсли;
	
	// Подготовка результата (после выполнения запроса переопределится).
	Результат = Новый Структура;
	
	// Формирование текста запроса к выбираемым полям.
	ТекстЗапросаПолей = "";
	Для каждого КлючИЗначение Из СтруктураПолей Цикл
		
		ИмяПоля = ?(ЗначениеЗаполнено(КлючИЗначение.Значение),
						КлючИЗначение.Значение,
						КлючИЗначение.Ключ);
		ПсевдонимПоля = КлючИЗначение.Ключ;
		
		ТекстЗапросаПолей = 
			ТекстЗапросаПолей + ?(ПустаяСтрока(ТекстЗапросаПолей), "", ",") + "
			|	" + ИмяПоля + " КАК " + ПсевдонимПоля;
		
		
		// Предварительное добавление поля по псевдониму в возвращаемый результат.
		Результат.Вставить(ПсевдонимПоля);
		
	КонецЦикла;
	
	// Если предопределенного нет в ИБ.
	// - приведение результата к отсутствию объекта в ИБ или передаче пустой ссылки.
	Если Ссылка = Неопределено Тогда 
		Возврат Результат;
	КонецЕсли;
	
	ТекстЗапроса = 
		"ВЫБРАТЬ " + ?(ВыбратьРазрешенные, "РАЗРЕШЕННЫЕ", "") + "
		|" + ТекстЗапросаПолей + "
		|ИЗ
		|	" + ПолноеИмяОбъектаМетаданных + " КАК Таблица
		|ГДЕ
		|	Таблица.Ссылка = &Ссылка
		|";
	
	// Выполнение запроса.
	Запрос = Новый Запрос;
	Запрос.УстановитьПараметр("Ссылка", Ссылка);
	Запрос.Текст = ТекстЗапроса;
	
	Попытка
		Выборка = Запрос.Выполнить().Выбрать();
	Исключение
		
		// Если реквизиты были переданы строкой, то они уже конвертированы в массив.
		// Если реквизиты - массив, оставляем без изменений.
		// Если реквизиты - структура - конвертируем в массив.
		// В остальных случаях уже было бы выброшено исключение.
		Если Тип("Структура") = ТипЗнч(Реквизиты) Тогда
			Реквизиты = Новый Массив;
			Для каждого КлючИЗначение Из СтруктураПолей Цикл
				ИмяПоля = ?(ЗначениеЗаполнено(КлючИЗначение.Значение),
							КлючИЗначение.Значение,
							КлючИЗначение.Ключ);
				Реквизиты.Добавить(ИмяПоля);
			КонецЦикла;
		КонецЕсли;
		
		// Не удалось распознать ошибку, проброс первичной ошибки.
		ВызватьИсключение;
		
	КонецПопытки;
	
	// Заполнение реквизитов.
	Если Выборка.Следующий() Тогда
		ЗаполнитьЗначенияСвойств(Результат, Выборка);
	КонецЕсли;
	
	Возврат Результат;
	
КонецФункции

// Значение реквизита, прочитанного из информационной базы по ссылке на объект.
//
// Если необходимо зачитать реквизит независимо от прав текущего пользователя,
// то следует использовать предварительный переход в привилегированный режим.
//
// Параметры:
//  Ссылка    - ЛюбаяСсылка - объект, значения реквизитов которого необходимо получить.
//            - Строка      - полное имя предопределенного элемента, значения реквизитов которого необходимо получить.
//  ИмяРеквизита       - Строка - имя получаемого реквизита.
//  ВыбратьРазрешенные - Булево - если Истина, то запрос к объекту выполняется с учетом прав пользователя, и в случае,
//                                    - если есть ограничение на уровне записей, то возвращается Неопределено;
//                                    - если нет прав для работы с таблицей, то возникнет исключение.
//                              - если Ложь, то возникнет исключение при отсутствии прав на таблицу
//                                или любой из реквизитов.
//
// Возвращаемое значение:
//  Произвольный - зависит от типа значения прочитанного реквизита.
//               - если в параметр Ссылка передана пустая ссылка, то возвращается Неопределено.
//               - если в параметр Ссылка передана ссылка несуществующего объекта (битая ссылка), 
//                 то возвращается Неопределено.
//
Функция ЗначениеРеквизитаОбъекта(Ссылка, ИмяРеквизита, ВыбратьРазрешенные = Ложь) Экспорт
	
	Если ПустаяСтрока(ИмяРеквизита) Тогда 
		ВызватьИсключение НСтр("ru = 'Неверный второй параметр ИмяРеквизита: 
		                             |- Имя реквизита должно быть заполнено'");
	КонецЕсли;
	
	Результат = ЗначенияРеквизитовОбъекта(Ссылка, ИмяРеквизита, ВыбратьРазрешенные);
	Возврат Результат[СтрЗаменить(ИмяРеквизита, ".", "")];
	
КонецФункции 

// Значения реквизитов, прочитанные из информационной базы для нескольких объектов.
//
//  Если необходимо зачитать реквизит независимо от прав текущего пользователя,
//  то следует использовать предварительный переход в привилегированный режим.
//
// Параметры:
//  Ссылки - Массив - массив ссылок на объекты одного типа.
//                          Значения массива должны быть ссылками на объекты одного типа.
//                          если массив пуст, то результатом будет пустое соответствие.
//  Реквизиты - Строка - имена реквизитов перечисленные через запятую, в формате требований к свойствам
//                             структуры. Например, "Код, Наименование, Родитель".
//  ВыбратьРазрешенные - Булево - если Истина, то запрос к объектам выполняется с учетом прав пользователя, и в случае,
//                                    - если какой-либо объект будет исключен из выборки по правам, то этот объект
//                                      будет исключен и из результата;
//                              - если Ложь, то возникнет исключение при отсутствии прав на таблицу
//                                или любой из реквизитов.
//
// Возвращаемое значение:
//  Соответствие - список объектов и значений их реквизитов:
//   * Ключ - ЛюбаяСсылка - ссылка на объект;
//   * Значение - Структура - значения реквизитов:
//    ** Ключ - Строка - имя реквизита;
//    ** Значение - Произвольный - значение реквизита.
// 
Функция ЗначенияРеквизитовОбъектов(Ссылки, Знач Реквизиты, ВыбратьРазрешенные = Ложь) Экспорт
	
	Если ПустаяСтрока(Реквизиты) Тогда 
		ВызватьИсключение НСтр("ru = 'Неверный второй параметр Реквизиты: 
		                             |- Поле объекта должно быть указано'");
	КонецЕсли;
	
	Если СтрНайти(Реквизиты, ".") <> 0 Тогда 
		ВызватьИсключение НСтр("ru = 'Неверный второй параметр Реквизиты: 
		                             |- Обращение через точку не поддерживается'");
	КонецЕсли;
	
	ЗначенияРеквизитов = Новый Соответствие;
	Если Ссылки.Количество() = 0 Тогда
		Возврат ЗначенияРеквизитов;
	КонецЕсли;
	
	ПерваяСсылка = Ссылки[0];
	
	Попытка
		ПолноеИмяОбъектаМетаданных = ПерваяСсылка.Метаданные().ПолноеИмя();
	Исключение
		ВызватьИсключение НСтр("ru = 'Неверный первый параметр Ссылки: 
		                             |- Значения массива должны быть ссылками'");
	КонецПопытки;
	
	Запрос = Новый Запрос;
	Запрос.Текст =
		"ВЫБРАТЬ " + ?(ВыбратьРазрешенные, "РАЗРЕШЕННЫЕ", "") + "
		|	Ссылка КАК Ссылка, " + Реквизиты + "
		|ИЗ
		|	" + ПолноеИмяОбъектаМетаданных + " КАК Таблица
		|ГДЕ
		|	Таблица.Ссылка В (&Ссылки)";
	Запрос.УстановитьПараметр("Ссылки", Ссылки);
	
	Попытка
		Выборка = Запрос.Выполнить().Выбрать();
	Исключение
		
		// Удаление пробелов.
		Реквизиты = СтрЗаменить(Реквизиты, " ", "");
		// Преобразование параметра в массив полей.
		Реквизиты = СтрРазделить(Реквизиты, ",");
		
		// Не удалось распознать ошибку, проброс первичной ошибки.
		ВызватьИсключение;
		
	КонецПопытки;
	
	Пока Выборка.Следующий() Цикл
		Результат = Новый Структура(Реквизиты);
		ЗаполнитьЗначенияСвойств(Результат, Выборка);
		ЗначенияРеквизитов[Выборка.Ссылка] = Результат;
	КонецЦикла;
	
	Возврат ЗначенияРеквизитов;
	
КонецФункции

// Значения реквизита, прочитанного из информационной базы для нескольких объектов.
//
//  Если необходимо зачитать реквизит независимо от прав текущего пользователя,
//  то следует использовать предварительный переход в привилегированный режим.
//
// Параметры:
//  МассивСсылок       - Массив - массив ссылок на объекты одного типа.
//                                Значения массива должны быть ссылками на объекты одного типа.
//  ИмяРеквизита       - Строка - например, "Код".
//  ВыбратьРазрешенные - Булево - если Истина, то запрос к объектам выполняется с учетом прав пользователя, и в случае,
//                                    - если какой-либо объект будет исключен из выборки по правам, то этот объект
//                                      будет исключен и из результата;
//                              - если Ложь, то возникнет исключение при отсутствии прав на таблицу
//                                или любой из реквизитов.
//
// Возвращаемое значение:
//  Соответствие - Ключ - ссылка на объект, Значение - значение прочитанного реквизита.
//      * Ключ     - ссылка на объект, 
//      * Значение - значение прочитанного реквизита.
// 
Функция ЗначениеРеквизитаОбъектов(МассивСсылок, ИмяРеквизита, ВыбратьРазрешенные = Ложь) Экспорт
	
	Если ПустаяСтрока(ИмяРеквизита) Тогда 
		ВызватьИсключение НСтр("ru = 'Неверный второй параметр ИмяРеквизита: 
		                             |- Имя реквизита должно быть заполнено'");
	КонецЕсли;
	
	ЗначенияРеквизитов = ЗначенияРеквизитовОбъектов(МассивСсылок, ИмяРеквизита, ВыбратьРазрешенные);
	Для каждого Элемент Из ЗначенияРеквизитов Цикл
		ЗначенияРеквизитов[Элемент.Ключ] = Элемент.Значение[ИмяРеквизита];
	КонецЦикла;
		
	Возврат ЗначенияРеквизитов;
	
КонецФункции

Процедура ПриНачалеВыполненияРегламентногоЗадания(РегламентноеЗадание = Неопределено) Экспорт
	//пустая (для совместимости)	
КонецПроцедуры


// Возвращает ссылку на общий модуль или модуль менеджера по имени.
//
// Параметры:
//  Имя - Строка - имя общего модуля.
//
// Возвращаемое значение:
//  ОбщийМодуль, МодульМенеджераОбъекта - общий модуль.
//
// Пример:
//	Если ОбщегоНазначения.ПодсистемаСуществует("СтандартныеПодсистемы.ОбновлениеКонфигурации") Тогда
//		МодульОбновлениеКонфигурации = ОбщегоНазначения.ОбщийМодуль("ОбновлениеКонфигурации");
//		МодульОбновлениеКонфигурации.<Имя метода>();
//	КонецЕсли;
//
//	Если ОбщегоНазначения.ПодсистемаСуществует("СтандартныеПодсистемы.ПолнотекстовыйПоиск") Тогда
//		МодульПолнотекстовыйПоискСервер = ОбщегоНазначения.ОбщийМодуль("ПолнотекстовыйПоискСервер");
//		МодульПолнотекстовыйПоискСервер.<Имя метода>();
//	КонецЕсли;
//
Функция ОбщийМодуль(Имя) Экспорт
	
	Если Метаданные.ОбщиеМодули.Найти(Имя) <> Неопределено Тогда
		Модуль = Вычислить(Имя); // ВычислитьВБезопасномРежиме не требуется, т.к. проверка надежная.
	ИначеЕсли СтрЧислоВхождений(Имя, ".") = 1 Тогда
		Возврат СерверныйМодульМенеджера(Имя);
	Иначе
		Модуль = Неопределено;
	КонецЕсли;
	
	Если ТипЗнч(Модуль) <> Тип("ОбщийМодуль") Тогда
		ВызватьИсключение СтроковыеФункцииКлиентСервер.ПодставитьПараметрыВСтроку(НСтр("ru = 'Общий модуль ""%1"" не найден.'"), Имя);
	КонецЕсли;
	
	Возврат Модуль;
	
КонецФункции

// Возвращает серверный модуль менеджера по имени объекта.
Функция СерверныйМодульМенеджера(Имя)
	ОбъектНайден = Ложь;
	
	ЧастиИмени = СтрРазделить(Имя, ".");
	Если ЧастиИмени.Количество() = 2 Тогда
		
		ИмяВида = ВРег(ЧастиИмени[0]);
		ИмяОбъекта = ЧастиИмени[1];
		
		Если ИмяВида = ВРег("Константы") Тогда
			Если Метаданные.Константы.Найти(ИмяОбъекта) <> Неопределено Тогда
				ОбъектНайден = Истина;
			КонецЕсли;
		ИначеЕсли ИмяВида = ВРег("РегистрыСведений") Тогда
			Если Метаданные.РегистрыСведений.Найти(ИмяОбъекта) <> Неопределено Тогда
				ОбъектНайден = Истина;
			КонецЕсли;
		ИначеЕсли ИмяВида = ВРег("РегистрыНакопления") Тогда
			Если Метаданные.РегистрыНакопления.Найти(ИмяОбъекта) <> Неопределено Тогда
				ОбъектНайден = Истина;
			КонецЕсли;
		ИначеЕсли ИмяВида = ВРег("РегистрыБухгалтерии") Тогда
			Если Метаданные.РегистрыБухгалтерии.Найти(ИмяОбъекта) <> Неопределено Тогда
				ОбъектНайден = Истина;
			КонецЕсли;
		ИначеЕсли ИмяВида = ВРег("РегистрыРасчета") Тогда
			Если Метаданные.РегистрыРасчета.Найти(ИмяОбъекта) <> Неопределено Тогда
				ОбъектНайден = Истина;
			КонецЕсли;
		ИначеЕсли ИмяВида = ВРег("Справочники") Тогда
			Если Метаданные.Справочники.Найти(ИмяОбъекта) <> Неопределено Тогда
				ОбъектНайден = Истина;
			КонецЕсли;
		ИначеЕсли ИмяВида = ВРег("Документы") Тогда
			Если Метаданные.Документы.Найти(ИмяОбъекта) <> Неопределено Тогда
				ОбъектНайден = Истина;
			КонецЕсли;
		ИначеЕсли ИмяВида = ВРег("Отчеты") Тогда
			Если Метаданные.Отчеты.Найти(ИмяОбъекта) <> Неопределено Тогда
				ОбъектНайден = Истина;
			КонецЕсли;
		ИначеЕсли ИмяВида = ВРег("Обработки") Тогда
			Если Метаданные.Обработки.Найти(ИмяОбъекта) <> Неопределено Тогда
				ОбъектНайден = Истина;
			КонецЕсли;
		ИначеЕсли ИмяВида = ВРег("БизнесПроцессы") Тогда
			Если Метаданные.БизнесПроцессы.Найти(ИмяОбъекта) <> Неопределено Тогда
				ОбъектНайден = Истина;
			КонецЕсли;
		ИначеЕсли ИмяВида = ВРег("ЖурналыДокументов") Тогда
			Если Метаданные.ЖурналыДокументов.Найти(ИмяОбъекта) <> Неопределено Тогда
				ОбъектНайден = Истина;
			КонецЕсли;
		ИначеЕсли ИмяВида = ВРег("Задачи") Тогда
			Если Метаданные.Задачи.Найти(ИмяОбъекта) <> Неопределено Тогда
				ОбъектНайден = Истина;
			КонецЕсли;
		ИначеЕсли ИмяВида = ВРег("ПланыСчетов") Тогда
			Если Метаданные.ПланыСчетов.Найти(ИмяОбъекта) <> Неопределено Тогда
				ОбъектНайден = Истина;
			КонецЕсли;
		ИначеЕсли ИмяВида = ВРег("ПланыОбмена") Тогда
			Если Метаданные.ПланыОбмена.Найти(ИмяОбъекта) <> Неопределено Тогда
				ОбъектНайден = Истина;
			КонецЕсли;
		ИначеЕсли ИмяВида = ВРег("ПланыВидовХарактеристик") Тогда
			Если Метаданные.ПланыВидовХарактеристик.Найти(ИмяОбъекта) <> Неопределено Тогда
				ОбъектНайден = Истина;
			КонецЕсли;
		ИначеЕсли ИмяВида = ВРег("ПланыВидовРасчета") Тогда
			Если Метаданные.ПланыВидовРасчета.Найти(ИмяОбъекта) <> Неопределено Тогда
				ОбъектНайден = Истина;
			КонецЕсли;
		КонецЕсли;
		
	КонецЕсли;
	
	Если Не ОбъектНайден Тогда
		ВызватьИсключение СтроковыеФункцииКлиентСервер.ПодставитьПараметрыВСтроку(
			НСтр("ru = 'Объект метаданных ""%1"" не найден,
			|либо для него не поддерживается получение модуля менеджера.'"), Имя);
	КонецЕсли;
	
	Модуль = Вычислить(Имя); // ВычислитьВБезопасномРежиме не требуется, т.к. проверка надежная.
	
	Возврат Модуль;
КонецФункции

// Возвращает признак работы в режиме разделения данных по областям
// (технически это признак условного разделения).
// 
// Возвращает Ложь, если конфигурация не может работать в режиме разделения данных
// (не содержит общих реквизитов, предназначенных для разделения данных).
//
// Возвращаемое значение:
//  Булево - Истина, если разделение включено.
//         - Ложь,   если разделение выключено или не поддерживается.
//
Функция РазделениеВключено() Экспорт
	
	Возврат Ложь;
	
КонецФункции

////////////////////////////////////////////////////////////////////////////////
// Сохранение, чтение и удаление настроек из хранилищ.

// Сохраняет настройку в хранилище общих настроек, как метод платформы Сохранить,
// объектов СтандартноеХранилищеНастроекМенеджер или ХранилищеНастроекМенеджер.<Имя хранилища>,
// но с поддержкой длины ключа настроек более 128 символов путем хеширования части,
// которая превышает 96 символов.
// Если нет права СохранениеДанныхПользователя, сохранение пропускается без ошибки.
//
// Параметры:
//   КлючОбъекта       - Строка           - см. синтакс-помощник платформы.
//   КлючНастроек      - Строка           - см. синтакс-помощник платформы.
//   Настройки         - Произвольный     - см. синтакс-помощник платформы.
//   ОписаниеНастроек  - ОписаниеНастроек - см. синтакс-помощник платформы.
//   ИмяПользователя   - Строка           - см. синтакс-помощник платформы.
//   ОбновитьПовторноИспользуемыеЗначения - Булево - выполнить одноименный метод платформы.
//
Процедура ХранилищеОбщихНастроекСохранить(КлючОбъекта, КлючНастроек, Настройки,
			ОписаниеНастроек = Неопределено,
			ИмяПользователя = Неопределено,
			ОбновитьПовторноИспользуемыеЗначения = Ложь) Экспорт
	
	ХранилищеСохранить(ХранилищеОбщихНастроек,
		КлючОбъекта,
		КлючНастроек,
		Настройки,
		ОписаниеНастроек,
		ИмяПользователя,
		ОбновитьПовторноИспользуемыеЗначения);
	
КонецПроцедуры

// Сохраняет несколько настроек в хранилище общих настроек, как метод платформы Сохранить,
// объектов СтандартноеХранилищеНастроекМенеджер или ХранилищеНастроекМенеджер.<Имя хранилища>,
// но с поддержкой длины ключа настроек более 128 символов путем хеширования части,
// которая превышает 96 символов.
// Если нет права СохранениеДанныхПользователя, сохранение пропускается без ошибки.
// 
// Параметры:
//   НесколькоНастроек - Массив - со значениями:
//     * Значение - Структура - со свойствами:
//         * Объект    - Строка       - см. параметр КлючОбъекта  в синтакс-помощнике платформы.
//         * Настройка - Строка       - см. параметр КлючНастроек в синтакс-помощнике платформы.
//         * Значение  - Произвольный - см. параметр Настройки    в синтакс-помощнике платформы.
//
//   ОбновитьПовторноИспользуемыеЗначения - Булево - выполнить одноименный метод платформы.
//
Процедура ХранилищеОбщихНастроекСохранитьМассив(НесколькоНастроек,
			ОбновитьПовторноИспользуемыеЗначения = Ложь) Экспорт
	
	Если Не ПравоДоступа("СохранениеДанныхПользователя", Метаданные) Тогда
		Возврат;
	КонецЕсли;
	
	Для Каждого Элемент Из НесколькоНастроек Цикл
		ХранилищеОбщихНастроек.Сохранить(Элемент.Объект, КлючНастроек(Элемент.Настройка), Элемент.Значение);
	КонецЦикла;
	
	Если ОбновитьПовторноИспользуемыеЗначения Тогда
		ОбновитьПовторноИспользуемыеЗначения();
	КонецЕсли;
	
КонецПроцедуры

// Загружает настройку из хранилища общих настроек, как метод платформы Загрузить,
// объектов СтандартноеХранилищеНастроекМенеджер или ХранилищеНастроекМенеджер.<Имя хранилища>,
// но с поддержкой длины ключа настроек более 128 символов путем хеширования части,
// которая превышает 96 символов.
// Кроме того, возвращает указанное значение по умолчанию, если настройки не найдены.
// Если нет права СохранениеДанныхПользователя, возвращается значение по умолчанию без ошибки.
//
// В возвращаемом значении очищаются ссылки на несуществующий объект в базе данных, а именно
// - возвращаемая ссылка заменяется на указанное значение по умолчанию;
// - из данных типа Массив ссылки удаляются;
// - у данных типа Структура и Соответствие ключ не меняется, а значение устанавливается Неопределено;
// - анализ значений в данных типа Массив, Структура, Соответствие выполняется рекурсивно.
//
// Параметры:
//   КлючОбъекта          - Строка           - см. синтакс-помощник платформы.
//   КлючНастроек         - Строка           - см. синтакс-помощник платформы.
//   ЗначениеПоУмолчанию  - Произвольный     - значение, которое возвращается, если настройки не найдены.
//                                             Если не указано, возвращается значение Неопределено.
//   ОписаниеНастроек     - ОписаниеНастроек - см. синтакс-помощник платформы.
//   ИмяПользователя      - Строка           - см. синтакс-помощник платформы.
//
// Возвращаемое значение: 
//   Произвольный - см. синтакс-помощник платформы.
//
Функция ХранилищеОбщихНастроекЗагрузить(КлючОбъекта, КлючНастроек, ЗначениеПоУмолчанию = Неопределено, 
			ОписаниеНастроек = Неопределено, ИмяПользователя = Неопределено) Экспорт
	
	Возврат ХранилищеЗагрузить(ХранилищеОбщихНастроек,
		КлючОбъекта,
		КлючНастроек,
		ЗначениеПоУмолчанию,
		ОписаниеНастроек,
		ИмяПользователя);
	
КонецФункции

// Удаляет настройку из хранилища общих настроек, как метод платформы Удалить,
// объектов СтандартноеХранилищеНастроекМенеджер или ХранилищеНастроекМенеджер.<Имя хранилища>,
// но с поддержкой длины ключа настроек более 128 символов путем хеширования части,
// которая превышает 96 символов.
// Если нет права СохранениеДанныхПользователя, удаление пропускается без ошибки.
//
// Параметры:
//   КлючОбъекта     - Строка, Неопределено - см. синтакс-помощник платформы.
//   КлючНастроек    - Строка, Неопределено - см. синтакс-помощник платформы.
//   ИмяПользователя - Строка, Неопределено - см. синтакс-помощник платформы.
//
Процедура ХранилищеОбщихНастроекУдалить(КлючОбъекта, КлючНастроек, ИмяПользователя) Экспорт
	
	ХранилищеУдалить(ХранилищеОбщихНастроек,
		КлючОбъекта,
		КлючНастроек,
		ИмяПользователя);
	
КонецПроцедуры

////////////////////////////////////////////////////////////////////////////////
// Хранилища настроек.

Процедура ХранилищеСохранить(МенеджерХранилища, КлючОбъекта, КлючНастроек, Настройки,
			ОписаниеНастроек, ИмяПользователя, ОбновитьПовторноИспользуемыеЗначения)
	
	Если Не ПравоДоступа("СохранениеДанныхПользователя", Метаданные) Тогда
		Возврат;
	КонецЕсли;
	
	МенеджерХранилища.Сохранить(КлючОбъекта, КлючНастроек(КлючНастроек), Настройки,
		ОписаниеНастроек, ИмяПользователя);
	
	Если ОбновитьПовторноИспользуемыеЗначения Тогда
		ОбновитьПовторноИспользуемыеЗначения();
	КонецЕсли;
	
КонецПроцедуры

Функция ХранилищеЗагрузить(МенеджерХранилища, КлючОбъекта, КлючНастроек, ЗначениеПоУмолчанию,
			ОписаниеНастроек, ИмяПользователя)
	
	Результат = Неопределено;
	
	Если ПравоДоступа("СохранениеДанныхПользователя", Метаданные) Тогда
		Результат = МенеджерХранилища.Загрузить(КлючОбъекта, КлючНастроек(КлючНастроек),
			ОписаниеНастроек, ИмяПользователя);
	КонецЕсли;
	
	Если Результат = Неопределено Тогда
		Результат = ЗначениеПоУмолчанию;
	Иначе
		УстановитьПривилегированныйРежим(Истина);
		Если УдалитьБитыеСсылки(Результат) Тогда
			Результат = ЗначениеПоУмолчанию;
		КонецЕсли;
	КонецЕсли;
	
	Возврат Результат;
	
КонецФункции

// Удаляет битые ссылки из переменной.
//
// Параметры:
//   СсылкаИлиКоллекция - ЛюбаяСсылка, Произвольный - Проверяемый объект или очищаемая коллекция.
//
// Возвращаемое значение: 
//   Булево - 
//       * Истина - СсылкаИлиКоллекция ссылочного типа и объект не найден в базе данных.
//       * Ложь - Когда СсылкаИлиКоллекция не ссылочного типа или объект найден в базе данных.
//
Функция УдалитьБитыеСсылки(СсылкаИлиКоллекция)
	
	Тип = ТипЗнч(СсылкаИлиКоллекция);
	
	Если Тип = Тип("Неопределено")
		Или Тип = Тип("Булево")
		Или Тип = Тип("Строка")
		Или Тип = Тип("Число")
		Или Тип = Тип("Дата") Тогда // Оптимизация - часто используемые примитивные типы.
		
		Возврат Ложь; // Не ссылка.
		
	ИначеЕсли Тип = Тип("Массив") Тогда
		
		Количество = СсылкаИлиКоллекция.Количество();
		Для Номер = 1 По Количество Цикл
			ОбратныйИндекс = Количество - Номер;
			Значение = СсылкаИлиКоллекция[ОбратныйИндекс];
			Если УдалитьБитыеСсылки(Значение) Тогда
				СсылкаИлиКоллекция.Удалить(ОбратныйИндекс);
			КонецЕсли;
		КонецЦикла;
		
		Возврат Ложь; // Не ссылка.
		
	ИначеЕсли Тип = Тип("Структура")
		Или Тип = Тип("Соответствие") Тогда
		
		Для Каждого КлючИЗначение Из СсылкаИлиКоллекция Цикл
			Значение = КлючИЗначение.Значение;
			Если УдалитьБитыеСсылки(Значение) Тогда
				СсылкаИлиКоллекция.Вставить(КлючИЗначение.Ключ, Неопределено);
			КонецЕсли;
		КонецЦикла;
		
		Возврат Ложь; // Не ссылка.
		
	ИначеЕсли Документы.ТипВсеСсылки().СодержитТип(Тип)
		Или Справочники.ТипВсеСсылки().СодержитТип(Тип)
		Или Перечисления.ТипВсеСсылки().СодержитТип(Тип)
		Или ПланыВидовХарактеристик.ТипВсеСсылки().СодержитТип(Тип)
		Или ПланыСчетов.ТипВсеСсылки().СодержитТип(Тип)
		Или ПланыВидовРасчета.ТипВсеСсылки().СодержитТип(Тип)
		Или ПланыОбмена.ТипВсеСсылки().СодержитТип(Тип)
		Или БизнесПроцессы.ТипВсеСсылки().СодержитТип(Тип)
		Или Задачи.ТипВсеСсылки().СодержитТип(Тип) Тогда
		// Ссылочный тип, исключая ТочкаМаршрутаБизнесПроцессаСсылка.
		
		Если СсылкаИлиКоллекция.Пустая() Тогда
			Возврат Ложь; // Ссылка пустая.
		ИначеЕсли ЗначениеРеквизитаОбъекта(СсылкаИлиКоллекция, "Ссылка") = Неопределено Тогда
			СсылкаИлиКоллекция = Неопределено;
			Возврат Истина; // "Битая" ссылка.
		Иначе
			Возврат Ложь; // Объект найден.
		КонецЕсли;
		
	Иначе
		
		Возврат Ложь; // Не ссылка.
		
	КонецЕсли;
	
КонецФункции

Процедура ХранилищеУдалить(МенеджерХранилища, КлючОбъекта, КлючНастроек, ИмяПользователя)
	
	Если ПравоДоступа("СохранениеДанныхПользователя", Метаданные) Тогда
		МенеджерХранилища.Удалить(КлючОбъекта, КлючНастроек(КлючНастроек), ИмяПользователя);
	КонецЕсли;
	
КонецПроцедуры

// Возвращает строку ключа настроек, не превышающую допустимую длину 128 символов.
// Если указанная строка превышает 128, тогда вместо символов сверх 96 символов
// добавляется их хеш-сумма по алгоритму MD5 размером 32 символа.
//
// Параметры:
//  Строка - Строка - строка произвольной длины.
//
// Возвращаемое значение:
//  Строка - не более 128 символов.
//
Функция КлючНастроек(Знач Строка)
	Возврат СократитьСтрокуКонтрольнойСуммой(Строка, 128);
КонецФункции

// Сокращает строку до нужной длины, при этом обрезанная часть хешируется,
// обеспечивая уникальность строки. Проверяет длину строки на входе и, в случае
// превышения максимальной длины, преобразует ее конец по алгоритму MD5 в
// уникальную строку из 32 символов.
//
// Параметры:
//  Строка            - Строка - исходная строка произвольной длины.
//  МаксимальнаяДлина - Число  - требуемое максимальное количество символов в строке,
//                               минимальное значение: 32.
// 
// Возвращаемое значение:
//   Строка - строка, не превышающая максимальную длину.
//
Функция СократитьСтрокуКонтрольнойСуммой(Строка, МаксимальнаяДлина) Экспорт
	ОбщегоНазначенияКлиентСервер.Проверить(МаксимальнаяДлина >= 32, НСтр("ru = 'Параметр МаксимальнаяДлина не может быть меньше 32'"),
		"ОбщегоНазначения.СократитьСтрокуКонтрольнойСуммой");
	
	Результат = Строка;
	Если СтрДлина(Строка) > МаксимальнаяДлина Тогда
		Результат = Лев(Строка, МаксимальнаяДлина - 32);
		ХешированиеДанных = Новый ХешированиеДанных(ХешФункция.MD5);
		ХешированиеДанных.Добавить(Сред(Строка, МаксимальнаяДлина - 32 + 1));
		Результат = Результат + СтрЗаменить(ХешированиеДанных.ХешСумма, " ", "");
	КонецЕсли;
	Возврат Результат;
КонецФункции

