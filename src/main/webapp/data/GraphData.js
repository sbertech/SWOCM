/**
 * Created with IntelliJ IDEA.
 * User: nik
 * Date: 24.09.12
 * Time: 18:40
 * To change this template use File | Settings | File Templates.
 */
function prepareDeptData(my, average, plan) {
    statsData = [
        {
            Имя:"Чехов Антон Павлович",
            Показатель:my
        },
        {
            Имя:"Толстой Лев Николаевич",
            Показатель:Math.round(average * Math.random()) + 3
        },
        {
            Имя:"Пешков Алексей Максимович",
            Показатель:Math.round(average * Math.random()) + 2
        }

    ];
    return statsData;
}
var months = [/*"Январь","Февраль", "Март", "Апрель", "Май", */"Июнь", "Июль", "Август", "Сентябрь"/*, "Октябрь"*/];
function prepareDataTime(average) {
    var timeData = new Array();
    for (var i=0;i<months.length;i++) {
        var av = Math.floor((Math.random()*average)) + average;
        timeData.push({
            Месяц: months[i],
            План:Math.floor((Math.random()*av)) + 2,
            Фактически: Math.ceil((Math.random()*av)) + 2
        });
    }
    return timeData;
}

deptDataCredit = prepareDeptData(3, 5, 20);
deptDataDepos = prepareDeptData(6, 2, 2);
deptDataCalls = prepareDeptData(20, 13, 15);
deptDataClients = prepareDeptData(1, 5, 10);
deptDataMeetings = prepareDeptData(2, 2, 3);

timeDataCredit = prepareDataTime(10);
timeDataDepos = prepareDataTime(6);
timeDataCalls = prepareDataTime(15);
timeDataClients = prepareDataTime(3);
timeDataMeetings = prepareDataTime(25);



