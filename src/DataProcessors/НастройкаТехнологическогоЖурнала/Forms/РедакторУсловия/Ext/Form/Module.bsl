﻿
&НаСервере
Процедура ПриСозданииНаСервере(Отказ, СтандартнаяОбработка)
	
	Перем ТипКолонки, СписокВыбора, ЭУ;
	
	// Скопируем таблицу типов из параметра в нашу форму
	СписокТипов = Новый Структура;
	Для каждого ТипКолонки Из Параметры.СписокТипов Цикл
		СписокТипов.Вставить(ТипКолонки.Ключ, ?(ТипЗнч(ТипКолонки.Значение) = Тип("СписокЗначений"), ТипКолонки.Значение.Скопировать(), ТипКолонки.Значение));
	КонецЦикла;
	// Зададим список выбора для списка колонок
	СписокВыбора = Элементы.Свойство.СписокВыбора;
	Для каждого Колонка из Параметры.СписокКолонок Цикл
		СписокВыбора.Добавить(Колонка.Значение, Колонка.Представление);
	КонецЦикла;
	//  Установим редактируемые значения
	Свойство = Параметры.Свойство;
	Условие = Параметры.Условие;
	Значение = Параметры.Значение;
	УстановитьСписокУсловий();
	УстановитьСписокЗначений();
	// Если параметр активного элемента задан - установим его
	Если НЕ ПустаяСтрока(Параметры.ТекущаяКолонка) Тогда
		ЭУ = Новый Структура;
		ЭУ.Вставить("Свойство", Элементы.Свойство);
		ЭУ.Вставить("Условие", Элементы.Условие);
		ЭУ.Вставить("Значение", Элементы.Значение);
		ЭтаФорма.ТекущийЭлемент = ЭУ[Параметры.ТекущаяКолонка];
	КонецЕсли;
	
КонецПроцедуры

&НаСервере
Процедура УстановитьСписокУсловий()
	
	Перем ТипКолонки, Результат, Список;
	
	Если ПустаяСтрока(Свойство) Тогда
		Возврат;
	КонецЕсли;
	ТипКолонки = "";
	Результат = СписокТипов.Свойство(Свойство, ТипКолонки);
	Список = Элементы.Условие.СписокВыбора;
	Список.Очистить();
	Если ТипКолонки = "b" ИЛИ ТипЗнч(ТипКолонки) = Тип("СписокЗначений") Тогда
		Список.Добавить("=", НСтр("ru = '= (Равно)';sys = ''", "ru"));
		Список.Добавить("<>", НСтр("ru = '<> (Не равно)';sys = ''", "ru"));
	ИначеЕсли ТипКолонки = "s" Тогда
		Список.Добавить("=", НСтр("ru = '= (Равно)';sys = ''", "ru"));
		Список.Добавить("<>", НСтр("ru = '<> (Не равно)';sys = ''", "ru"));
		Список.Добавить("like", НСтр("ru = 'like (Подобно)';sys = ''", "ru"));
	Иначе
		Список.Добавить("=", НСтр("ru = '= (Равно)';sys = ''", "ru"));
		Список.Добавить("<>", НСтр("ru = '<> (Не равно)';sys = ''", "ru"));
		Список.Добавить("<", НСтр("ru = '< (Меньше)';sys = ''", "ru"));
		Список.Добавить("<=", НСтр("ru = '<= (Меньше или равно)';sys = ''", "ru"));
		Список.Добавить(">", НСтр("ru = '> (Больше)';sys = ''", "ru"));
		Список.Добавить(">=", НСтр("ru = '>= (Больше или равно)';sys = ''", "ru"));
		Список.Добавить("like", НСтр("ru = 'like (Подобно)';sys = ''", "ru"));
	КонецЕсли;
	
КонецПроцедуры

&НаСервере
Процедура УстановитьСписокЗначений()
	
	Перем ТипКолонки, Результат, ЭлементОграничения, СписокВыбора;
	
	Если ПустаяСтрока(Свойство) Тогда
		Возврат;
	КонецЕсли;
	ТипКолонки = "";
	Результат = СписокТипов.Свойство(Свойство, ТипКолонки);
	Если Результат Тогда
		СписокВыбора = Элементы.Значение.СписокВыбора;
		СписокВыбора.Очистить();
		Если ТипЗнч(ТипКолонки) = Тип("СписокЗначений") Тогда
			Для каждого ЭлементОграничения из ТипКолонки Цикл
				СписокВыбора.Добавить(ЭлементОграничения.Значение, ЭлементОграничения.Представление);
			КонецЦикла;
			Элементы.Значение.РежимВыбораИзСписка = Истина;
		ИначеЕсли ТипКолонки = "b" Тогда
			СписокВыбора.Добавить("1", Формат(Истина));
			СписокВыбора.Добавить("0", Формат(Ложь));
			Элементы.Значение.РежимВыбораИзСписка = Истина;
		Иначе
			Элементы.Значение.РежимВыбораИзСписка = Ложь;
		КонецЕсли;
		СписокВыбора.СортироватьПоПредставлению();
	КонецЕсли;
	
КонецПроцедуры

&НаСервереБезКонтекста
Функция СформироватьДанныеВыбора(Текст, Знач СписокПоиска)
	
	Перем ДанныеВыбора, ЭлементВыбора, Значение, Представление;
	
	ДанныеВыбора = Новый СписокЗначений;
	Для каждого ЭлементВыбора Из СписокПоиска Цикл
		Значение = ЭлементВыбора.Значение;
		Представление = СтрЗаменить(ЭлементВыбора.Представление, Символы.ПС, " ");
		Если Найти(Значение, Текст) <> 0 ИЛИ Найти(НРег(Представление), Текст) <> 0 Тогда
			ДанныеВыбора.Добавить(Значение, Представление + " (" + СтрЗаменить(Значение, "_", ":") + ")");
		КонецЕсли;
		Если ДанныеВыбора.Количество() = 50 Тогда
			Прервать;
		КонецЕсли; 
	КонецЦикла;
	Возврат ДанныеВыбора;
	
КонецФункции

&НаКлиенте
Процедура СвойствоАвтоПодбор(Элемент, Текст, ДанныеВыбора, Ожидание, СтандартнаяОбработка)
	
	СтандартнаяОбработка = Ложь;
	ДанныеВыбора = СформироватьДанныеВыбора(НРег(Текст), Элемент.СписокВыбора);
	
КонецПроцедуры

&НаКлиенте
Процедура СвойствоОкончаниеВводаТекста(Элемент, Текст, ДанныеВыбора, СтандартнаяОбработка)
	
	СтандартнаяОбработка = Ложь;
	ДанныеВыбора = СформироватьДанныеВыбора(НРег(Текст), Элемент.СписокВыбора);
	
КонецПроцедуры

&НаКлиенте
Процедура СвойствоПриИзменении(Элемент)
		
	Перем Результат;
	
	УстановитьСписокУсловий();
	УстановитьСписокЗначений();
	Результат = "";
	Если СписокТипов.Свойство(Свойство, Результат) И ПустаяСтрока(Условие) Тогда
		Если Результат = "s" Тогда
			Условие = "like";
		Иначе
			Условие = "=";
		КонецЕсли;
	КонецЕсли;
	Значение = "";

КонецПроцедуры

&НаКлиенте
Процедура Завершение(Команда)

	Перем Результат;
	
	Результат = Новый Структура;
	Результат.Вставить("Свойство", Свойство);
	Результат.Вставить("Условие", Условие);
	Результат.Вставить("Значение", Значение);
	Закрыть(Результат);
	
КонецПроцедуры
