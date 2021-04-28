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
                    <h4 class="page-title">Chi tiết hộp thư</h4>
                </div>
                <div class="col-lg-9 col-sm-8 col-md-8 col-xs-12">
                    <a href="/" target="_blank" class="btn btn-danger pull-right m-l-20 btn-rounded btn-outline hidden-xs hidden-sm waves-effect waves-light">Trang chủ</a>
                </div>
            </div>
            <div class="row">
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
                                <div class="media m-b-30 p-t-20">
                                    <h4 class="font-bold m-t-0">Tiêu đề tin nhắn của bạn ở đây</h4>
                                    <hr>
                                    <a class="pull-left" href="#"> <img class="media-object thumb-sm img-circle" src="<c:url value="/admin-resources/plugins/images/users/pawandeep.jpg"/>" alt=""> </a>
                                    <div class="media-body"> <span class="media-meta pull-right">17:25</span>
                                        <h4 class="text-danger m-0">Đặng Hoàng Bửu</h4> <small class="text-muted">Từ: ocbuouvang@gmail.com</small> </div>
                                </div>
                                <p>Thời gian đã qua đi, không thể trở lại. Dòng sông đã ra đi làm sao về chốn cũ. Náo nước khơi xa. Không thể thiếu những cánh buồm. Áng mây trên đầu không thể ngừng trôi. Còn đâu miền dương gian. Khi úa tan mặt trời. Bình minh có lên ngôi. Khi không còn đêm tối. Đã có sông sâu. Không thể thiếu những suối nguồn. Vắng em nhau đời. Không còn tình yêu.</p>
                                <p>Người đã ra đi có thể trở lại. Vết thương ngày nào có thể liền da. Nước mắt sẽ thôi rơi. Đôi môi lại chín đỏ. Bồi hồi ngày gặp nhau. Xua tan đi bao nỗi mong nhớ. Vòng tay yêu thương có thể rộng mở. Bóng mây muộn sầu có thể dần tan. Và điều này thật rộn ràng êm ái. Có thể một ngày mai chúng ta sẽ thành đôi.</p>
                                <hr>
                                <h4> <i class="fas fa-link m-r-10 m-b-10"></i> Tệp đính kèm <span>(3)</span> </h4>
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
                                    <p class="p-b-20">Nhấn để <a href="#">Trả lời</a> hoặc <a href="#">Chuyển tiếp</a></p>
                                </div>
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
<script src="<c:url value="/admin-resources/js/custom.min.js"/>"></script>
<script src="<c:url value="/admin-resources/plugins/bower_components/styleswitcher/jQuery.style.switcher.js"/>"></script>
</body>
</html>