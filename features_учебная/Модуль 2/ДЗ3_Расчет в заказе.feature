﻿#language: ru

@tree

Функционал: Проверка расчета количества в документе Заказ

Как администратор я хочу
проверить расчет количества в документе Заказ 
чтобы вести учет в базе   

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: Проверка расчета количества в документе Заказ
И Заполнение шапки документа Заказ

И в таблице 'Товары' я нажимаю на кнопку с именем 'ТоварыДобавить'
И в таблице 'Товары' я нажимаю кнопку выбора у реквизита с именем 'ТоварыТовар'
Тогда открылось окно "Товары"
И я нажимаю на кнопку с именем 'ФормаСписок'
И в таблице 'Список' я перехожу к строке:
	| "Код"       | "Наименование" |
	| "000000005" | "Тапочки"      |
И в таблице 'Список' я выбираю текущую строку
Тогда открылось окно "Заказ (создание)*"
И в таблице 'Товары' я активизирую поле с именем 'ТоварыКоличество'
И в таблице 'Товары' в поле с именем 'ТоварыКоличество' я ввожу текст "2"
И я перехожу к следующему реквизиту
И в таблице 'Товары' я завершаю редактирование строки
И в таблице 'Товары' я нажимаю на кнопку с именем 'ТоварыДобавить'
И в таблице 'Товары' я нажимаю кнопку выбора у реквизита с именем 'ТоварыТовар'
Тогда открылось окно "Товары"
И в таблице 'Список' я перехожу к строке:
	| "Код"       | "Наименование" |
	| "000000035" | "Йогурт"       |
И в таблице 'Список' я выбираю текущую строку
Тогда открылось окно "Заказ (создание)*"
И в таблице 'Товары' я активизирую поле с именем 'ТоварыКоличество'
И в таблице 'Товары' в поле с именем 'ТоварыКоличество' я ввожу текст "3"
И я перехожу к следующему реквизиту
И в таблице 'Товары' я завершаю редактирование строки
И в таблице 'Товары' я нажимаю на кнопку с именем 'ТоварыДобавить'
И в таблице 'Товары' я нажимаю кнопку выбора у реквизита с именем 'ТоварыТовар'
Тогда открылось окно "Товары"
И в таблице 'Список' я перехожу к строке:
	| "Код"       | "Наименование" |
	| "000000037" | "Доставка"     |
И в таблице 'Список' я выбираю текущую строку
И элемент формы 'Количество (итог)' стал равен '6'
Когда открылось окно "Заказ (создание)*"
И в таблице 'Товары' я завершаю редактирование строки
И я нажимаю на кнопку с именем 'ФормаПровестиИЗакрыть'
И я жду закрытия окна "Заказ * от * *" в течение 20 секунд
Тогда открылось окно "Заказы товаров"
И Я закрываю окно "Заказы товаров"


