<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" type="image/png" sizes="16x16" href="<c:url value="/admin-resources/plugins/images/logo.png"/>">
    <title>
        <tiles:insertAttribute name="title"/>
    </title>
    <link href="<c:url value="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css"/>" rel="stylesheet"/>
    <link href="<c:url value="/admin-resources/bootstrap/dist/css/bootstrap.min.css"/>" rel="stylesheet">
    <link href="<c:url value="/admin-resources/plugins/bower_components/bootstrap-extension/css/bootstrap-extension.css"/>" rel="stylesheet">
    <link href="<c:url value="/admin-resources/plugins/bower_components/sidebar-nav/dist/sidebar-nav.min.css"/>" rel="stylesheet">
    <link href="<c:url value="/admin-resources/css/animate.css"/>" rel="stylesheet">
    <link href="<c:url value="/admin-resources/css/style.min.css"/>" rel="stylesheet">
    <link href="<c:url value="/admin-resources/css/colors/megna.css"/>" id="theme" rel="stylesheet">
    <link href="<c:url value="/resources/css/sub-content.css"/>" rel="stylesheet">
    <script>
        (function (i, s, o, g, r, a, m) {
            i['GoogleAnalyticsObject'] = r;
            i[r] = i[r] || function () {
                (i[r].q = i[r].q || []).push(arguments)
            }, i[r].l = 1 * new Date();
            a = s.createElement(o)
                , m = s.getElementsByTagName(o)[0];
            a.async = 1;
            a.src = g;
            m.parentNode.insertBefore(a, m)
        })(window, document, 'script', 'https://www.google-analytics.com/analytics.js', 'ga');
        ga('create', 'UA-19175540-9', 'auto');
        ga('send', 'pageview');
    </script>
</head>

<body>
<div id="wrapper">
    <tiles:insertAttribute name="index-01"/>
    <tiles:insertAttribute name="index-02"/>
    <div id="page-wrapper">
        <div class="container-fluid">
            <div class="row bg-title">
                <div class="col-lg-3 col-md-4 col-sm-4 col-xs-12">
                    <h4 class="page-title">Báo cáo số liệu bệnh nhân và doanh thu</h4>
                </div>
                <div class="col-lg-9 col-sm-8 col-md-8 col-xs-12">
                    <a href="/" target="_blank" class="btn btn-danger pull-right m-l-20 btn-rounded btn-outline hidden-xs hidden-sm waves-effect waves-light">Trang chủ</a>
                </div>
            </div>
            <div class="row">
                <div class="row-sm-12 stselect2-arrow">
                    <label>chọn năm</label>
                    <select class="form-select" aria-label="Default select example">
                        <option value="2018"> <a href="#" onclick="myChart1(2018)">2018</a></option>
                        <option value="2019"> <a href="#" onclick="myChart1(2019)">2019</a></option>
                        <option value="2020"> <a href="#" onclick="myChart1(2020)">2020</a></option>
                        <option selected value="2021"> <a href="#" onclick="myChart1(2021)">2021</a></option>
                    </select>
                </div>

            </div>
            <div class="row">
                <div class="col-sm-6">

                    <div class="white-box">
                        <h3 class="box-title">>Biểu đồ thống kế lượng bệnh nhân  theo quý</h3>

                        <div>
                            <canvas id="chart1" height="150"></canvas>
                        </div>
                    </div>
                </div>

<%--                có du lieu--%>
                <div class="col-sm-6">
                    <div class="white-box">
                        <h3 class="box-title">Biểu đồ thống kế lượng bệnh nhân  theo tháng</h3>
                        <div>
                            <canvas id="chart11" height="150"></canvas>
                        </div>
                    </div>
                </div>

            </div>
            <!-- /.row -->
            <!-- .row -->
            <div class="row">
                <div class="col-lg-6">
                    <div class="white-box">
                        <h3 class="box-title">Biểu đồ thống kế lượng bệnh nhân  theo năm</h3>
                        <div>
                            <canvas id="chart3" height="150"></canvas>
                        </div>
                    </div>
                </div>
                <div class="col-lg-6">
                    <div class="white-box">
                        <h3 class="box-title">Doughnut Chart</h3>
                        <div>
                            <canvas id="chart4" height="150"> </canvas>
                        </div>
                    </div>
                </div>
            </div>
            <!-- /.row -->
            <!-- .row -->
            <div class="row">
                <div class="col-lg-6">
                    <div class="white-box">
                        <h3 class="box-title">Polar Area Chart</h3>
                        <div>
                            <canvas id="chart5" height="150"></canvas>
                        </div>
                    </div>
                </div>
                <div class="col-lg-6">
                    <div class="white-box">
                        <h3 class="box-title">Radar Chart</h3>
                        <div>
                            <canvas id="chart6" height="150"></canvas>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <footer class="footer text-center"> ©Copyright 2020 - Huy & Trọng. Đã đăng ký bản quyền.</footer>
    </div>
</div>
<script src="<c:url value="/admin-resources/plugins/bower_components/jquery/dist/jquery.min.js"/>"></script>
<script src="<c:url value="/admin-resources/bootstrap/dist/js/tether.min.js"/>"></script>
<script src="<c:url value="/admin-resources/bootstrap/dist/js/bootstrap.min.js"/>"></script>
<script src="<c:url value="/admin-resources/plugins/bower_components/bootstrap-extension/js/bootstrap-extension.min.js"/>"></script>
<script src="<c:url value="/admin-resources/plugins/bower_components/sidebar-nav/dist/sidebar-nav.min.js"/>"></script>
<script src="<c:url value="/admin-resources/js/jquery.slimscroll.js"/>"></script>
<script src="<c:url value="/admin-resources/js/waves.js"/>"></script>
<script src="<c:url value="/admin-resources/js/custom.min.js"/>"></script>
<script src="<c:url value="/admin-resources/plugins/bower_components/Chart.js/chartjs.init.js"/>"></script>
<script src="<c:url value="/admin-resources/plugins/bower_components/Chart.js/Chart.min.js"/>"></script>
<script src="<c:url value="/admin-resources/plugins/bower_components/styleswitcher/jQuery.style.switcher.js"/>"></script>
<script
        src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.9.4/Chart.js">
</script>
<script>
    fetch('/api/getTotalPatients?year=2021').then(res => res.json()).then(data => {
        let lineChartData = {
            labels: ['1', '2', '3', '4', '5', '6', '7', '8', '9', '10', '11', '12'],
            datasets: [{
                label: "Tong so benh nhan trong nam",
                backgroundColor: "#234323",
                fill: true,
                data: data
            }]
        }
        let line = document.getElementById("chart11");
        new Chart(line, {
            type: 'line',
            data: lineChartData,
            options: {
                esponsive: true,
                legend: {
                    display: false,
                },
                tooltips: {
                    mode: 'index',
                    intersect: false,
                }
            }
        })
    })
</script>
<script>

        fetch('/api/getTotalPatientsOfSet?year=2021').then(res => res.json()).then(data => {
            let lineChartData = {
                labels: ['1', '2', '3', '4'],
                datasets: [{
                    label: "Tong so benh nhan trong nam",
                    backgroundColor: "#234323",
                    fill: true,
                    data: data
                }]
            }
            let line = document.getElementById("chart1");
            new Chart(line, {
                type: 'line',
                data: lineChartData,
                options: {
                    esponsive: true,
                    legend: {
                        display: false,
                    },
                    tooltips: {
                        mode: 'index',
                        intersect: false,
                    }
                }
            })
        })


</script>

<script>

    fetch('/api/getTotalPatientsOfYear').then(res => res.json()).then(data => {
        let lineChartData = {
            labels: ['2018', '2019', '2020', '2021'],
            datasets: [{
                label: "Tong so benh nhan trong nam",
                backgroundColor: "#234323",
                fill: true,
                data: data
            }]
        }
        let line = document.getElementById("chart3");
        new Chart(line, {
            type: 'line',
            data: lineChartData,
            options: {
                esponsive: true,
                legend: {
                    display: false,
                },
                tooltips: {
                    mode: 'index',
                    intersect: false,
                }
            }
        })
    })


</script>
</body>
</html>