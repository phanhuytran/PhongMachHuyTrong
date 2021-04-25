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
    <link href="<c:url value="/admin-resources/bootstrap/dist/css/bootstrap.min.css"/>" rel="stylesheet">
    <link href="<c:url value="/admin-resources/plugins/bower_components/bootstrap-extension/css/bootstrap-extension.css"/>" rel="stylesheet">
    <link href="<c:url value="/admin-resources/plugins/bower_components/sidebar-nav/dist/sidebar-nav.min.css"/>" rel="stylesheet">
    <link href="<c:url value="/admin-resources/plugins/bower_components/Magnific-Popup-master/dist/magnific-popup.css"/>" rel="stylesheet">
    <link href="<c:url value="/admin-resources/css/animate.css"/>" rel="stylesheet">
    <link href="<c:url value="/admin-resources/css/style.min.css"/>" rel="stylesheet">
    <link href="<c:url value="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css"/>" rel="stylesheet"/>
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
                    <h4 class="page-title">Tất cả bệnh nhân</h4>
                </div>
                <div class="col-lg-9 col-sm-8 col-md-8 col-xs-12">
                    <a href="/" target="_blank" class="btn btn-danger pull-right m-l-20 btn-rounded btn-outline hidden-xs hidden-sm waves-effect waves-light">Trang chủ</a>
                </div>
            </div>
            <div class="row el-element-overlay">
                <!-- .usercard -->
                <div class="col-lg-3 col-md-4 col-sm-6 col-xs-12">
                    <div class="white-box">
                        <div class="el-card-item">
                            <div class="el-card-avatar el-overlay-1"><img
                                    src="<c:url value="/admin-resources/plugins/images/users/1.jpg"/>"/>
                                <div class="el-overlay">
                                    <ul class="el-info">
                                        <li><a class="btn default btn-outline image-popup-vertical-fit"
                                               href="<c:url value="/admin-resources/plugins/images/users/1.jpg"/>"><i
                                                class="fas fa-search"></i></a></li>
                                        <li><a class="btn default btn-outline" href="/edit-patient"><i
                                                class="fas fa-link"></i></a></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="el-card-content">
                                <h3 class="box-title">Genelia Deshmukh</h3> <small>Managing Director</small>
                                <br/> <small>Age: 24 years</small></div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-4 col-sm-6 col-xs-12">
                    <div class="white-box">
                        <div class="el-card-item">
                            <div class="el-card-avatar el-overlay-1"><img
                                    src="<c:url value="/admin-resources/plugins/images/users/2.jpg"/>"/>
                                <div class="el-overlay">
                                    <ul class="el-info">
                                        <li><a class="btn default btn-outline image-popup-vertical-fit"
                                               href="<c:url value="/admin-resources/plugins/images/users/2.jpg"/>"><i
                                                class="fas fa-search"></i></a></li>
                                        <li><a class="btn default btn-outline" href="/edit-patient"><i
                                                class="fas fa-link"></i></a></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="el-card-content">
                                <h3 class="box-title">Genelia Deshmukh</h3> <small>Managing Director</small>
                                <br/> <small>Age: 24 years</small></div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-4 col-sm-6 col-xs-12">
                    <div class="white-box">
                        <div class="el-card-item">
                            <div class="el-card-avatar el-overlay-1"><img
                                    src="<c:url value="/admin-resources/plugins/images/users/3.jpg"/>"/>
                                <div class="el-overlay">
                                    <ul class="el-info">
                                        <li><a class="btn default btn-outline image-popup-vertical-fit"
                                               href="<c:url value="/admin-resources/plugins/images/users/3.jpg"/>"><i
                                                class="fas fa-search"></i></a></li>
                                        <li><a class="btn default btn-outline" href="/edit-patient"><i
                                                class="fas fa-link"></i></a></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="el-card-content">
                                <h3 class="box-title">Genelia Deshmukh</h3> <small>Managing Director</small>
                                <br/> <small>Age: 24 years</small></div>
                        </div>
                    </div>
                </div>
                <!-- /.usercard-->
                <!-- /.usercard -->
                <div class="col-lg-3 col-md-4 col-sm-6 col-xs-12">
                    <div class="white-box">
                        <div class="el-card-item">
                            <div class="el-card-avatar el-overlay-1"><img
                                    src="<c:url value="/admin-resources/plugins/images/users/4.jpg"/>"/>
                                <div class="el-overlay">
                                    <ul class="el-info">
                                        <li><a class="btn default btn-outline image-popup-vertical-fit"
                                               href="<c:url value="/admin-resources/plugins/images/users/4.jpg"/>"><i
                                                class="fas fa-search"></i></a></li>
                                        <li><a class="btn default btn-outline" href="/edit-patient"><i
                                                class="fas fa-link"></i></a></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="el-card-content">
                                <h3 class="box-title">Genelia Deshmukh</h3> <small>Managing Director</small>
                                <br/> <small>Age: 24 years</small></div>
                        </div>
                    </div>
                </div>
                <!-- /.usercard-->
            </div>
            <!-- /.row -->
            <!-- .row -->
            <div class="row el-element-overlay">
                <!-- .usercard -->
                <div class="col-lg-3 col-md-4 col-sm-6 col-xs-12">
                    <div class="white-box">
                        <div class="el-card-item">
                            <div class="el-card-avatar el-overlay-1"><img
                                    src="<c:url value="/admin-resources/plugins/images/users/1.jpg"/>"/>
                                <div class="el-overlay">
                                    <ul class="el-info">
                                        <li><a class="btn default btn-outline image-popup-vertical-fit"
                                               href="<c:url value="/admin-resources/plugins/images/users/1.jpg"/>"><i
                                                class="fas fa-search"></i></a></li>
                                        <li><a class="btn default btn-outline" href="/edit-patient"><i
                                                class="fas fa-link"></i></a></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="el-card-content">
                                <h3 class="box-title">Genelia Deshmukh</h3> <small>Managing Director</small>
                                <br/> <small>Age: 24 years</small></div>
                        </div>
                    </div>
                </div>
                <!-- /.usercard-->
                <!-- /.usercard -->
                <div class="col-lg-3 col-md-4 col-sm-6 col-xs-12">
                    <div class="white-box">
                        <div class="el-card-item">
                            <div class="el-card-avatar el-overlay-1"><img
                                    src="<c:url value="/admin-resources/plugins/images/users/2.jpg"/>"/>
                                <div class="el-overlay">
                                    <ul class="el-info">
                                        <li><a class="btn default btn-outline image-popup-vertical-fit"
                                               href="<c:url value="/admin-resources/plugins/images/users/2.jpg"/>"><i
                                                class="fas fa-search"></i></a></li>
                                        <li><a class="btn default btn-outline" href="/edit-patient"><i
                                                class="fas fa-link"></i></a></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="el-card-content">
                                <h3 class="box-title">Genelia Deshmukh</h3> <small>Managing Director</small>
                                <br/> <small>Age: 24 years</small></div>
                        </div>
                    </div>
                </div>
                <!-- /.usercard-->
                <!-- /.usercard -->
                <div class="col-lg-3 col-md-4 col-sm-6 col-xs-12">
                    <div class="white-box">
                        <div class="el-card-item">
                            <div class="el-card-avatar el-overlay-1"><img
                                    src="<c:url value="/admin-resources/plugins/images/users/3.jpg"/>"/>
                                <div class="el-overlay">
                                    <ul class="el-info">
                                        <li><a class="btn default btn-outline image-popup-vertical-fit"
                                               href="<c:url value="/admin-resources/plugins/images/users/3.jpg"/>"><i
                                                class="fas fa-search"></i></a></li>
                                        <li><a class="btn default btn-outline" href="/edit-patient"><i
                                                class="fas fa-link"></i></a></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="el-card-content">
                                <h3 class="box-title">Genelia Deshmukh</h3> <small>Managing Director</small>
                                <br/> <small>Age: 24 years</small></div>
                        </div>
                    </div>
                </div>
                <!-- /.usercard-->
                <!-- /.usercard -->
                <div class="col-lg-3 col-md-4 col-sm-6 col-xs-12">
                    <div class="white-box">
                        <div class="el-card-item">
                            <div class="el-card-avatar el-overlay-1"><img
                                    src="<c:url value="/admin-resources/plugins/images/users/4.jpg"/>"/>
                                <div class="el-overlay">
                                    <ul class="el-info">
                                        <li><a class="btn default btn-outline image-popup-vertical-fit"
                                               href="<c:url value="/admin-resources/plugins/images/users/4.jpg"/>"><i
                                                class="fas fa-search"></i></a></li>
                                        <li><a class="btn default btn-outline" href="/edit-patient"><i
                                                class="fas fa-link"></i></a></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="el-card-content">
                                <h3 class="box-title">Genelia Deshmukh</h3> <small>Managing Director</small>
                                <br/> <small>Age: 24 years</small></div>
                        </div>
                    </div>
                </div>
                <!-- /.usercard-->
            </div>
            <!-- /.row -->
            <!-- .row -->
            <div class="row el-element-overlay">
                <!-- .usercard -->
                <div class="col-lg-3 col-md-4 col-sm-6 col-xs-12">
                    <div class="white-box">
                        <div class="el-card-item">
                            <div class="el-card-avatar el-overlay-1"><img
                                    src="<c:url value="/admin-resources/plugins/images/users/1.jpg"/>"/>
                                <div class="el-overlay">
                                    <ul class="el-info">
                                        <li><a class="btn default btn-outline image-popup-vertical-fit"
                                               href="<c:url value="/admin-resources/plugins/images/users/1.jpg"/>"><i
                                                class="fas fa-search"></i></a></li>
                                        <li><a class="btn default btn-outline" href="/edit-patient"><i
                                                class="fas fa-link"></i></a></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="el-card-content">
                                <h3 class="box-title">Genelia Deshmukh</h3> <small>Managing Director</small>
                                <br/> <small>Age: 24 years</small></div>
                        </div>
                    </div>
                </div>
                <!-- /.usercard-->
                <!-- /.usercard -->
                <div class="col-lg-3 col-md-4 col-sm-6 col-xs-12">
                    <div class="white-box">
                        <div class="el-card-item">
                            <div class="el-card-avatar el-overlay-1"><img
                                    src="<c:url value="/admin-resources/plugins/images/users/2.jpg"/>"/>
                                <div class="el-overlay">
                                    <ul class="el-info">
                                        <li><a class="btn default btn-outline image-popup-vertical-fit"
                                               href="<c:url value="/admin-resources/plugins/images/users/2.jpg"/>"><i
                                                class="fas fa-search"></i></a></li>
                                        <li><a class="btn default btn-outline" href="/edit-patient"><i
                                                class="fas fa-link"></i></a></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="el-card-content">
                                <h3 class="box-title">Genelia Deshmukh</h3> <small>Managing Director</small>
                                <br/> <small>Age: 24 years</small></div>
                        </div>
                    </div>
                </div>
                <!-- /.usercard-->
                <!-- /.usercard -->
                <div class="col-lg-3 col-md-4 col-sm-6 col-xs-12">
                    <div class="white-box">
                        <div class="el-card-item">
                            <div class="el-card-avatar el-overlay-1"><img
                                    src="<c:url value="/admin-resources/plugins/images/users/3.jpg"/>"/>
                                <div class="el-overlay">
                                    <ul class="el-info">
                                        <li><a class="btn default btn-outline image-popup-vertical-fit"
                                               href="<c:url value="/admin-resources/plugins/images/users/3.jpg"/>"><i
                                                class="fas fa-search"></i></a></li>
                                        <li><a class="btn default btn-outline" href="/edit-patient"><i
                                                class="fas fa-link"></i></a></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="el-card-content">
                                <h3 class="box-title">Genelia Deshmukh</h3> <small>Managing Director</small>
                                <br/> <small>Age: 24 years</small></div>
                        </div>
                    </div>
                </div>
                <!-- /.usercard-->
                <!-- /.usercard -->
                <div class="col-lg-3 col-md-4 col-sm-6 col-xs-12">
                    <div class="white-box">
                        <div class="el-card-item">
                            <div class="el-card-avatar el-overlay-1"><img
                                    src="<c:url value="/admin-resources/plugins/images/users/4.jpg"/>"/>
                                <div class="el-overlay">
                                    <ul class="el-info">
                                        <li><a class="btn default btn-outline image-popup-vertical-fit"
                                               href="<c:url value="/admin-resources/plugins/images/users/4.jpg"/>"><i
                                                class="fas fa-search"></i></a></li>
                                        <li><a class="btn default btn-outline" href="/edit-patient"><i
                                                class="fas fa-link"></i></a></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="el-card-content">
                                <h3 class="box-title">Genelia Deshmukh</h3> <small>Managing Director</small>
                                <br/> <small>Age: 24 years</small></div>
                        </div>
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
<script src="<c:url value="/admin-resources/plugins/bower_components/Magnific-Popup-master/dist/jquery.magnific-popup.min.js"/>"></script>
<script src="<c:url value="/admin-resources/plugins/bower_components/Magnific-Popup-master/dist/jquery.magnific-popup-init.js"/>"></script>
<script src="<c:url value="/admin-resources/js/custom.min.js"/>"></script>
<script src="<c:url value="/admin-resources/plugins/bower_components/styleswitcher/jQuery.style.switcher.js"/>"></script>

<%--<script src="<c:url value="/admin-resources/plugins/bower_components/jquery/dist/jquery.min.js"/>"></script>--%>
<%--<script src="<c:url value="/admin-resources/bootstrap/dist/js/tether.min.js"/>"></script>--%>
<%--<script src="<c:url value="/admin-resources/bootstrap/dist/js/bootstrap.min.js"/>"></script>--%>
<%--<script src="<c:url value="/admin-resources/plugins/bower_components/bootstrap-extension/js/bootstrap-extension.min.js"/>"></script>--%>
<%--<script src="<c:url value="/admin-resources/plugins/bower_components/sidebar-nav/dist/sidebar-nav.min.js"/>"></script>--%>
<%--<script src="<c:url value="/admin-resources/js/jquery.slimscroll.js"/>"></script>--%>
<%--<script src="<c:url value="/admin-resources/js/waves.js"/>"></script>--%>
<%--<script src="<c:url value="/admin-resources/plugins/bower_components/raphael/raphael-min.js"/>"></script>--%>
<%--<script src="<c:url value="/admin-resources/plugins/bower_components/morrisjs/morris.js"/>"></script>--%>
<%--<script src="<c:url value="/admin-resources/plugins/bower_components/jquery-sparkline/jquery.sparkline.min.js"/>"></script>--%>
<%--<script src="<c:url value="/admin-resources/plugins/bower_components/peity/jquery.peity.min.js"/>"></script>--%>
<%--<script src="<c:url value="/admin-resources/plugins/bower_components/peity/jquery.peity.init.js"/>"></script>--%>
<%--<script src="<c:url value="/admin-resources/js/custom.min.js"/>"></script>--%>
<%--<script src="<c:url value="/admin-resources/js/dashboard1.js"/>"></script>--%>
<%--<script src="<c:url value="/admin-resources/plugins/bower_components/styleswitcher/jQuery.style.switcher.js"/>"></script>--%>
<%--<script src="<c:url value="/admin-resources/plugins/bower_components/Magnific-Popup-master/dist/jquery.magnific-popup.min.js"/>"></script>--%>
<%--<script src="<c:url value="/admin-resources/plugins/bower_components/Magnific-Popup-master/dist/jquery.magnific-popup-init.js"/>"></script>--%>
</body>
</html>