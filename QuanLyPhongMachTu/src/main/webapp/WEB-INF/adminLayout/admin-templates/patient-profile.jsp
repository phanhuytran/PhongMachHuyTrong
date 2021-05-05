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
</head>

<body>
<div id="wrapper">
    <tiles:insertAttribute name="index-01"/>
    <tiles:insertAttribute name="index-02"/>
    <div id="page-wrapper">
        <div class="container-fluid">
            <div class="row bg-title">
                <div class="col-lg-3 col-md-4 col-sm-4 col-xs-12">
                    <h4 class="page-title">Thông tin bệnh nhân</h4>
                </div>
                <div class="col-lg-9 col-sm-8 col-md-8 col-xs-12">
                    <a href="/" target="_blank" class="btn btn-danger pull-right m-l-20 btn-rounded btn-outline hidden-xs hidden-sm waves-effect waves-light">Trang chủ</a>
                </div>
            </div>
            <div class="row">
                <div class="col-md-4 col-xs-12">
                    <div class="white-box">
                        <div class="user-bg"> <img width="100%" alt="user" src="<c:url value="/admin-resources/plugins/images/users/1.jpg"/>"> </div>
                        <div class="user-btm-box">
                            <div class="row text-center m-t-10">
                                <div class="col-md-6 b-r"><strong>Họ và Tên</strong>
                                    <p>${patient.ho} ${patient.ten}</p>
                                </div>
                                <div class="col-md-6"><strong>Giới tính</strong>
                                    <p>${patient.gioiTinh}</p>
                                </div>
                            </div>
                            <hr>
                            <div class="row text-center m-t-10">
                                <div class="col-md-6 b-r"><strong>Ngày sinh</strong>
                                    <p>${patient.ngaySinh}</p>
                                </div>
                                <div class="col-md-6"><strong>Số điện thoại</strong>
                                    <p>${patient.dienThoai}</p>
                                </div>
                            </div>
<%--                            <hr>--%>
<%--                            <div class="row text-center m-t-10">--%>
<%--                                <div class="col-md-12"><strong>Địa chỉ</strong>--%>
<%--                                    <p>Cầu Thị Nghè, Bình Thạnh--%>
<%--                                        <br/> TP HCM, Việt Nam.</p>--%>
<%--                                </div>--%>
<%--                            </div>--%>
                            <hr>
                            <!-- /.row -->
                            <div class="col-md-4 col-sm-4 text-center">
                                <p class="text-purple"><i class="fab fa-facebook"></i></p>
                                <h1>258</h1> </div>
                            <div class="col-md-4 col-sm-4 text-center">
                                <p class="text-blue"><i class="fab fa-twitter"></i></p>
                                <h1>125</h1> </div>
                            <div class="col-md-4 col-sm-4 text-center">
                                <p class="text-danger"><i class="fab fa-google-plus"></i></p>
                                <h1>140</h1> </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-8 col-xs-12">
                    <div class="white-box">
                        <div class="row">
                            <div class="col-md-3 col-xs-6 b-r"> <strong>Họ và Tên</strong>
                                <br>
                                <p class="text-muted">${patient.ho} ${patient.ten}</p>
                            </div>
                            <div class="col-md-3 col-xs-6 b-r"> <strong>Giới tính</strong>
                                <br>
                                <p class="text-muted">${patient.gioiTinh}</p>
                            </div>
                            <div class="col-md-3 col-xs-6 b-r"> <strong>Ngày sinh</strong>
                                <br>
                                <p class="text-muted">${patient.ngaySinh}</p>
                            </div>
                            <div class="col-md-3 col-xs-6"> <strong>Tình trạng bệnh</strong>
                                <br>
                                <p class="text-muted">Ho, cảm, sổ mũi</p>
                            </div>
                        </div>
                        <hr>
                        <p class="m-t-30">Thời gian đã qua đi không thể trở lại. Dòng sông đã ra đi làm sao về chốn cũ. Náo nức khơi xa không thể thiếu những cánh buồm. Áng mây trên đầu đâu thể ngừng trôi. Còn đâu miền dương gian khi úa tan mặt trời. Bình minh có lên ngôi khi không còn đêm tối. Đã có sông sâu không thể thiếu những suối nguồn. Vắng anh trên đời đâu còn tình yêu.</p>
                        <p>Người đã ra đi có thể trở lại. Vết thương ngày nào có thể liền da. Nước mắt sẽ thôi rơi, đôi môi lại chín đỏ. Bồi hồi ngày gặp nhau xua tan đi bao nỗi mong nhớ.</p>
                        <p>Vòng tay yêu thương có thể rộng mở. Bóng mây muộn sầu có thể dần tan. Và điều này thật rộn ràng êm ái. Có thể một ngày mai chúng ta sẽ thành đôi.</p>
                        <h4 class="m-t-30">Báo cáo tình hình chung</h4>
                        <hr>
                        <h5>Nhịp tim <span class="pull-right">80</span></h5>
                        <div class="progress">
                            <div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="80" aria-valuemin="0" aria-valuemax="100" style="width:80%;"> <span class="sr-only">50% Complete</span> </div>
                        </div>
                        <h5>Huyết áp<span class="pull-right">90</span></h5>
                        <div class="progress">
                            <div class="progress-bar progress-bar-custom" role="progressbar" aria-valuenow="90" aria-valuemin="0" aria-valuemax="100" style="width:90%;"> <span class="sr-only">50% Complete</span> </div>
                        </div>
                        <h5>Lượng đường<span class="pull-right">50</span></h5>
                        <div class="progress">
                            <div class="progress-bar progress-bar-primary" role="progressbar" aria-valuenow="50" aria-valuemin="0" aria-valuemax="100" style="width:50%;"> <span class="sr-only">50% Complete</span> </div>
                        </div>
                        <h5>Sắc tố (huyết cầu tố)<span class="pull-right">70%</span></h5>
                        <div class="progress">
                            <div class="progress-bar progress-bar-danger" role="progressbar" aria-valuenow="70" aria-valuemin="0" aria-valuemax="100" style="width:70%;"> <span class="sr-only">50% Complete</span> </div>
                        </div>
                        <h4 class="m-t-30">Báo cáo ECG</h4>
                        <hr>
                        <div class="stats-row">
                            <div class="stat-item">
                                <h6>Mạch</h6> <b>85</b></div>
                            <div class="stat-item">
                                <h6>BP</h6> <b>120</b></div>
                        </div>
                        <div style="height: 280px;">
                            <div id="placeholder" class="demo-placeholder"></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    <footer class="footer text-center"> ©Copyright 2020 - Huy & Trọng. Đã đăng ký bản quyền.</footer>
</div>


<script src="<c:url value="/admin-resources/plugins/bower_components/jquery/dist/jquery.min.js"/>"></script>
<script src="<c:url value="/admin-resources/bootstrap/dist/js/tether.min.js"/>"></script>
<script src="<c:url value="/admin-resources/bootstrap/dist/js/bootstrap.min.js"/>"></script>
<script src="<c:url value="/admin-resources/plugins/bower_components/bootstrap-extension/js/bootstrap-extension.min.js"/>"></script>
<script src="<c:url value="/admin-resources/plugins/bower_components/sidebar-nav/dist/sidebar-nav.min.js"/>"></script>
<script src="<c:url value="/admin-resources/js/jquery.slimscroll.js"/>"></script>
<script src="<c:url value="/admin-resources/js/waves.js"/>"></script>
<script src="<c:url value="/admin-resources/plugins/bower_components/flot/jquery.flot.js"/>"></script>
<script src="<c:url value="/admin-resources/plugins/bower_components/flot.tooltip/js/jquery.flot.tooltip.min.js"/>"></script>
<script src="<c:url value="/admin-resources/js/custom.min.js"/>"></script>
<script type="text/javascript">
    // Real Time chart
    var data = []
        , totalPoints = 200;

    function getRandomData() {
        if (data.length > 0) data = data.slice(1);
        // Do a random walk
        while (data.length < totalPoints) {
            var prev = data.length > 0 ? data[data.length - 1] : 50
                , y = prev + Math.random() * 10 - 5;
            if (y < 0) {
                y = 0;
            }
            else if (y > 100) {
                y = 100;
            }
            data.push(y);
        }
        // Zip the generated y values with the x values
        var res = [];
        for (var i = 0; i < data.length; ++i) {
            res.push([i, data[i]])
        }
        return res;
    }
    // Set up the control widget
    var updateInterval = 20;
    $("#updateInterval").val(updateInterval).change(function () {
        var v = $(this).val();
        if (v && !isNaN(+v)) {
            updateInterval = +v;
            if (updateInterval < 1) {
                updateInterval = 1;
            }
            else if (updateInterval > 2000) {
                updateInterval = 2000;
            }
            $(this).val("" + updateInterval);
        }
    });
    var plot = $.plot("#placeholder", [getRandomData()], {
        series: {
            shadowSize: 0 // Drawing is faster without shadows
        }
        , yaxis: {
            min: 0
            , max: 200
        }
        , xaxis: {
            show: false
        }
        , colors: ["#01c0c8"]
        , grid: {
            color: "#AFAFAF"
            , hoverable: true
            , borderWidth: 0
            , backgroundColor: '#FFF'
        }
        , tooltip: true
        , resize: true
        , tooltipOpts: {
            content: "Y: %y"
            , defaultTheme: false
        }
    });

    function update() {
        plot.setData([getRandomData()]);
        // Since the axes don't change, we don't need to call plot.setupGrid()
        plot.draw();
        setTimeout(update, updateInterval);
    }
    update();
</script>
<script src="<c:url value="/admin-resources/plugins/bower_components/styleswitcher/jQuery.style.switcher.js"/>"></script>
</body>
</html>