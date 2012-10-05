<%@page session="true" contentType="text/html" pageEncoding="UTF-8" %>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="f" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<f:setLocale  value="ru_RU"/>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>Единое рабочее место сотрудника. Прототип.</title>

    <jsp:include page="./res.jsp" />

    <script type="text/javascript">
        var activeTab = "dept";
        $(document).ready(function () {
            //tabs
            $('#clientsTab a').click(function (e) {
                e.preventDefault();
                $(this).tab('show');
            });
            $("#clientsTab a:first").tab('show');


            $(".contact").click(function() {
                var width = $("#contacts-list").width();
                $("#messages-div").animate({left: '-='+width}, {duration: 500});
            });

            $("#back").click(function(){
                var width = $("#contacts-list").width();
                $("#messages-div").animate({left: '+='+width}, {duration: 500});
            });
        });
    </script>
</head>

<body>
    <jsp:include page="./header.jsp" />

<div class="container-fluid">
<!-- Example row of columns -->
<div id="first-row" class="row-fluid">
<div class="span3 efs-section">
    <div class="efs-section-after">Мои клиенты</div>
    <ul id="clientsTab" class="nav nav-tabs">
        <li><a href="#search" data-toggle="tab">Поиск</a></li>
        <li><a href="#favorites" data-toggle="tab">Избранные</a></li>
    </ul>
    <div id="clientsTabContent" class="tab-content">
        <div id="search" class="tab-pane fade">
            <form action="" class="form">
                <div class="controls controls-row">
                    <label class="span3" for="">Код<span class="help-block">(ИНН и др.)</span></label>
                    <input class="span7 pull-right" type="text" id="name" placeholder="Код компании...">
                </div>
                <div class="controls controls-row">
                    <label class="span3" for="name">Наименование</label>
                    <input class="span7 pull-right" type="text" id="name" placeholder="Наименование компании..."
                           value="РО">
                </div>
                <div class="controls controls-row">
                    <button class="btn pull-right"><i class="icon-search"></i>&nbsp;Найти</button>
                </div>
            </form>
            <table class="table table-hover nomargin">
                <tr>
                    <td>
                        <i class="icon-home"></i>&nbsp;<a href="./clientProfile.jsp">ООО &laquo;<b>Ро</b>га и
                        копыта&raquo;</a><br>
                        <small><span class="muted">Категория:&nbsp;</span>&nbsp;<span class="text-success">Средний бизнес</span>
                        </small>
                    </td>
                </tr>
                <tr>
                    <td>
                        <i class="icon-home"></i>&nbsp;<a href="./clientProfile.jsp">ОАО &laquo;Нефте-юганская
                        столовая для су<b>ро</b>вых мужчин&raquo;</a><br>
                        <small><span class="muted">Категория:&nbsp;</span>&nbsp;<span
                                class="text-error">VIP</span></small>
                    </td>
                </tr>
                <tr>
                    <td>
                        <i class="icon-user"></i>&nbsp;<a href="">ИП &laquo;Кузнецов Андрей Пет<b>ро</b>вич&raquo;
                    </a><br>
                        <small><span class="muted">Категория:&nbsp;</span>&nbsp;<span
                                class="text-success">Малый бизнес</span>
                        </small>
                    </td>
                </tr>
                <tr>
                    <td></td>
                </tr>
            </table>
            <div class="row">
                <a href="" class="pull-right">
                    <small>Все найденные...</small>
                </a>
            </div>
        </div>
        <div id="favorites" class="tab-pane fade">
            <table class="table table-hover">
                <tr>
                    <td>
                        <a href="./clientProfile.jsp"><i class="icon-home"></i>&nbsp;ООО &laquo;Рога и копыта&raquo;
                        </a><br>
                        <small><span class="muted">Категория:&nbsp;</span>&nbsp;<span class="text-success">Средний бизнес</span>
                        </small>
                    </td>
                </tr>
                <tr>
                    <td>
                        <a href="./clientProfile.jsp"><i class="icon-home"></i>&nbsp;ОАО &laquo;Нефте-юганская
                            столовая для суровых мужчин&raquo;</a><br>
                        <small><span class="muted">Категория:&nbsp;</span>&nbsp;<span class="text-success">Средний бизнес</span>
                        </small>
                    </td>
                </tr>
                <tr>
                    <td>
                        <a href=""><i class="icon-user"></i>&nbsp;ИП &laquo;Кузнецов Андрей Петрович&raquo;
                        </a><br>
                        <small><span class="muted">Категория:&nbsp;</span>&nbsp;<span class="text-success">Средний бизнес</span>
                        </small>
                    </td>
                </tr>
                <tr>
                    <td></td>
                </tr>
            </table>
        </div>
    </div>
</div>
<div class="span6 efs-section">
    <div class="efs-section-after">Мои задачи</div>
    <table class="table table-hover">
        <thead>
        <tr>
            <th>Время</th>
            <th>Описание</th>
            <th width="35px"></th>
        </tr>
        </thead>
        <tbody>
        <tr>
            <td>09:00</td>
            <td>
                Позвонить клиенту <i class="icon-home"></i>&nbsp;<a href="./clientProfile.jsp">ОАО &laquo;Салон
                красоты на Тверской&raquo;</a> - контактное лицо&nbsp;<i class="icon-user"></i>&nbsp;<a href="">Иванов
                Иван Иванович</a>
                <hr class="nomargin">
                Договоренность о звонке, была достигнута во время планового обзвона клиента с предложением
                кредита "Доверие"
                по программе малого и среднего бизнеса
            </td>
            <td>
                <div class="btn-group">
                    <button class="btn" title="Задача выполнена">
                        <i class="icon-ok"></i>
                    </button>
                </div>
            </td>
        </tr>
        <tr class="info">
            <td>11:15</td>
            <td>Обработать заявку на кредит <a href="">#102354&nbsp;&raquo;</a></td>
            <td>
                <div class="btn-group">
                    <button class="btn" title="Задача выполнена">
                        <i class="icon-ok"></i>
                    </button>
                </div>
            </td>
        </tr>
        <tr>
            <td>12:30</td>
            <td>Написать ежедневный <a href="">Отчет</a> совместно с <i class="icon-user"></i>&nbsp;<a href="">Королев Сергей Викторович</a></td>
            <td>
                <div class="btn-group">
                    <button class="btn" title="Задача выполнена">
                        <i class="icon-ok"></i>
                    </button>
                </div>
            </td>
        </tr>
        <tr class="warning">
            <td style="text-align: center">
                <span class="btn btn-small btn-danger">!</span>
            </td>
            <td>
                Позвонить клиенту <i class="icon-user"></i>&nbsp;<a href="">ИП &laquo;Иванов Иван Иванович&raquo;</a>
                <hr class="nomargin">
                Договоренность о звонке, была достигнута во время планового обзвона клиента с предложением
                кредита "Доверие"
                по программе малого и среднего бизнеса
            </td>
            <td>
                <div class="btn-group">
                    <button class="btn" title="Задача выполнена">
                        <i class="icon-ok"></i>
                    </button>
                </div>
            </td>
        </tr>
        <tr class="info">
            <td></td>
            <td>Обработать заявку на кредит <a href="">#102354&nbsp;&raquo;</a></td>
            <td>
                <div class="btn-group">
                    <button class="btn" title="Задача выполнена">
                        <i class="icon-ok"></i>
                    </button>
                </div>
            </td>
        </tr>
        </tbody>
    </table>
    <div class="button-footer"><a class="btn" href="#"><i class="icon-th-list"></i>&nbsp;Все задачи</a>&nbsp;<a
            class="btn" href="#"><i class="icon-calendar"></i>&nbsp;Календарь</a></div>
</div>
<div class="span3 pull-right efs-section contacts-list-section">
    <div class="efs-section-after">Мои коллеги</div>

    <div id="messages-div">
        <div class="messages pull-right">
            <div class="efs-section-after" style="-webkit-border-radius: 0px; -moz-border-radius: 0px; border-radius: 0px;">
                <div class="btn-toolbar">
                  <div class="btn-group">
                    <button class="btn" id="back">&laquo;&nbsp;Вернуться</button>
                  </div>
                </div>
            </div>
            <div class="messages-history">
                <div class="muted small-text message-date">28.09.2012 12:01</div>
                <div class="popover incoming right">
                  <div class="arrow"></div>
                  <div class="popover-content">
                    <p>Антон, необходимо составить еженедельный отчет по продажам депозитов. 
                    Он должен включать в себя список проданных продуктов с указанием даты, клиента, проделанной работы.
                    </p>
                  </div>
                </div>
                <div class="clearfix"></div>
                <div class="muted small-text message-date">27.09.2012 14:02</div>
                <div class="popover my left">
                  <div class="arrow"></div>
                  <div class="popover-content">
                    <p>Направил им наше предложение 01.09.2012 в email. Жду подтверждения о получении.</p>
                  </div>
                </div>
                <div class="clearfix"></div>
                <div class="muted small-text message-date">25.09.2012 09:20</div>
                <div class="popover incoming right">
                  <div class="arrow"></div>
                  <div class="popover-content">
                    <p>Антон, как дела с клиентом ООО &laquo;Рога и копыта&raquo;?</p>
                  </div>
                </div>
                <div class="clearfix"></div>
            </div>
            <div class="efs-section-footer" style="">
                <table style="width: 100%">
                    <tr>
                        <td style="width: 100%; padding-right: 8px;"><input style="width: 100%" type="text" name="message" placeholder="Введите сообщение..." /></td>
                        <td>
                            <div class="btn-toolbar" style="padding-right: 0px; margin-right: 0px;">
                              <div class="btn-group">
                                <button class="btn" type="submit">Отправить</button>
                              </div>
                            </div>
                        </td>
                    </tr>
                </table>
            </div>
        </div>
        <div class="contacts-list pull-left">
            <table id="contacts-list" class="">
                <tr class="contact">
                    <td class="avatar-cell">
                        <img src="./img/foto_1.jpg" class="avatar" />
                    </td>
                    <td class="main-cell">
                        <div>
                            <div class="pull-left fio" title="Иванов Иван Иванович">Иванов И. И.</div>
                            <div class="pull-right last-message-time muted small-text">12:01</div>
                            <div class="clearfix"></div>
                        </div>
                        <div class="small-text muted last-message">Антон, необходимо составить еженeльный отчет по продажам депозитов</div>
                    </td>
                    <td class="view-history">
                        <div class="button-placeholder">
                            <a class="view-chat">›</a>
                        </div>
                    </td>
                </tr>
                <tr class="contact">
                    <td class="avatar-cell">
                        <img src="./img/foto_2.jpg" class="avatar" />
                    </td>
                    <td class="main-cell">
                        <div>
                            <div class="pull-left fio" title="Краснова Анастасия Максимовна">Краснова А. M</div>
                            <div class="pull-right last-message-time muted small-text">13:35</div>
                            <div class="clearfix"></div>
                        </div>
                        <div class="small-text muted last-message">Привет! Прошу проверить заявку на кредит от 01.09.2012, клиент &laquo;Рога и копыта&raquo;</div>
                    </td>
                    <td class="view-history">
                        <div class="button-placeholder">
                            <a class="view-chat">›</a>
                        </div>
                    </td>
                </tr>
                <tr class="contact">
                    <td class="avatar-cell">
                        <img src="./img/foto_3.jpg" class="avatar" />
                    </td>
                    <td class="main-cell">
                        <div>
                            <div class="pull-left fio">Иванов И. И.</div>
                            <div class="pull-right last-message-time muted small-text">18:05</div>
                            <div class="clearfix"></div>
                        </div>
                        <div class="small-text muted last-message">Направляю информацию по новому клиенту...</div>
                    </td>
                    <td class="view-history">
                        <div class="button-placeholder">
                            <a class="view-chat">›</a>
                        </div>
                    </td>
                </tr>
            </table>
            <div class="button-footer"><a class="btn" href="#">Мой отдел&nbsp;&raquo;</a></div>
        </div>
    </div>


</div>
</div>

<hr>

<footer>
    <p>&copy; Сбербанк Технологии 2012</p>
</footer>

</div>
<!-- /container -->

	<div class="modal hide fade" id="loanApplication" style="width: 780px; height: 640px;">
		<div class="modal-header">
			<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
			<h3>Заявка на кредит &laquo;Доверие&raquo;</h3>
		</div>
		<div class="modal-body container-fluid" style="max-height: 680px;">
            <div class="form-horizontal">
                <div class="row-fluid control-group">
                    <label class="control-label" for="branch">Отделение(Управление)</label>
                    <div class="controls input-append span8">
                        <input type="text" id="branch" placeholder="..." class="span12" value="ВЕРНАДСКОЕ ОСБ №7970" /><span class="add-on">...</span>
                    </div>
                </div>
                <div class="row-fluid">
                    <div class="span5">
                        <label class="control-label" for="startNumber">Исх. № заявки</label>
                        <div class="controls">
                            <input type="text" id="startNumber" placeholder="..." />
                        </div>
                    </div>
                    <div class="span5">
                        <label class="control-label" for="from">от</label>
                        <div class="controls">
                            <input id="from" size="6" type="text">
                        </div>
                    </div>
                </div>
                <div class="row-fluid">
                    <div class="span5">
                        <label class="control-label" for="inputNumber">Вх. №</label>
                        <div class="controls">
                            <input type="text" id="inputNumber" style="text-align: right;" placeholder="..." value="123176341"/>
                        </div>
                    </div>
                    <div class="span5">
                        <label class="control-label" for="inputFrom">от</label>
                        <div class="controls">
                            <input id="inputFrom" size="16" type="text" style="text-align: right;" value="30.08.2012">
                        </div>
                    </div>
                </div>
                <div class="row-fluid">
                    <div class="span5">
                        <label class="control-label" for="sum">Сумма</label>
                        <div class="controls">
                            <input type="text" style="text-align: right;" id="sum" placeholder="..." value="3 000 000.00"/>
                        </div>
                    </div>
                    <div class="span5">
                        <label class="control-label" for="currency">Валюта</label>
                        <div class="controls">
                            <select id="currency">
                                <option selected="s">Российский рубль</option>
                            </select>
                        </div>
                    </div>
                </div>
                <div class="row-fluid">
                    <div class="span5">
                        <label class="control-label" for="dueDate">Срок кредита (мес.)</label>
                        <div class="controls">
                            <input type="text" style="text-align: right;" id="dueDate" placeholder="..." value="36" />
                        </div>
                    </div>
                    <div class="span5">
                        <label class="control-label" for="percents">Cтавка</label>
                        <div class="controls">
                            <input type="text" style="text-align: right;" id="percents" placeholder="..." value="19.5"/>
                        </div>
                    </div>
                </div>
                <div class="row-fluid control-group">
                    <label class="control-label" for="goal">Назначение кредита</label>
                    <div class="controls">
                        <input type="text" id="goal" placeholder="..." class="span12" value="без цели"/>
                    </div>
                </div>
                <div class="row-fluid control-group">
                    <label class="control-label" for="deposit">Форма обеспечения</label>
                    <div class="controls">
                        <input type="text" id="deposit" placeholder="..." class="span12" value="поручительство собственника бизнеса"/>
                    </div>
                </div>
                <div class="row-fluid control-group">
                    <label class="control-label" for="terms">Условия выдачи</label>
                    <div class="controls">
                        <input type="text" id="terms" placeholder="..." class="span12" value="единовременное зачисления"/>
                    </div>
                </div>
                <div class="row-fluid control-group">
                    <label class="control-label" for="returnTerms">Условия погашения</label>
                    <div class="controls">
                        <input type="text" id="returnTerms" placeholder="..." class="span12" value="ежемесячно, аннуитентными платежами"/>
                    </div>
                </div>
                <div class="row-fluid control-group">
                    <label class="control-label" for="returnPercentTerms">Погашение процентов</label>
                    <div class="controls">
                        <input type="text" id="returnPercentTerms" placeholder="..." class="span12" value="ежемесячно, вместе с основным долгом"/>
                    </div>
                </div>
                <div class="row-fluid control-group">
                    <label class="control-label" for="reglament">Регламент</label>
                    <div class="controls">
                        <select id="reglament" class="span12">
                            <option value="1">Регламент кредитования сегмента МБ (скоринг) 1948</option>
                        </select>
                    </div>
                </div>
                <div class="row-fluid control-group">
                    <label class="control-label" for="kind">Вид кредита</label>
                    <div class="controls">
                        <select id="kind" class="span12">
                            <option value="1">Кредит <Доверие> (ЮЛ/ИП)</option>
                        </select>
                    </div>
                </div>
                <div class="row-fluid control-group">
                    <label class="control-label" for="goalOfLoan">Цель кредита</label>
                    <div class="controls">
                        <select id="goalOfLoan" class="span12">
                            <option value="1" selected="">без цели</option>
                        </select>
                    </div>
                </div>
            </div>
        </div>
		<div class="modal-footer">
			<a href="#" class="btn btn-primary" data-dismiss="modal" aria-hidden="true">Закрыть</a>
		</div>
	</div>
</body>
</html>
