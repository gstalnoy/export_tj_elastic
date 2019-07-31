﻿
&НаСервере
Процедура ПриСозданииНаСервере(Отказ, СтандартнаяОбработка)
	
	// запомним важные параметры
	ПутьКШаблонам = Параметры.ПутьКШаблонам;
	Шаблон = Параметры.ФайлКонфигурации;
	
	// заполним список шаблонов действий и одновременно попробуем проставить параметры действий:
	// если текст "<dump" значит проставим флаг - запрашивать путь к дампу
	// если текст "<log" значит проставим флаг - запрашивать путь к файлам ТЖ
	ВыполняемыеДействия.Добавить("ПутьКДампу", НСтр("ru = 'Запрашивать путь к каталогу хранения дампов';sys = ''", "ru"), ?(СтрЧислоВхождений(Шаблон, "<dump") > 0 , Истина, Ложь));
	ВыполняемыеДействия.Добавить("ПутьКТЖ", НСтр("ru = 'Запрашивать путь к каталогу хранения файлов технологического журнала';sys = ''", "ru"), ?(СтрЧислоВхождений(Шаблон, "<log") > 0 , Истина, Ложь));
	
	// сформируем автоматическое описание шаблона
	ИмяШаблона = "Создан " + ТекущаяДата();
	ОписаниеШаблона = СокрП(""+ ?(СтрЧислоВхождений(Шаблон, "<log") > 0 , НСтр("ru = 'Содержит настройки создания технологического журнала.';sys = ''", "ru"), "") + " " +
			ОписаниеШаблона + ?(СтрЧислоВхождений(Шаблон, "<dump") > 0 , НСтр("ru = 'Содержит настройки создания дампов.';sys = ''", "ru"), "") + " " +
			ОписаниеШаблона + ?(СтрЧислоВхождений(Шаблон, "<leaks") > 0 , НСтр("ru = 'Содержит настройки контроля утечек памяти в конфигурации.';sys = ''", "ru"), "") + " " +
			ОписаниеШаблона + ?(СтрЧислоВхождений(Шаблон, "<mem") > 0 , НСтр("ru = 'Содержит настройки контроля утечек памяти на сервере.';sys = ''", "ru"), "") + " " +
			ОписаниеШаблона + ?(СтрЧислоВхождений(Шаблон, "<defaultlog") > 0 , НСтр("ru = 'Содержит настройки технологического журнала по умолчанию.';sys = ''", "ru"), "") + " " +
			ОписаниеШаблона + ?(СтрЧислоВхождений(Шаблон, "<system") > 0 , НСтр("ru = 'Содержит настройки системных событий.';sys = ''", "ru"), ""));
	
КонецПроцедуры

&НаКлиенте
Процедура КомандаОК(Команда)
	
	Перем Документ, Счетчик, Действие, ПолнаяМаска, ИмяФайла, Файл;
	
	// Подготовили текст шаблона
	Документ = Новый ТекстовыйДокумент;
	Документ.УстановитьТекст(Шаблон);
	Счетчик = 1;
	Документ.ВставитьСтроку(Счетчик, "Имя:"); Счетчик = Счетчик + 1;
	Документ.ВставитьСтроку(Счетчик, СтрЗаменить(ИмяШаблона, Символы.ПС, "")); Счетчик = Счетчик + 1;
	Документ.ВставитьСтроку(Счетчик, "Описание:"); Счетчик = Счетчик + 1;
	Документ.ВставитьСтроку(Счетчик, СтрЗаменить(ОписаниеШаблона, Символы.ПС, "")); Счетчик = Счетчик + 1;
	Если ВыполняемыеДействия[0].Пометка ИЛИ ВыполняемыеДействия[1].Пометка Тогда
		Документ.ВставитьСтроку(Счетчик, "Действия:"); Счетчик = Счетчик + 1;
		Для каждого Действие Из ВыполняемыеДействия Цикл
			Если Действие.Пометка Тогда
				Документ.ВставитьСтроку(Счетчик, Действие.Значение); Счетчик = Счетчик + 1;
			КонецЕсли;
		КонецЦикла; 
	КонецЕсли;
	Документ.ВставитьСтроку(Счетчик, "Шаблон:"); Счетчик = Счетчик + 1;
	// теперь получим очередное имя файла шаблона
	ПолнаяМаска = ПутьКШаблонам + "config%.lct";
	Счетчик = 1;
	Пока Истина Цикл
	
		ИмяФайла = СтрЗаменить(ПолнаяМаска, "%", Формат(Счетчик, "ЧГ=0"));
		Файл = Новый Файл(ИмяФайла);
		Если Файл.Существует() Тогда
			Счетчик = Счетчик + 1;
			Продолжить;
		КонецЕсли;
		Прервать;
	КонецЦикла;
	Документ.Записать(ИмяФайла);
	Закрыть(КодВозвратаДиалога.ОК);
	
КонецПроцедуры
