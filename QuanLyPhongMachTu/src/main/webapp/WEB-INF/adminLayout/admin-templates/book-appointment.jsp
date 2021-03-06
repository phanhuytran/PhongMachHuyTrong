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
    <link href="<c:url value="/admin-resources/bootstrap/dist/css/bootstrap.min.css"/>" rel="stylesheet">
    <link href="<c:url value="/admin-resources/plugins/bower_components/bootstrap-extension/css/bootstrap-extension.css"/>" rel="stylesheet">
    <link href="<c:url value="/admin-resources/plugins/bower_components/sidebar-nav/dist/sidebar-nav.min.css"/>" rel="stylesheet">
    <link href="<c:url value="/admin-resources/plugins/bower_components/bootstrap-datepicker/bootstrap-datepicker.min.css"/>" rel="stylesheet" type="text/css" />
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
                    <h4 class="page-title">????ng k?? l???ch kh??m</h4>
                </div>
                <div class="col-lg-9 col-sm-8 col-md-8 col-xs-12">
                    <a href="/" target="_blank" class="btn btn-danger pull-right m-l-20 btn-rounded btn-outline hidden-xs hidden-sm waves-effect waves-light">Trang ch???</a>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-12">
                    <div class="white-box">
                        <h3 class="box-title">Th??ng tin l???ch kh??m</h3>
                        <form class="form-material form-horizontal">
                            <div class="form-group">
                                <label class="col-md-12" for="example-text">H??? v?? T??n</label>
                                <div class="col-md-12">
                                    <input type="text" id="example-text" name="example-text" class="form-control" placeholder="nh???p h??? v?? t??n">
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-md-12" for="bdate">Ng??y sinh</label>
                                <div class="col-md-12">
                                    <input type="text" id="bdate" name="bdate" class="form-control mydatepicker" placeholder="nh???p ng??y sinh">
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-12">Gi???i t??nh</label>
                                <div class="col-sm-12">
                                    <select class="form-control">
                                        <option>L???a ch???n gi???i t??nh</option>
                                        <option>Nam</option>
                                        <option>N???</option>
                                    </select>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-12">D???ch v???</label>
                                <div class="col-sm-12">
                                    <select class="form-control">
                                        <option>L???a ch???n d???ch v???</option>
                                        <option>Ki???m tra nha khoa</option>
                                        <option>Ki???m tra t???ng qu??t</option>
                                        <option>Ki???m tra ENT</option>
                                        <option>Ki???m tra tim m???ch</option>
                                    </select>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-md-12" for="date-time">Th???i gian kh??m<span class="text-muted font-12 p-l-20">(V?? d???: 32/13/2021 17:45")</span></label>
                                <div class="col-md-12">
                                    <input type="text" id="date-time" name="date-time" class="form-control" placeholder="nh???p th???i gian kh??m" data-mask="99/99/9999 99:99 am">
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-md-12" for="example-email">Email</label>
                                <div class="col-md-12">
                                    <input type="email" id="example-email" name="example-email" class="form-control" placeholder="nh???p email">
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-md-12" for="example-phone">S??? ??i???n tho???i</label>
                                <div class="col-md-12">
                                    <input type="text" id="example-phone" name="example-phone" class="form-control" placeholder="nh???p s??? ??i???n tho???i" data-mask="(999) 999-9999">
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-md-12">M?? t???</label>
                                <div class="col-md-12">
                                    <textarea class="form-control" rows="3"></textarea>
                                </div>
                            </div>
                            <button type="submit" class="btn btn-info waves-effect waves-light m-r-10">?????t l???ch kh??m</button>
                            <button type="submit" class="btn btn-inverse waves-effect waves-light">H???y</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
        <footer class="footer text-center"> ??Copyright 2020 - Huy & Tr???ng. ???? ????ng k?? b???n quy???n.</footer>
    </div>
</div>

<script src="<c:url value="/admin-resources/plugins/bower_components/jquery/dist/jquery.min.js"/>"></script>

<script src="<c:url value="/admin-resources/plugins/bower_components/jquery/dist/jquery.min.js"/>"></script>
<script src="<c:url value="/admin-resources/bootstrap/dist/js/tether.min.js"/>"></script>
<script src="<c:url value="/admin-resources/bootstrap/dist/js/bootstrap.min.js"/>"></script>
<script src="<c:url value="/admin-resources/plugins/bower_components/bootstrap-extension/js/bootstrap-extension.min.js"/>"></script>
<script src="<c:url value="/admin-resources/plugins/bower_components/sidebar-nav/dist/sidebar-nav.min.js"/>"></script>
<script src="<c:url value="/admin-resources/js/jquery.slimscroll.js"/>"></script>
<script src="<c:url value="/admin-resources/js/waves.js"/>"></script>
<script src="<c:url value="/admin-resources/plugins/bower_components/bootstrap-datepicker/bootstrap-datepicker.min.js"/>"></script>
<script type="text/javascript">
    jQuery('.mydatepicker').datepicker();
</script>
<script src="<c:url value="/admin-resources/js/custom.min.js"/>"></script>
<script src="<c:url value="/admin-resources/js/mask.js"/>"></script>
<script src="<c:url value="/admin-resources/plugins/bower_components/styleswitcher/jQuery.style.switcher.js"/>"></script>
</body>
</html>