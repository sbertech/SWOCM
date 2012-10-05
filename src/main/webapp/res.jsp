<%@page session="true" contentType="text/html" pageEncoding="UTF-8" %>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="f" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<f:setLocale  value="ru_RU"/>

    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">

    <!-- Le styles -->
    <link href="./bootstrap/css/bootstrap.css" rel="stylesheet">
    <link href="./styles.css" rel="stylesheet">
    <link href="./bootstrap/css/bootstrap-responsive.css" rel="stylesheet">

    <!-- Le HTML5 shim, for IE6-8 support of HTML5 elements -->
    <!--[if lt IE 9]>
    <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->

    <link rel="shortcut icon" href="../bootstrap/ico/favicon.ico">
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="../bootstrap/ico/apple-touch-icon-144-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="../bootstrap/ico/apple-touch-icon-114-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="../bootstrap/ico/apple-touch-icon-72-precomposed.png">
    <link rel="apple-touch-icon-precomposed" href="../bootstrap/ico/apple-touch-icon-57-precomposed.png">

    <script src="./bootstrap/js/jquery-1.8.0.js"></script>
    <script src="./bootstrap/js/bootstrap.js"></script>
    <script src="./data/GraphData.js"></script>
    <script type="text/javascript" src="./amcharts/amcharts/amcharts.js"></script>

    <script type="text/javascript">
        $(document).ready(function () {
            $('#graphTabs a').click(function (e) {
                e.preventDefault();
                $(this).tab('show');
                drawGraph("Credit", "Кредиты");
            });

            $('#graphTabs a[data-toggle="tab"]').on('shown', function (e) {
                activeTab=e.target.id;
            })
            //modals
            $(".modal").each(function(){
                var properHorMargin = $(this).width()/2;
                var properVerMargin = $(this).height()/2;
                $(this).css("margin-left", -1*properHorMargin+"px");
                $(this).css("margin-top", -1*properVerMargin+"px");
            });
            $("#loginHRef").click(function () {
                $("#user_kpi_modal").show(function(){
                    drawGraph("Credit", "Кредиты");
                });

                $("#user_kpi_modal").modal();
                return false;
            });
            //graphs
            $("#graph_type").change(function () {
                dia_type = $("#graph_type option:selected").val();
            });

            var height = 0;
            var children = $('#first-row > div');
            for (var i = 0; i < children.length; i++)
                height = Math.max($(children[i]).height(), height);
            $('#first-row > div').height(height);
            $('.contacts-list-section').height(height + 25);

            $("#graphTabs a:first").tab('show');
        });

        function drawGraph(dataType, caption) {
            dataSpec = eval(activeTab+"Data"+dataType);
            if (activeTab == "dept") {
                drawPie(dataSpec);
            } else {
                drawBar(dataSpec);
            }
            $("#stats_caption").text(caption);
        }
         function drawPie(dataSpec) {
            // PIE CHART
            $("#graph_placeholder_dept").empty();
            var chart = new AmCharts.AmPieChart();

            // title of the chart
            chart.dataProvider = dataSpec;
            chart.gradientRatio = [-0.2, 0.2];
            chart.titleField = "Имя";
            chart.valueField = "Показатель";
            chart.sequencedAnimation = true;
            chart.startEffect = "elastic";
            chart.pullOutOnlyOne = true;
            chart.innerRadius = "30%";
            chart.startDuration = 2;
            chart.labelText = "[[value]]";
            chart.labelRadius = 15;
            chart.colors = [ "#3a87ad", "#468847", "#c09853", "#b94a48", "#999999"];
            chart.depth3D = 7;
            chart.angle = 25;
            chart.write("graph_placeholder_dept");
            return chart;
        }

        function drawBar(data) {
            $("#graph_placeholder_time").empty();
            // SERIAL CHART
            var chart = new AmCharts.AmSerialChart();
            chart.dataProvider = data;
            chart.categoryField = "Месяц";
            chart.startDuration = 1;
            chart.plotAreaBorderColor = "#DADADA";
            chart.plotAreaBorderAlpha = 1;
            // this single line makes the chart a bar chart
           // chart.rotate = true;

            // AXES
            // Category
            var categoryAxis = chart.categoryAxis;
            categoryAxis.gridPosition = "start";
            categoryAxis.gridAlpha = 0.1;
            categoryAxis.axisAlpha = 0;

            // Value
            var valueAxis = new AmCharts.ValueAxis();
            valueAxis.axisAlpha = 0;
            valueAxis.gridAlpha = 0.1;
            valueAxis.position = "top";
            chart.addValueAxis(valueAxis);

            // GRAPHS
            // first graph
            var graph1 = new AmCharts.AmGraph();
            graph1.type = "column";
            graph1.title = "План";
            graph1.valueField = "План";
            graph1.balloonText = "План:[[value]]";
            graph1.lineAlpha = 0;
            graph1.fillColors = "#ADD981";
            graph1.fillAlphas = 1;
            chart.addGraph(graph1);

            // second graph
            var graph2 = new AmCharts.AmGraph();
            graph2.type = "column";
            graph2.title = "Фактически";
            graph2.valueField = "Фактически";
            graph2.balloonText = "Фактически:[[value]]";
            graph2.lineAlpha = 0;
            graph2.fillColors = "#81acd9";
            graph2.fillAlphas = 1;
            chart.addGraph(graph2);

            // LEGEND
            var legend = new AmCharts.AmLegend();
            chart.addLegend(legend);

            // WRITE
            chart.write("graph_placeholder_time");
            return chart;
        }
    </script>
