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
                    <h4 class="page-title">Báo cáo thu nhập</h4>
                </div>
                <div class="col-lg-9 col-sm-8 col-md-8 col-xs-12">
                    <a href="/" target="_blank" class="btn btn-danger pull-right m-l-20 btn-rounded btn-outline hidden-xs hidden-sm waves-effect waves-light">Trang chủ</a>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-3 col-sm-3 col-xs-12">
                    <div class="white-box analytics-info">
                        <h3 class="box-title">Tổng thu nhập</h3>
                        <ul class="list-inline two-part">
                            <li>
                                <div id="sparklinedash"></div>
                            </li>
                            <li class="text-right"><span class="counter text-success"><i class="fas fa-arrow-up"></i> 8659</span></li>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-3 col-sm-3 col-xs-12">
                    <div class="white-box analytics-info">
                        <h3 class="box-title">Tổng thu nhập</h3>
                        <ul class="list-inline two-part">
                            <li>
                                <div id="sparklinedash2"></div>
                            </li>
                            <li class="text-right"><span class="counter text-purple"><i class="fas fa-arrow-up"></i> 7469</span></li>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-3 col-sm-3 col-xs-12">
                    <div class="white-box analytics-info">
                        <h3 class="box-title">Bệnh nhân</h3>
                        <ul class="list-inline two-part">
                            <li>
                                <div id="sparklinedash3"></div>
                            </li>
                            <li class="text-right"><span class="counter text-info"><i class="fas fa-arrow-up"></i> 6011</span></li>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-3 col-sm-3 col-xs-12">
                    <div class="white-box analytics-info">
                        <h3 class="box-title">Tỷ lệ</h3>
                        <ul class="list-inline two-part">
                            <li>
                                <div id="sparklinedash4"></div>
                            </li>
                            <li class="text-right"><span class="text-danger"><i class="fas fa-arrow-down"></i> 18%</span></li>
                        </ul>
                    </div>
                </div>
            </div>
            <!-- /.row -->
            <!-- row -->
            <div class="row">
                <div class="col-md-4 col-sm-12 col-xs-12">
                    <div class="white-box">
                        <h3 class="box-title"><small class="pull-right m-t-10 text-success">18% cao hơn tháng trước</small>Thu nhập</h3>
                        <div class="stats-row">
                            <div class="stat-item">
                                <h6>Tổng quát</h6> <b>80.40%</b></div>
                            <div class="stat-item">
                                <h6>Hàng tháng</h6> <b>15.40%</b></div>
                            <div class="stat-item">
                                <h6>Hàng ngày</h6> <b>5.50%</b></div>
                        </div>
                        <div id="sparkline8"></div>
                    </div>
                </div>
                <div class="col-md-4 col-sm-12 col-xs-12">
                    <div class="white-box">
                        <h3 class="box-title"><small class="pull-right m-t-10 text-danger">18% ít hơn tháng trước</small>Thu nhập</h3>
                        <div class="stats-row">
                            <div class="stat-item">
                                <h6>Tổng quát</h6> <b>80.40%</b></div>
                            <div class="stat-item">
                                <h6>Hàng tháng</h6> <b>15.40%</b></div>
                            <div class="stat-item">
                                <h6>Hàng ngày</h6> <b>5.50%</b></div>
                        </div>
                        <div id="sparkline9"></div>
                    </div>
                </div>
                <div class="col-md-4 col-sm-12 col-xs-12">
                    <div class="white-box">
                        <h3 class="box-title"><small class="pull-right m-t-10 text-success">18% cao hơn tháng trước</small>Thu nhập</h3>
                        <div class="stats-row">
                            <div class="stat-item">
                                <h6>Tổng quát</h6> <b>80.40%</b></div>
                            <div class="stat-item">
                                <h6>Hàng tháng</h6> <b>15.40%</b></div>
                            <div class="stat-item">
                                <h6>Hàng ngày</h6> <b>5.50%</b></div>
                        </div>
                        <div id="sparkline10"></div>
                    </div>
                </div>
            </div>
            <!-- /.row -->
            <!-- row -->
            <div class="row">
                <div class="col-sm-12 col-xs-12 col-md-12 col-lg-6">
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="white-box">
                                <h3 class="box-title">Bar Chart</h3>
                                <div id="sparkline12" class="text-center"></div>
                            </div>
                        </div>
                        <div class="col-lg-12">
                            <div class="white-box">
                                <h3 class="box-title">Pie Chart</h3>
                                <div id="sparkline11" class="text-center"></div>
                            </div>
                        </div>
                    </div>
                    <!-- /Portlet -->
                </div>
                <div class="col-sm-12 col-xs-12 col-md-12 col-lg-6 ">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="white-box">
                                <h3 class="box-title">Composite Bar Chart</h3>
                                <div id="sparkline13" class="text-center"></div>
                            </div>
                        </div>
                        <div class="col-md-12">
                            <div class="white-box bg-purple">
                                <h3 class="text-white box-title">Line Chart</h3>
                                <div id="sparkline14"></div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- /.row -->
            <!-- row -->
            <div class="row">
                <div class="col-sm-12 col-xs-12 col-md-12 col-lg-6 ">
                    <div class="white-box">
                        <h3 class="box-title">bar with different color Chart</h3>
                        <div id="sparkline15" class="text-center"></div>
                    </div>
                </div>
                <div class="col-sm-12 col-xs-12 col-md-12 col-lg-6">
                    <div class="white-box">
                        <h3 class="box-title">Line Chart</h3>
                        <div id="sparkline16" class="text-center"></div>
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
<script src="<c:url value="/admin-resources/plugins/bower_components/jquery-sparkline/jquery.sparkline.min.js"/>"></script>
<script src="<c:url value="/admin-resources/plugins/bower_components/jquery-sparkline/jquery.charts-sparkline.js"/>"></script>
<script src="<c:url value="/admin-resources/plugins/bower_components/styleswitcher/jQuery.style.switcher.js"/>"></script>
</body>
</html>