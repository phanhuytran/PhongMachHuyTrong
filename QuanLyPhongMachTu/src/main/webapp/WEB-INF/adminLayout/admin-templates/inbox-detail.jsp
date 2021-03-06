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
                    <h4 class="page-title">Chi ti???t h???p th??</h4>
                </div>
                <div class="col-lg-9 col-sm-8 col-md-8 col-xs-12">
                    <a href="/" target="_blank" class="btn btn-danger pull-right m-l-20 btn-rounded btn-outline hidden-xs hidden-sm waves-effect waves-light">Trang ch???</a>
                </div>
            </div>
            <div class="row">
                <div class="col-md-12">
                    <div class="white-box">
                        <div class="row">
                            <div class="col-lg-2 col-md-3  col-sm-4 col-xs-12 inbox-panel">
                                <div> <a href="#" class="btn btn-custom btn-block waves-effect waves-light">Bi??n so???n</a>
                                    <div class="list-group mail-list m-t-20"> <a href="#" class="list-group-item active">H???p th?? ?????n<span class="label label-rouded label-success pull-right">5</span></a> <a href="#" class="list-group-item ">????nh d???u</a> <a href="#" class="list-group-item">B???n nh??p<span class="label label-rouded label-warning pull-right">15</span></a> <a href="#" class="list-group-item">Th?? ???? g???i</a> <a href="#" class="list-group-item">Th??ng r??c <span class="label label-rouded label-default pull-right">55</span></a> </div>
                                    <h3 class="panel-title m-t-40 m-b-0">M?? t???</h3>
                                    <hr class="m-t-5">
                                    <div class="list-group b-0 mail-list"> <a href="#" class="list-group-item"><span class="fas fa-circle text-info m-r-10"></span>C??ng vi???c</a> <a href="#" class="list-group-item"><span class="fas fa-circle text-warning m-r-10"></span>Gia ????nh</a> <a href="#" class="list-group-item"><span class="fas fa-circle text-purple m-r-10"></span>Ri??ng t??</a> <a href="#" class="list-group-item"><span class="fas fa-circle text-danger m-r-10"></span>B???n b??</a> <a href="#" class="list-group-item"><span class="fas fa-circle text-success m-r-10"></span>C??ng ty</a> </div>
                                </div>
                            </div>
                            <div class="col-lg-10 col-md-9 col-sm-8 col-xs-12 mail_listing">
                                <div class="media m-b-30 p-t-20">
                                    <h4 class="font-bold m-t-0">Ti??u ????? tin nh???n c???a b???n ??? ????y</h4>
                                    <hr>
                                    <a class="pull-left" href="#"> <img class="media-object thumb-sm img-circle" src="<c:url value="/admin-resources/plugins/images/users/pawandeep.jpg"/>" alt=""> </a>
                                    <div class="media-body"> <span class="media-meta pull-right">17:25</span>
                                        <h4 class="text-danger m-0">?????ng Ho??ng B???u</h4> <small class="text-muted">T???: ocbuouvang@gmail.com</small> </div>
                                </div>
                                <p>Th???i gian ???? qua ??i, kh??ng th??? tr??? l???i. D??ng s??ng ???? ra ??i l??m sao v??? ch???n c??. N??o n?????c kh??i xa. Kh??ng th??? thi???u nh???ng c??nh bu???m. ??ng m??y tr??n ?????u kh??ng th??? ng???ng tr??i. C??n ????u mi???n d????ng gian. Khi ??a tan m???t tr???i. B??nh minh c?? l??n ng??i. Khi kh??ng c??n ????m t???i. ???? c?? s??ng s??u. Kh??ng th??? thi???u nh???ng su???i ngu???n. V???ng em nhau ?????i. Kh??ng c??n t??nh y??u.</p>
                                <p>Ng?????i ???? ra ??i c?? th??? tr??? l???i. V???t th????ng ng??y n??o c?? th??? li???n da. N?????c m???t s??? th??i r??i. ????i m??i l???i ch??n ?????. B???i h???i ng??y g???p nhau. Xua tan ??i bao n???i mong nh???. V??ng tay y??u th????ng c?? th??? r???ng m???. B??ng m??y mu???n s???u c?? th??? d???n tan. V?? ??i???u n??y th???t r???n r??ng ??m ??i. C?? th??? m???t ng??y mai ch??ng ta s??? th??nh ????i.</p>
                                <hr>
                                <h4> <i class="fas fa-link m-r-10 m-b-10"></i> T???p ????nh k??m <span>(3)</span> </h4>
                                <div class="row">
                                    <div class="col-sm-2 col-xs-4">
                                        <a href="#"> <img class="img-thumbnail img-responsive" alt="attachment" src="<c:url value="/admin-resources/plugins/images/users/pawandeep.jpg"/>"> </a>
                                    </div>
                                    <div class="col-sm-2 col-xs-4">
                                        <a href="#"> <img class="img-thumbnail img-responsive" alt="attachment" src="<c:url value="/admin-resources/plugins/images/img2.jpg"/>"> </a>
                                    </div>
                                    <div class="col-sm-2 col-xs-4">
                                        <a href="#"> <img class="img-thumbnail img-responsive" alt="attachment" src="<c:url value="/admin-resources/plugins/images/users/pawandeep.jpg"/>"> </a>
                                    </div>
                                </div>
                                <hr>
                                <div class="b-all p-20">
                                    <p class="p-b-20">Nh???n ????? <a href="#">Tr??? l???i</a> ho???c <a href="#">Chuy???n ti???p</a></p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <footer class="footer text-center"> ??Copyright 2020 - Huy & Tr???ng. ???? ????ng k?? b???n quy???n.</footer>
</div>

<script src="<c:url value="/admin-resources/plugins/bower_components/jquery/dist/jquery.min.js"/>"></script>
<script src="<c:url value="/admin-resources/bootstrap/dist/js/tether.min.js"/>"></script>
<script src="<c:url value="/admin-resources/bootstrap/dist/js/bootstrap.min.js"/>"></script>
<script src="<c:url value="/admin-resources/plugins/bower_components/bootstrap-extension/js/bootstrap-extension.min.js"/>"></script>
<script src="<c:url value="/admin-resources/plugins/bower_components/sidebar-nav/dist/sidebar-nav.min.js"/>"></script>
<script src="<c:url value="/admin-resources/js/jquery.slimscroll.js"/>"></script>
<script src="<c:url value="/admin-resources/js/waves.js"/>"></script>
<script src="<c:url value="/admin-resources/js/custom.min.js"/>"></script>
<script src="<c:url value="/admin-resources/plugins/bower_components/styleswitcher/jQuery.style.switcher.js"/>"></script>
</body>
</html>