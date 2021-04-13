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
    <link href="<c:url value="/admin-resources/plugins/bower_components/html5-editor/bootstrap-wysihtml5.css"/>" rel="stylesheet"/>
    <link href="<c:url value="/admin-resources/plugins/bower_components/dropzone-master/dist/dropzone.css"/>" rel="stylesheet" type="text/css" />
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
                    <h4 class="page-title">Soạn thư</h4>
                </div>
            </div>
            <div class="row">
                <!-- Left sidebar -->
                <div class="col-md-12">
                    <div class="white-box">
                        <div class="row">
                            <div class="col-lg-2 col-md-3  col-sm-4 col-xs-12 inbox-panel">
                                <div> <a href="#" class="btn btn-custom btn-block waves-effect waves-light">Biên soạn</a>
                                    <div class="list-group mail-list m-t-20"> <a href="#" class="list-group-item active">Hộp thư đến<span class="label label-rouded label-success pull-right">5</span></a> <a href="#" class="list-group-item ">Đánh dấu</a> <a href="#" class="list-group-item">Bản nháp<span class="label label-rouded label-warning pull-right">15</span></a> <a href="#" class="list-group-item">Thư đã gửi</a> <a href="#" class="list-group-item">Thùng rác <span class="label label-rouded label-default pull-right">55</span></a> </div>
                                    <h3 class="panel-title m-t-40 m-b-0">Mô tả</h3>
                                    <hr class="m-t-5">
                                    <div class="list-group b-0 mail-list"> <a href="#" class="list-group-item"><span class="fas fa-circle text-info m-r-10"></span>Công việc</a> <a href="#" class="list-group-item"><span class="fas fa-circle text-warning m-r-10"></span>Gia đình</a> <a href="#" class="list-group-item"><span class="fas fa-circle text-purple m-r-10"></span>Riêng tư</a> <a href="#" class="list-group-item"><span class="fas fa-circle text-danger m-r-10"></span>Bạn bè</a> <a href="#" class="list-group-item"><span class="fas fa-circle text-success m-r-10"></span>Công ty</a> </div>
                                </div>
                            </div>
                            <div class="col-lg-10 col-md-9 col-sm-8 col-xs-12 mail_listing">
                                <h3 class="box-title">Soạn tin mới</h3>
                                <div class="form-group">
                                    <input class="form-control" placeholder="Đến:"> </div>
                                <div class="form-group">
                                    <input class="form-control" placeholder="Chủ đề:"> </div>
                                <div class="form-group">
                                    <textarea class="textarea_editor form-control" rows="15" placeholder="Nhập văn bản..."></textarea>
                                </div>
                                <h4><i class="fas fa-link"></i> Tệp đính kèm</h4>
                                <form action="#" class="dropzone">
                                    <div class="fallback">
                                        <input name="file" type="file" multiple /> </div>
                                </form>
                                <hr>
                                <button type="submit" class="btn btn-primary"><i class="fas fa-envelope"></i> Gửi</button>
                                <button class="btn btn-default"><i class="fas fa-times"></i> Hủy</button>
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
<script src="<c:url value="/admin-resources/plugins/bower_components/html5-editor/wysihtml5-0.3.0.js"/>"></script>
<script src="<c:url value="/admin-resources/plugins/bower_components/html5-editor/bootstrap-wysihtml5.js"/>"></script>
<script src="<c:url value="/admin-resources/plugins/bower_components/dropzone-master/dist/dropzone.js"/>"></script>
<script>
    $(document).ready(function () {
        $('.textarea_editor').wysihtml5();
    });
</script>
<script src="js/custom.min.js"></script>
<script src="<c:url value="/admin-resources/plugins/bower_components/styleswitcher/jQuery.style.switcher.js"/>"></script>
</body>
</html>