<%@page session="true" contentType="text/html" pageEncoding="UTF-8" %>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="f" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<f:setLocale  value="ru_RU"/>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <title>Единое рабочее место сотрудника. Профиль клиента. Прототип.</title>

    <jsp:include page="./res.jsp" />

    <script type="text/javascript">
        $(document).ready(function(){
            $('#chapterTabs a').click(function (e) {
              e.preventDefault();
              $(this).tab('show');
            });
            $("#chapterTabs a:first").tab('show');
        });
    </script>
  </head>

  <body>
    <jsp:include page="./header.jsp" />

    <div class="container-fluid">
      <div class="row-fluid">
        <ul class="breadcrumb">
            <li><a href="./index.html">Главная</a> <span class="divider">/</span></li>
            <li><a href="">Клиенты</a> <span class="divider">/</span></li>
            <li class="active">Профиль клиента</li>
        </ul>
      </div>
      <div class="row-fluid">
        <h1>ООО &laquo;Рога и копыта&raquo;</h1>
      </div>
      <div class="row-fluid">
        <ul id="chapterTabs" class="nav nav-tabs">
            <li><a href="#main" tab="" data-toggle="">Основное</a></li>
            <li><a href="#mainExt" tab="" data-toggle="">Справка по юр.Лицу</a></li>
            <li><a href="#holding" tab="" data-toggle="">Справка по холдингу</a></li>
            <li><a href="#products" tab="" data-toggle="">Продукты</a></li>
            <li><a href="#contacts" tab="" data-toggle="">Контакты</a></li>
            <li><a href="#history" tab="" data-toggle="">История</a></li>
        </ul>
        <div>
          <div id="clientsTabContent" class="tab-content">
            <div id="main" class="tab-pane fade">
                <table class="client-data-table table table-hover table-bordered">
                    <tbody>
                        <tr>
                            <td>Название</td>
                            <td>ООО "Рога и копыта"</td>
                        </tr>
                        <tr>
                            <td>Краткое название</td>
                            <td>РОГА И КОПЫТА</td>
                        </tr>
                        <tr>
                            <td>Почтовый индекс</td>
                            <td>123000</td>
                        </tr>
                        <tr>
                            <td>Город</td>
                            <td>Москва</td>
                        </tr>
                        <tr>
                            <td>Адрес юридический</td>
                            <td>123000 ул. Академика Королева д.12</td>
                        </tr>
                        <tr>
                            <td>Адрес фактический</td>
                            <td>123000 ул. Новоданиловская набережная д.12</td>
                        </tr>
                        <tr>
                            <td>Телефон</td>
                            <td>+7 (914) 265-92-62</td>
                        </tr>
                        <tr>
                            <td>Факс</td>
                            <td>+7 (914) 265-92-62</td>
                        </tr>
                        <tr>
                            <td>EMail</td>
                            <td>RogaNKopyta@mail.ru</td>
                        </tr>
                        <tr>
                            <td>ИНН</td>
                            <td>378992933012</td>
                        </tr>
                        <tr>
                            <td>КПП</td>
                            <td>125101001</td>
                        </tr>
                        <tr>
                            <td>ОКАТО</td>
                            <td>45278562000</td>
                        </tr>
                        <tr>
                            <td>Расчетный счет</td>
                            <td>48702 810 9 3818 0005861</td>
                        </tr>
                        <tr>
                            <td>Корр. счет</td>
                            <td>48799 715 9 3818 0005861</td>
                        </tr>
                        <tr>
                            <td>БИК</td>
                            <td>044525225</td>
                        </tr>
                        <tr>
                            <td>ОГРН</td>
                            <td>1096646008282</td>
                        </tr>
                        <tr>
                            <td>ОКВЭД</td>
                            <td>01.11.4</td>
                        </tr>
                    </tbody>
                </table>
            </div>
            <div id="mainExt" class="tab-pane fade">
                <table class="client-data-table table table-hover table-bordered">
                    <tbody>
                        <tr>
                            <td>Территориальный банк</td>
                            <td></td>
                        </tr>
                        <tr>
                            <td>Субьект федерации(ГОСБ/ОСБ)</td>
                            <td></td>
                        </tr>
                        <tr>
                            <td>Наименование юр.лица</td>
                            <td></td>
                        </tr>
                        <tr>
                            <td>Сегмент юр.лица</td>
                            <td></td>
                        </tr>
                        <tr>
                            <td>КМ юр.лица</td>
                            <td></td>
                        </tr>
                        <tr>
                            <td>Группа клиента</td>
                            <td></td>
                        </tr>
                        <tr>
                            <td>Отрасль юр.лица</td>
                            <td></td>
                        </tr>
                        <tr>
                            <td>ID юр.лица в CRM</td>
                            <td></td>
                        </tr>
                        <tr>
                            <td>ИНН</td>
                            <td></td>
                        </tr>
                        <tr>
                            <td>Выручка, тыс.руб.</td>
                            <td></td>
                        </tr>
                        <tr>
                            <td>Задолженность перед Банками, тыс.руб.</td>
                            <td></td>
                        </tr>
                        <tr>
                            <td>Прибыль/убыток, тыс.руб.</td>
                            <td></td>
                        </tr>
                        <tr>
                            <td>Численность работников, чел.</td>
                            <td></td>
                        </tr>
                        <tr>
                            <td>Участник ВЭД</td>
                            <td></td>
                        </tr>
                        <tr>
                            <td>Рейтинг заемщика</td>
                            <td></td>
                        </tr>
                        <tr>
                            <td>РМК, тыс.руб.</td>
                            <td></td>
                        </tr>
                    </tbody>
                </table>
            </div>
            <div id="holding" class="tab-pane fade">
                <table class="client-data-table table table-bordered table-hover">
                    <tbody>
                        <tr>
                            <td>Территориальный банк</td>
                            <td></td>
                        </tr>
                        <tr>
                            <td>Субьект федерации(ГОСБ/ОСБ)</td>
                            <td></td>
                        </tr>
                        <tr>
                            <td>Наименование Холдинга</td>
                            <td></td>
                        </tr>
                        <tr>
                            <td>Сегмент Холдинга</td>
                            <td></td>
                        </tr>
                        <tr>
                            <td>ГКМ Холдинга</td>
                            <td></td>
                        </tr>
                        <tr>
                            <td>Группа Холдинга</td>
                            <td></td>
                        </tr>
                        <tr>
                            <td>Отрасль Холдинга</td>
                            <td></td>
                        </tr>
                        <tr>
                            <td>ID Холдинга в CRM</td>
                            <td></td>
                        </tr>
                        <tr>
                            <td>Доходы от креритования в комиссионные доходы, тыс.руб.</td>
                            <td></td>
                        </tr>
                        <tr>
                            <td>Выручка, тыс.руб.</td>
                            <td></td>
                        </tr>
                        <tr>
                            <td>Задолженность перед банками, тыс.руб.</td>
                            <td></td>
                        </tr>
                        <tr>
                            <td>Прибыль/убыток, тыс.руб.</td>
                            <td></td>
                        </tr>
                        <tr>
                            <td>Численность работников, чел.</td>
                            <td></td>
                        </tr>
                        <tr>
                            <td>Участник ВЭД</td>
                            <td></td>
                        </tr>
                        <tr>
                            <td>Срочная задолженность, СДО, тыс.руб.</td>
                            <td></td>
                        </tr>
                        <tr>
                            <td>Количество зарплатных карт</td>
                            <td></td>
                        </tr>
                    </tbody>
                </table>
            </div>
            <div id="products" class="tab-pane fade">
                <div id="productsList" class="accordion">
                    <div class="accordion-group">
                        <div class="accordion-heading">
                            <a href="#collapse1" class="accordion-toggle" data-toggle="collapse">Расчетный счет #1</a>
                        </div>
                        <div id="collapse1" class="accordion-body collapse in">
                            <div class="accordion-inner">
                                <table class="client-data-table table table-bordered table-hover">
                                    <tbody>
                                        <tr>
                                            <td>Номер счета</td>
                                            <td>123743267000012351543300</td>
                                        </tr>
                                        <tr>
                                            <td>Территориальный банк</td>
                                            <td>Северо-Западный территориальный банк</td>
                                        </tr>
                                        <tr>
                                            <td>Субьект федерации(ГОСБ/ОСБ)</td>
                                            <td>Ленинградская область</td>
                                        </tr>
                                        <tr>
                                            <td>Баланс</td>
                                            <td style="text-align:right">1.000.000,00 руб.</td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                    <div class="accordion-group">
                        <div class="accordion-heading">
                            <a href="#collapse2" class="accordion-toggle" data-toggle="collapse">Расчетный счет #2</a>
                        </div>
                        <div id="collapse2" class="accordion-body collapse in">
                            <div class="accordion-inner">
                                <table class="client-data-table table table-bordered table-hover">
                                    <tbody>
                                        <tr>
                                            <td>Номер счета</td>
                                            <td>188092466777012351543300</td>
                                        </tr>
                                        <tr>
                                            <td>Территориальный банк</td>
                                            <td>Средне-русский банк</td>
                                        </tr>
                                        <tr>
                                            <td>Субьект федерации(ГОСБ/ОСБ)</td>
                                            <td>Московская область</td>
                                        </tr>
                                        <tr>
                                            <td>Баланс</td>
                                            <td style="text-align:right">2.367.015,00 руб.</td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                    <div class="accordion-group">
                        <div class="accordion-heading">
                            <a href="#collapse3" class="accordion-toggle" data-toggle="collapse">Кредит</a>
                        </div>
                        <div id="collapse3" class="accordion-body collapse in">
                            <div class="accordion-inner"></div>
                        </div>
                    </div>
                </div>
            </div>
            <div id="contacts" class="tab-pane fade">
                <div id="contactsList" class="accordion">
                    <div class="accordion-group">
                        <div class="accordion-heading">
                            <a href="#contact1" class="accordion-toggle" data-toggle="collapse">Иванов Иван Иванович - Генеральный директор&nbsp;<i class="icon-ok" title="Основной контакт"></i></a>
                        </div>
                        <div id="contact1" class="accordion-body collapse in">
                            <div class="accordion-inner">
                                <table class="client-data-table table table-bordered table-hover">
                                    <tr>
                                        <td>ФИО</td>
                                        <td>Иванов Иван Иванович</td>
                                    </tr>
                                    <tr>
                                        <td>Должность</td>
                                        <td>Генеральный директор</td>
                                    </tr>
                                    <tr>
                                        <td>Паспортные данные</td>
                                        <td>12 34 908072, Выдан 25.02.1980 Отделом №1 УВД По Алексеевскому району г.Москва</td>
                                    </tr>
                                    <tr>
                                        <td>Телефон</td>
                                        <td>+7 (916) 345-87-24</td>
                                    </tr>
                                    <tr>
                                        <td>Рабочий телефон</td>
                                        <td>+7 (499) 365-22-24</td>
                                    </tr>
                                    <tr>
                                        <td>EMail</td>
                                        <td><a href="mailto:example@example.org">example@example.org</a></td>
                                    </tr>
                                </table>
                            </div>
                        </div>
                    </div>
                    <div class="accordion-group">
                        <div class="accordion-heading">
                            <a href="#contact2" class="accordion-toggle" data-toggle="collapse">Кузнецов Денис Игоревич - Главный бухгалтер</a>
                        </div>
                        <div id="contact2" class="accordion-body collapse in">
                            <div class="accordion-inner">
                                <table class="client-data-table table table-bordered table-hover">
                                    <tr>
                                        <td>ФИО</td>
                                        <td>Кузнецов Денис Игоревич</td>
                                    </tr>
                                    <tr>
                                        <td>Должность</td>
                                        <td>Главный бухгалтер</td>
                                    </tr>
                                    <tr>
                                        <td>Паспортные данные</td>
                                        <td>32 14 872452, Выдан 25.02.1980 Отделом №1 УВД По Алексеевскому району г.Москва</td>
                                    </tr>
                                    <tr>
                                        <td>Телефон</td>
                                        <td>+7 (916) 345-87-24</td>
                                    </tr>
                                    <tr>
                                        <td>Рабочий телефон</td>
                                        <td>+7 (499) 365-22-24</td>
                                    </tr>
                                    <tr>
                                        <td>EMail</td>
                                        <td><a href="mailto:example@example.org">example@example.org</a></td>
                                    </tr>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div id="history" class="tab-pane fade">
                <table class="contact-w-client-table table table-hover table-bordered">
                    <thead>
                        <tr>
                            <th>Дата контакта</th>
                            <th>Тип контакта</th>
                            <th>Комментарий</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td style="text-align:right;">01.01.2011 08:00</td>
                            <td>Звонок клиенту со оператора <a href="">#467294</a> <i class="icon-user"></i> <a>Марии Петровны Порываевой</a></td>
                            <td>
                                Звонок клиенту с предложением выгодных условий новогоднего кредита.<br>
                                Клиент оказался очень удивлен.<br>
                                Результат звонка - договоренность о звонке "на рождество".
                            </td>
                        </tr>
                        <tr>
                            <td style="text-align:right;">03.01.2011 12:18</td>
                            <td>Визит в <i class="icon-home"></i><a href="">Смоленское отделение</a>. Обслуживался клиентским менеджеров <a href="">#994236</a> <i class="icon-user"></i> <a>Виктор Семенович Фирсов</a></td>
                            <td>
                                Взял кредит.<br/>
                                Поблагодарил сотрудников, донесших полную информацию
                            </td>
                        </tr>
                        <tr>
                            <td style="text-align:right;">20.01.2011 12:18</td>
                            <td>Звонок от клиента</td>
                            <td>Решение вопросов с неправильной зарплатной ведомость. <br/>Звонок переведен в службу поддержки Сбербанк Бизнес Онлайн</td>
                        </tr>
                        <tr>
                            <td style="text-align:right;">03.01.2011 12:18</td>
                            <td>Визит в <i class="icon-home"></i><a href="">Тверское отделение</a>. Обслуживался клиентским менеджеров <a href="">#887426</a> <i class="icon-user"></i> <a>Павел Андреевич Тянитолкай</a></td>
                            <td>
                                Погасил кредит.<br/>
                                Поблагодарил сотрудников, подсказавших нужное окошко
                            </td>
                        </tr>
                    </tbody>
                </table>
                <div class="pagination">
                  <ul>
                    <li class="disabled"><a href="#">&laquo;&nbsp;Назад</a></li>
                    <li class="active"><a href="#">1</a></li>
                    <li><a href="#">2</a></li>
                    <li><a href="#">3</a></li>
                    <li><a href="#">4</a></li>
                    <li><a href="#">Вперед&nbsp;&raquo;</a></li>
                  </ul>
                </div>
            </div>
          </div>
        </div>
      </div>


      <hr>

      <footer>
        <p>&copy; Сбербанк Технологии 2012</p>
      </footer>

    </div>
  </body>
</html>

