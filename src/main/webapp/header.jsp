<%@page session="true" contentType="text/html" pageEncoding="UTF-8" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="f" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<f:setLocale  value="ru_RU"/>

<div class="navbar navbar-fixed-top">
    <div class="navbar-inner">
        <div class="container-fluid">
            <a class="brand" href="./index.jsp">Рабочее место сотрудника</a>
            <div class="nav-collapse collapse">
                <ul class="nav">
                    <li><a href="#">Клиенты</a></li>
                    <li><a href="#about">Задачи&nbsp;<b>(15)</b></a></li>
                    <li><a href="#contact">Звонки&nbsp;<b>(3)</b></a></li>
                    <li><a onclick="$('#loanApplication').modal(); return false;" href="#">Подать заявку на кредит &laquo;Доверие&raquo;</a></li>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">Операции&nbsp;<b
                                class="caret"></b></a>
                        <ul class="dropdown-menu">
                            <li><a href="#">РКО</a></li>
                            <li><a href="#">Кредиты</a></li>
                            <li><a href="#">Размещение денежных средств</a></li>
                            <li><a href="#">Единый договор банковского обслуживания</a></li>
                            <li><a href="#">Документные операции</a></li>
                            <li class="divider"></li>
                            <li><a href="#">Инкассация</a></li>
                            <li><a href="#">Эквайринг</a></li>
                            <li><a href="#">Банковские карты</a></li>
                            <li><a href="#">Аренда сейфов</a></li>
                            <li><a href="#">Продукты Сбербанк Лизинг</a></li>
                            <li class="divider"></li>
                            <li><a href="#">Реестр залогов Сбербанка</a></li>
                            <li><a href="#">Брокерские услуги</a></li>
                            <li><a href="#">Инвестиции в ценные бумаги</a></li>
                            <li><a href="#">Драгоценные металлы и монеты</a></li>
                        </ul>
                    </li>
                </ul>
                <ul class="nav pull-right">
                    <li>
                        <a  href="" style="padding:0;padding-top:5px" id="my_profile_link" data-placement="left" data-original-title="Мой профиль"><b>Чехов Антон Павлович &darr;</b></a>
                        <a href="#" rel="tooltip" id="kpi_progress_link" style="padding:0" data-placement="bottom" data-original-title="Мой прогресс - 74% (детали)">
                            <div id="loginHRef" class="progress progress_small">
                                <div class="bar bar-danger progress_small" style="width: 20%;"></div>
                                <div class="bar bar-warning progress_small" style="width: 46%;"></div>
                                <div class="bar bar-success progress_small" style="width: 8%;"></div>
                            </div>
                        </a>
                    </li>
                </ul>
            </div>
            <!--/.nav-collapse -->
        </div>
    </div>
</div>

<div class="modal hide fade" id="user_kpi_modal" style="width: 780px;">
    <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal"
                aria-hidden="true">&times;</button>
        <h3>
            <a href="#">Чехов Антон Павлович</a> - производительность
        </h3>
    </div>
    <div class="modal-body container-fluid">
        <div class="row-fluid">
            <div class="span6">
                <div>
                    <h4>Прогресс <span class="text-info" id="progress_caption"></span></h4>
                    <div class="progress">
                        <div id="progress_danger" class="bar bar-danger " style="width: 20%;"></div>
                        <div id="progress_warn" class="bar bar-warning " style="width: 46%;"></div>
                        <div id="progress_success" class="bar bar-success " style="width: 8%;"></div>
                    </div>
                </div>
                <div>
                    <h4>Успехи</h4>
                    <table class="table table-bordered table-hover">
                        <thead class="caption">
                        <tr class="caption">
                            <td>Задачи</td>
                            <td>План</td>
                            <td>Фактически</td>
                        </tr>
                        </thead>
                        <tbody>
                        <tr class="warning">
                            <td onClick="drawGraph('Credit', 'Кредиты')">Кредиты</td>
                            <td><a href="#stats_credit_plan" data-toggle="modal">20</a></td>
                            <td>
                                <a href="#stats_credit_fact" data-toggle="modal">3</a>
                            </td>
                        </tr>
                        <tr class="success">
                            <td onClick="drawGraph('Depos', 'Депозиты')">Депозиты</td>
                            <td>5</td>
                            <td>6</td>
                        </tr>
                        <tr class="success">
                            <td onClick="drawGraph('Calls', 'Звонки')">Звонки</td>
                            <td>15</td>
                            <td>20</td>
                        </tr>
                        <tr class="error">
                            <td onClick="drawGraph('Clients', 'Клиенты')">Новые клиенты</td>
                            <td>10</td>
                            <td>1</td>
                        </tr>
                        <tr class="success" onClick="drawGraph('Meetings', 'Встречи')">
                            <td>Встречи</td>
                            <td>2</td>
                            <td>2</td>
                        </tr>
                        </tbody>
                    </table>
                </div>
            </div>
            <div class="span6">
                <h4>Статистика: <span class="text-info" id="stats_caption"></span></h4>
                <div id="statsContent" class="container-fluid">
                    <ul id="graphTabs" class="nav nav-tabs">
                        <li><a href="#graph_placeholder_dept" data-toggle="tab" id="dept">По отделу</a></li>
                        <li><a href="#graph_placeholder_time" data-toggle="tab" id="time">Во времени</a></li>
                    </ul>
                    <div class="tab-content">
                        <div id="graph_placeholder_dept" class="tab-pane" style="width:300px; height: 280px"></div>
                        <div id="graph_placeholder_time" class="tab-pane" style="width:300px; height: 280px"></div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="modal-footer">
        <a href="#" class="btn btn-primary" onClick="$('#user_kpi_modal').modal('hide')">Закрыть</a>
    </div>
</div>
<div class="modal hide fade" id="stats_credit_plan" tabindex="-1" role="dialog"
     aria-labelledby="credit_plan_label" aria-hidden="true">
    <div class="modal-header">
        <button type="button" class="close"
                onClick="$('#stats_credit_plan').modal('hide')">×
        </button>
        <h5 id="credit_plan_label">Запланировано: выдача кредитов</h5>
    </div>
    <div class="modal-body container-fluid">
        <table class="table table-bordered table-hover">
            <tr>
                <td>Общее по отделу</td>
                <td>6</td>
            </tr>
            <tr>
                <td>Назначено <a href="#">Руководителем</a></td>
                <td>4</td>
            </tr>
        </table>
    </div>
    <div class="modal-footer">
        <button class="btn" onClick="$('#stats_credit_plan').modal('hide')">Закрыть</button>
    </div>
</div>

<div class="modal hide fade" id="stats_credit_fact" tabindex="-1" role="dialog"
     aria-labelledby="credit_fact_label" aria-hidden="true">
    <div class="modal-header">
        <button type="button" class="close"
                onClick="$('#stats_credit_fact').modal('hide')">×
        </button>
        <h5 id="credit_fact_label">Выдано кредитов</h5>
    </div>
    <div class="modal-body container-fluid">
        <table class="table table-bordered table-hover">
            <tr>
                <th>Организация</th>
                <th>Тип кредита</th>
                <th>Cумма</th>
                <th>Статус</th>
            </tr>
            <tr class="success">
                <td><a href="#">ООО Рога и копыта</a></td>
                <td>Срочный</td>
                <td style="text-align:right">10.000.000 руб.</td>
                <td>Выдано</td>
            </tr>
            <tr class="success">
                <td><a href="#">ИП Толстой Л.Н.</a></td>
                <td>На развитие</td>
                <td style="text-align:right">55.000.000 руб.</td>
                <td>Одобрено</td>
            </tr>
            <tr class="warning">
                <td><a href="#">ЗАО Ненадежный Клиент</a></td>
                <td>Срочный</td>
                <td style="text-align:right">400.000 руб.</td>
                <td><a href="#">Рассмотрение</a></td>
            </tr>
        </table>
    </div>
    <div class="modal-footer">
        <button class="btn" onClick="$('#stats_credit_fact').modal('hide')">Закрыть</button>
    </div>
</div>
