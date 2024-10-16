﻿#language: ru

@tree

Функционал: Проверка и исправление организации 
Как тестировщик я хочу
в документах заказа покупателя проверить соответсвие организации в документе и его соглашении, при расхождении перезаписать из соглашения
чтобы привести в порядок документацию и ее отчетность   

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: Проверка и исправление организации
* Закрываю все предыдущие окна, открываю документ Заказ покупателя
	И я закрываю все окна клиентского приложения
	И В командном интерфейсе я выбираю "Продажи" "Заказы покупателей"
	
* Перебираю все документы из списка
	И для каждой строки таблицы "List" я выполняю
		И в таблице 'List' я выбираю текущую строку
		Тогда открылось окно "Заказ покупателя * от *"
		И я нажимаю на гиперссылку с именем 'DecorationGroupTitleCollapsedLabel'
		И я запоминаю значение поля с именем 'Company' как 'ОрганизацияДокумента'
		И я нажимаю на кнопку открытия поля с именем 'Agreement'
		Тогда открылось окно "* (Соглашение)"
		И я запоминаю значение поля с именем "Company" как "ОрганизацияСоглашения"
		И Я закрываю окно "* (Соглашение)"
		Если 'Контекст.ОрганизацияСоглашения = Контекст.ОрганизацияДокумента' Тогда
		Иначе 
			Тогда в поле с именем 'Company' ввожу значение переменной 'ОрганизацияСоглашения'
			И я нажимаю на кнопку с именем 'FormWrite'
			И я нажимаю на кнопку с именем 'FormPost'
		И Я закрываю окно "Заказ покупателя * от *"
					
			
					
				
