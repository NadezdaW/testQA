﻿#language: ru

@tree

Функционал: Проверка отчета

Как Тестировщик я хочу
сверить отчет D2001 Продажи с макетом
чтобы проверить стабильность работы отчета

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: Проверка отчета D2001 Продажи
* Формирование отчета

	И В командном интерфейсе я выбираю "Отчеты" "D2001 Продажи"
	Тогда открылось окно "D2001 Продажи"
	И я нажимаю на кнопку с именем 'FormGenerate'

* Сверка с макетом
	И Табличный документ "Result" равен макету "МакетОтчетаПродаж" по шаблону

* Закрываю все окна
	И я закрываю все окна клиентского приложения


	