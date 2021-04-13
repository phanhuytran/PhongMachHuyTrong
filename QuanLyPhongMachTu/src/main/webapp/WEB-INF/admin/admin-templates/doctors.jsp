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
    <link href="<c:url value="/admin-resources/plugins/bower_components/morrisjs/morris.css"/>" rel="stylesheet">
    <link href="<c:url value="/admin-resources/css/animate.css"/>" rel="stylesheet">
    <link href="<c:url value="/admin-resources/css/style.min.css"/>" rel="stylesheet">
    <link href="<c:url value="/admin-resources/css/colors/megna.css"/>" id="theme" rel="stylesheet">
</head>

<body>
<div id="wrapper">
    <tiles:insertAttribute name="index-01"/>
    <tiles:insertAttribute name="index-02"/>
    <div id="page-wrapper">
        <div class="container-fluid">
            <div class="row bg-title">
                <div class="col-lg-3 col-md-4 col-sm-4 col-xs-12">
                    <h4 class="page-title">Danh sách Bác sĩ</h4>
                </div>
            </div>
            <div class="row">
                <!-- .col -->
                <div class="col-md-4 col-sm-4">
                    <div class="white-box">
                        <div class="row">
                            <div class="col-md-4 col-sm-4 text-center">
                                <a href="contact-detail.html">
                                    <img src="<c:url value="/admin-resources/plugins/images/users/d1.jpg"/>" alt="user" class="img-circle img-responsive">
                                </a>
                            </div>
                            <div class="col-md-8 col-sm-8">
                                <h3 class="box-title m-b-0">Johnathan Doe</h3> <small>Cardio</small>
                                <p>
                                <address>
                                    795 Folsom Ave, Suite 600 San Francisco, CADGE 94107<br/><br/>
                                    <abbr title="Phone">P:</abbr> (123) 456-7890
                                </address>
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-4 col-sm-4">
                    <div class="white-box">
                        <div class="row">
                            <div class="col-md-4 col-sm-4 text-center">
                                <a href="contact-detail.html">
                                    <img src="<c:url value="/admin-resources/plugins/images/users/d2.jpg"/>" alt="user" class="img-circle img-responsive">
                                </a>
                            </div>
                            <div class="col-md-8 col-sm-8">
                                <h3 class="box-title m-b-0">Johnathan Doe</h3> <small>Dentist</small>
                                <p>
                                <address>
                                    795 Folsom Ave, Suite 600 San Francisco, CADGE 94107<br/><br/>
                                    <abbr title="Phone">P:</abbr> (123) 456-7890
                                </address>
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-4 col-sm-4">
                    <div class="white-box">
                        <div class="row">
                            <div class="col-md-4 col-sm-4 text-center">
                                <a href="contact-detail.html">
                                    <img src="<c:url value="/admin-resources/plugins/images/users/d3.jpg"/>" alt="user" class="img-circle img-responsive">
                                </a>
                            </div>
                            <div class="col-md-8 col-sm-8">
                                <h3 class="box-title m-b-0">Johnathan Doe</h3> <small>Neuro Surgeon</small>
                                <p>
                                <address>
                                    795 Folsom Ave, Suite 600 San Francisco, CADGE 94107<br/><br/>
                                    <abbr title="Phone">P:</abbr> (123) 456-7890
                                </address>
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-4 col-sm-4">
                    <div class="white-box">
                        <div class="row">
                            <div class="col-md-4 col-sm-4 text-center">
                                <a href="contact-detail.html">
                                    <img src="<c:url value="/admin-resources/plugins/images/users/d4.jpg"/>" alt="user" class="img-circle img-responsive">
                                </a>
                            </div>
                            <div class="col-md-8 col-sm-8">
                                <h3 class="box-title m-b-0">Johnathan Doe</h3> <small>Cardio</small>
                                <p>
                                <address>
                                    795 Folsom Ave, Suite 600 San Francisco, CADGE 94107<br/><br/>
                                    <abbr title="Phone">P:</abbr> (123) 456-7890
                                </address>
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-4 col-sm-4">
                    <div class="white-box">
                        <div class="row">
                            <div class="col-md-4 col-sm-4 text-center">
                                <a href="contact-detail.html">
                                    <img src="<c:url value="/admin-resources/plugins/images/users/d1.jpg"/>" alt="user" class="img-circle img-responsive">
                                </a>
                            </div>
                            <div class="col-md-8 col-sm-8">
                                <h3 class="box-title m-b-0">Johnathan Doe</h3> <small>ENT Specialist</small>
                                <p>
                                <address>
                                    795 Folsom Ave, Suite 600 San Francisco, CADGE 94107<br/><br/>
                                    <abbr title="Phone">P:</abbr> (123) 456-7890
                                </address>
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-4 col-sm-4">
                    <div class="white-box">
                        <div class="row">
                            <div class="col-md-4 col-sm-4 text-center">
                                <a href="contact-detail.html">
                                    <img src="<c:url value="/admin-resources/plugins/images/users/d5.jpg"/>" alt="user" class="img-circle img-responsive">
                                </a>
                            </div>
                            <div class="col-md-8 col-sm-8">
                                <h3 class="box-title m-b-0">Johnathan Doe</h3> <small>Physio</small>
                                <p>
                                <address>
                                    795 Folsom Ave, Suite 600 San Francisco, CADGE 94107<br/><br/>
                                    <abbr title="Phone">P:</abbr> (123) 456-7890
                                </address>
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-4 col-sm-4">
                    <div class="white-box">
                        <div class="row">
                            <div class="col-md-4 col-sm-4 text-center">
                                <a href="contact-detail.html">
                                    <img src="<c:url value="/admin-resources/plugins/images/users/d1.jpg"/>" alt="user" class="img-circle img-responsive">
                                </a>
                            </div>
                            <div class="col-md-8 col-sm-8">
                                <h3 class="box-title m-b-0">Johnathan Doe</h3> <small>M.B.B.S</small>
                                <p>
                                <address>
                                    795 Folsom Ave, Suite 600 San Francisco, CADGE 94107<br/><br/>
                                    <abbr title="Phone">P:</abbr> (123) 456-7890
                                </address>
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-4 col-sm-4">
                    <div class="white-box">
                        <div class="row">
                            <div class="col-md-4 col-sm-4 text-center">
                                <a href="contact-detail.html">
                                    <img src="<c:url value="/admin-resources/plugins/images/users/d2.jpg"/>" alt="user" class="img-circle img-responsive">
                                </a>
                            </div>
                            <div class="col-md-8 col-sm-8">
                                <h3 class="box-title m-b-0">Johnathan Doe</h3> <small>Dentist</small>
                                <p>
                                <address>
                                    795 Folsom Ave, Suite 600 San Francisco, CADGE 94107<br/><br/>
                                    <abbr title="Phone">P:</abbr> (123) 456-7890
                                </address>
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-4 col-sm-4">
                    <div class="white-box">
                        <div class="row">
                            <div class="col-md-4 col-sm-4 text-center">
                                <a href="contact-detail.html">
                                    <img src="<c:url value="/admin-resources/plugins/images/users/d3.jpg"/>" alt="user" class="img-circle img-responsive">
                                </a>
                            </div>
                            <div class="col-md-8 col-sm-8">
                                <h3 class="box-title m-b-0">Johnathan Doe</h3> <small>Neurologist</small>
                                <p>
                                <address>
                                    795 Folsom Ave, Suite 600 San Francisco, CADGE 94107<br/><br/>
                                    <abbr title="Phone">P:</abbr> (123) 456-7890
                                </address>
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-4 col-sm-4">
                    <div class="white-box">
                        <div class="row">
                            <div class="col-md-4 col-sm-4 text-center">
                                <a href="contact-detail.html">
                                    <img src="<c:url value="/admin-resources/plugins/images/users/d4.jpg"/>" alt="user" class="img-circle img-responsive">
                                </a>
                            </div>
                            <div class="col-md-8 col-sm-8">
                                <h3 class="box-title m-b-0">Johnathan Doe</h3> <small>Orthopedic</small>
                                <p>
                                <address>
                                    795 Folsom Ave, Suite 600 San Francisco, CADGE 94107<br/><br/>
                                    <abbr title="Phone">P:</abbr> (123) 456-7890
                                </address>
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-4 col-sm-4">
                    <div class="white-box">
                        <div class="row">
                            <div class="col-md-4 col-sm-4 text-center">
                                <a href="contact-detail.html">
                                    <img src="<c:url value="/admin-resources/plugins/images/users/d5.jpg"/>" alt="user" class="img-circle img-responsive">
                                </a>
                            </div>
                            <div class="col-md-8 col-sm-8">
                                <h3 class="box-title m-b-0">Johnathan Doe</h3> <small>Surgeon</small>
                                <p>
                                <address>
                                    795 Folsom Ave, Suite 600 San Francisco, CADGE 94107<br/><br/>
                                    <abbr title="Phone">P:</abbr> (123) 456-7890
                                </address>
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-4 col-sm-4">
                    <div class="white-box">
                        <div class="row">
                            <div class="col-md-4 col-sm-4 text-center">
                                <a href="contact-detail.html">
                                    <img src="<c:url value="/admin-resources/plugins/images/users/d1.jpg"/>" alt="user" class="img-circle img-responsive">
                                </a>
                            </div>
                            <div class="col-md-8 col-sm-8">
                                <h3 class="box-title m-b-0">Johnathan Doe</h3> <small>Physician</small>
                                <p>
                                <address>
                                    795 Folsom Ave, Suite 600 San Francisco, CADGE 94107<br/><br/>
                                    <abbr title="Phone">P:</abbr> (123) 456-7890
                                </address>
                                </p>
                            </div>
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
<script src="<c:url value="/admin-resources/plugins/bower_components/raphael/raphael-min.js"/>"></script>
<script src="<c:url value="/admin-resources/plugins/bower_components/morrisjs/morris.js"/>"></script>
<script src="<c:url value="/admin-resources/plugins/bower_components/jquery-sparkline/jquery.sparkline.min.js"/>"></script>
<script src="<c:url value="/admin-resources/plugins/bower_components/peity/jquery.peity.min.js"/>"></script>
<script src="<c:url value="/admin-resources/plugins/bower_components/peity/jquery.peity.init.js"/>"></script>
<script src="<c:url value="/admin-resources/js/custom.min.js"/>"></script>
<script src="<c:url value="/admin-resources/js/dashboard1.js"/>"></script>
<script src="<c:url value="/admin-resources/plugins/bower_components/styleswitcher/jQuery.style.switcher.js"/>"></script>
</body>
</html>