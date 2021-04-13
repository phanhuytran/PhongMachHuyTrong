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
</head>

<body>
<div id="wrapper">
    <tiles:insertAttribute name="index-01"/>
    <tiles:insertAttribute name="index-02"/>
    <div id="page-wrapper">
        <div class="container-fluid">
            <div class="row bg-title">
                <div class="col-lg-3 col-md-4 col-sm-4 col-xs-12">
                    <h4 class="page-title">Hóa đơn bệnh nhân</h4>
                </div>
            </div>
            <div class="row">
                <div class="col-md-12">
                    <div class="white-box">
                        <h3><b>HÓA ĐƠN</b> <span class="pull-right">#5669626</span></h3>
                        <hr>
                        <div class="row">
                            <div class="col-md-12">
                                <div class="pull-left"> <address>
                                    <h3> &nbsp;<b class="text-danger">PHÒNG MẠCH HUY TRỌNG</b></h3>
                                    <p class="text-muted m-l-5">371 Nguyễn Kiệm<br/>
                                        Phường 3, Gò Vấp<br/>
                                        TP Hồ Chí Minh<br/>
                                        Việt Nam</p>
                                </address> </div>
                                <div class="pull-right text-right"> <address>
                                    <h3>Đến,</h3>
                                    <h4 class="font-bold">Đặng Hoàng Bửu</h4>
                                    <p class="text-muted m-l-30">371 Nguyễn Kiệm<br/>
                                        Phường 3, Gò Vấp<br/>
                                        TP Hồ Chí Minh<br/>
                                        Việt Nam</p>
                                    <p class="m-t-30"><b>Ngày lập hóa đơn:</b> <i class="fas fa-calendar"></i> 13/04/2021</p>
                                    <p><b>Ngày đáo hạn:</b> <i class="fas fa-calendar"></i> 15/04/2021</p>
                                </address> </div>
                            </div>
                            <div class="col-md-12">
                                <div class="table-responsive m-t-40">
                                    <table class="table table-hover">
                                        <thead>
                                        <tr>
                                            <th class="text-center">#</th>
                                            <th>Tên mục</th>
                                            <th class="text-right">Số lượng</th>
                                            <th class="text-right">Chi phí</th>
                                            <th class="text-right">Tổng cộng</th>
                                        </tr>
                                        </thead>
                                        <tbody>
                                        <tr>
                                            <td class="text-center">1</td>
                                            <td>Phí thăm quan</td>
                                            <td class="text-right">-</td>
                                            <td class="text-right">$100</td>
                                            <td class="text-right">$100</td>
                                        </tr>
                                        <tr>
                                            <td class="text-center">2</td>
                                            <td>Thuốc</td>
                                            <td class="text-right">10</td>
                                            <td class="text-right">$100</td>
                                            <td class="text-right">$1000</td>
                                        </tr>
                                        <tr>
                                            <td class="text-center">3</td>
                                            <td>Báo cáo X-ray</td>
                                            <td class="text-right">2</td>
                                            <td class="text-right">$600</td>
                                            <td class="text-right">$1200</td>
                                        </tr>
                                        <tr>
                                            <td class="text-center">4</td>
                                            <td>Khoản phí khác</td>
                                            <td class="text-right">-</td>
                                            <td class="text-right">-</td>
                                            <td class="text-right">$300</td>
                                        </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                            <div class="col-md-12">
                                <div class="pull-right m-t-30 text-right">
                                    <p>Chi phí: $1600</p>
                                    <p>Thuế (10%) : $160 </p>
                                    <hr>
                                    <h3><b>Tổng tiền :</b> $1760</h3> </div>
                                <div class="clearfix"></div>
                                <hr>
                                <div class="text-right">
                                    <button class="btn btn-danger" type="submit"> Tiến hành thanh toán </button>
                                    <button onClick="javascript:window.print();" class="btn btn-default btn-outline" type="button"> <span><i class="fas fa-print"></i> In</span> </button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <footer class="footer text-center"> ©Copyright 2020 - Huy & Trọng. Đã đăng ký bản quyền.</footer>
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
<script src="<c:url value="/admin-resources/js/custom.min.js"/>"></script>
<script src="<c:url value="/admin-resources/plugins/bower_components/styleswitcher/jQuery.style.switcher.js"/>"></script>
</body>
</html>