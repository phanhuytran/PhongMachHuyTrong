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
                    <h4 class="page-title">Hộp thư</h4>
                </div>
                <div class="col-lg-9 col-sm-8 col-md-8 col-xs-12">
                    <a href="/" target="_blank" class="btn btn-danger pull-right m-l-20 btn-rounded btn-outline hidden-xs hidden-sm waves-effect waves-light">Trang chủ</a>
                </div>
            </div>
            <div class="row">
                <!-- Left sidebar -->
                <div class="col-md-12">
                    <div class="white-box">
                        <!-- row -->
                        <div class="row">
                            <div class="col-lg-2 col-md-3  col-sm-12 col-xs-12 inbox-panel">
                                <div> <a href="#" class="btn btn-custom btn-block waves-effect waves-light">Biên soạn</a>
                                    <div class="list-group mail-list m-t-20"> <a href="#" class="list-group-item active">Hộp thư đến<span class="label label-rouded label-success pull-right">5</span></a> <a href="#" class="list-group-item ">Đánh dấu</a> <a href="#" class="list-group-item">Bản nháp<span class="label label-rouded label-warning pull-right">15</span></a> <a href="#" class="list-group-item">Thư đã gửi</a> <a href="#" class="list-group-item">Thùng rác <span class="label label-rouded label-default pull-right">55</span></a> </div>
                                    <h3 class="panel-title m-t-40 m-b-0">Mô tả</h3>
                                    <hr class="m-t-5">
                                    <div class="list-group b-0 mail-list"> <a href="#" class="list-group-item"><span class="fas fa-circle text-info m-r-10"></span>Công việc</a> <a href="#" class="list-group-item"><span class="fas fa-circle text-warning m-r-10"></span>Gia đình</a> <a href="#" class="list-group-item"><span class="fas fa-circle text-purple m-r-10"></span>Riêng tư</a> <a href="#" class="list-group-item"><span class="fas fa-circle text-danger m-r-10"></span>Bạn bè</a> <a href="#" class="list-group-item"><span class="fas fa-circle text-success m-r-10"></span>Công ty</a> </div>
                                </div>
                            </div>
                            <div class="col-lg-10 col-md-9 col-sm-12 col-xs-12 mail_listing">
                                <div class="inbox-center">
                                    <table style="font-size: 13.5px;" class="table table-hover">
                                        <thead>
                                        <tr>
                                            <th width="30">
                                                <div class="checkbox m-t-0 m-b-0 ">
                                                    <input id="checkbox0" type="checkbox" class="checkbox-toggle" value="check all">
                                                    <label for="checkbox0"></label>
                                                </div>
                                            </th>
                                            <th colspan="4">
                                                <div class="btn-group">
                                                    <button type="button" class="btn btn-primary dropdown-toggle waves-effect waves-light m-r-5" data-toggle="dropdown" aria-expanded="false"> Chọn lọc <b class="caret"></b> </button>
                                                    <ul class="dropdown-menu" role="menu">
                                                        <li><a href="#fakelink">Đã đọc</a></li>
                                                        <li><a href="#fakelink">Chưa đọc</a></li>
                                                        <li><a href="#fakelink">Khác</a></li>
                                                        <li class="divider"></li>
                                                        <li><a href="#fakelink">Liên kết được phân tách</a></li>
                                                    </ul>
                                                </div>
                                                <div class="btn-group">
                                                    <button type="button" class="btn btn-default waves-effect waves-light  dropdown-toggle" data-toggle="dropdown" aria-expanded="false"> <i class="fas fa-refresh"></i> </button>
                                                </div>
                                            </th>
                                            <th class="hidden-xs" width="100">
                                                <div class="btn-group pull-right">
                                                    <button type="button" class="btn btn-default waves-effect"><i class="fas fa-chevron-left"></i></button>
                                                    <button type="button" class="btn btn-default waves-effect"><i class="fas fa-chevron-right"></i></button>
                                                </div>
                                            </th>
                                        </tr>
                                        </thead>
                                        <tbody>
                                        <tr class="unread">
                                            <td>
                                                <div class="checkbox m-t-0 m-b-0">
                                                    <input type="checkbox">
                                                    <label for="checkbox0"></label>
                                                </div>
                                            </td>
                                            <td class="hidden-xs"><i class="fas fa-star"></i></td>
                                            <td class="hidden-xs">Hritik Roshan</td>
                                            <td class="max-texts"> <a href="/inbox-detail" /><span class="label label-info m-r-10">Work</span> Bà con ai đang gặp các vấn đề về xương khớp</td>
                                            </td>
                                            <td class="hidden-xs"><i class="fas fa-link"></i></td>
                                            <td class="text-right"> 12:30 </td>
                                        </tr>
                                        <tr class="unread">
                                            <td>
                                                <div class="checkbox m-t-0 m-b-0">
                                                    <input type="checkbox">
                                                    <label for="checkbox0"></label>
                                                </div>
                                            </td>
                                            <td class="hidden-xs"><i class="fas fa-star text-warning"></i></td>
                                            <td class="hidden-xs">Genelia Roshan</td>
                                            <td class="max-texts"><a href="/inbox-detail"> Bà con ai đang gặp các vấn đề về xương khớp</a></td>
                                            <td class="hidden-xs"><i class="fas fa-link"></i></td>
                                            <td class="text-right"> 13 thg 5 </td>
                                        </tr>
                                        <tr class="unread">
                                            <td>
                                                <div class="checkbox m-t-0 m-b-0">
                                                    <input type="checkbox">
                                                    <label for="checkbox0"></label>
                                                </div>
                                            </td>
                                            <td class="hidden-xs"><i class="fas fa-star"></i></td>
                                            <td class="hidden-xs">Ritesh Deshmukh</td>
                                            <td class="max-texts"><a href="/inbox-detail"><span class="label label-success">Elite</span> Bà con ai đang gặp các vấn đề về xương khớp</a></td>
                                            <td class="hidden-xs"><i class="fas fa-link"></i></td>
                                            <td class="text-right"> 12 thg 5 </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <div class="checkbox m-t-0 m-b-0">
                                                    <input type="checkbox">
                                                    <label for="checkbox0"></label>
                                                </div>
                                            </td>
                                            <td class="hidden-xs"><i class="fas fa-star"></i></td>
                                            <td class="hidden-xs">Akshay Kumar</td>
                                            <td class="max-texts"><a href="/inbox-detail"><span class="label label-warning">Work</span> Bà con ai đang gặp các vấn đề về xương khớp</a></td>
                                            <td class="hidden-xs"><i class="fas fa-link"></i></td>
                                            <td class="text-right"> 10 thg 5 </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <div class="checkbox m-t-0 m-b-0">
                                                    <input type="checkbox">
                                                    <label for="checkbox0"></label>
                                                </div>
                                            </td>
                                            <td class="hidden-xs"><i class="fas fa-star"></i></td>
                                            <td class="hidden-xs">Hritik Roshan</td>
                                            <td class="max-texts"><a href="/inbox-detail"><span class="label label-info m-r-10">Work</span> Bà con ai đang gặp các vấn đề về xương khớp</a></td>
                                            <td class="hidden-xs"><i class="fas fa-link"></i></td>
                                            <td class="text-right"> 8 thg 5 </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <div class="checkbox m-t-0 m-b-0">
                                                    <input type="checkbox">
                                                    <label for="checkbox0"></label>
                                                </div>
                                            </td>
                                            <td class="hidden-xs"><i class="fas fa-star text-warning"></i></td>
                                            <td class="hidden-xs">Genelia Roshan</td>
                                            <td class="max-texts"><a href="/inbox-detail"> Bà con ai đang gặp các vấn đề về xương khớp</a></td>
                                            <td class="hidden-xs"><i class="fas fa-link"></i></td>
                                            <td class="text-right"> 8 thg 5 </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <div class="checkbox m-t-0 m-b-0">
                                                    <input type="checkbox">
                                                    <label for="checkbox0"></label>
                                                </div>
                                            </td>
                                            <td class="hidden-xs"><i class="fas fa-star"></i></td>
                                            <td class="hidden-xs">Ritesh Deshmukh</td>
                                            <td class="max-texts"><a href="/inbox-detail"><span class="label label-success">Elite</span> Bà con ai đang gặp các vấn đề về xương khớp</a></td>
                                            <td class="hidden-xs"><i class="fas fa-link"></i></td>
                                            <td class="text-right"> 7 thg 5 </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <div class="checkbox m-t-0 m-b-0">
                                                    <input type="checkbox">
                                                    <label for="checkbox0"></label>
                                                </div>
                                            </td>
                                            <td class="hidden-xs"><i class="fas fa-star"></i></td>
                                            <td class="hidden-xs">Akshay Kumar</td>
                                            <td class="max-texts"><a href="/inbox-detail"><span class="label label-warning">Work</span> Bà con ai đang gặp các vấn đề về xương khớp</a></td>
                                            <td class="hidden-xs"><i class="fas fa-link"></i></td>
                                            <td class="text-right"> 6 thg 5 </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <div class="checkbox m-t-0 m-b-0">
                                                    <input type="checkbox">
                                                    <label for="checkbox0"></label>
                                                </div>
                                            </td>
                                            <td class="hidden-xs"><i class="fas fa-star"></i></td>
                                            <td class="hidden-xs">Hritik Roshan</td>
                                            <td class="max-texts"><a href="/inbox-detail"><span class="label label-info m-r-10">Work</span> Bà con ai đang gặp các vấn đề về xương khớp</a></td>
                                            <td class="hidden-xs"><i class="fas fa-link"></i></td>
                                            <td class="text-right"> 5 thg 5 </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <div class="checkbox m-t-0 m-b-0">
                                                    <input type="checkbox">
                                                    <label for="checkbox0"></label>
                                                </div>
                                            </td>
                                            <td class="hidden-xs"><i class="fas fa-star text-warning"></i></td>
                                            <td class="hidden-xs">Genelia Roshan</td>
                                            <td class="max-texts"><a href="/inbox-detail"> Bà con ai đang gặp các vấn đề về xương khớp</a></td>
                                            <td class="hidden-xs"><i class="fas fa-link"></i></td>
                                            <td class="text-right"> 5 thg 5 </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <div class="checkbox m-t-0 m-b-0">
                                                    <input type="checkbox">
                                                    <label for="checkbox0"></label>
                                                </div>
                                            </td>
                                            <td class="hidden-xs"><i class="fas fa-star"></i></td>
                                            <td class="hidden-xs">Ritesh Deshmukh</td>
                                            <td class="max-texts"><a href="/inbox-detail"><span class="label label-success">Elite</span> Bà con ai đang gặp các vấn đề về xương khớp</a></td>
                                            <td class="hidden-xs"><i class="fas fa-link"></i></td>
                                            <td class="text-right"> 5 thg 5 </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <div class="checkbox m-t-0 m-b-0">
                                                    <input type="checkbox">
                                                    <label for="checkbox0"></label>
                                                </div>
                                            </td>
                                            <td class="hidden-xs"><i class="fas fa-star"></i></td>
                                            <td class="hidden-xs">Akshay Kumar</td>
                                            <td class="max-texts"><a href="/inbox-detail"><span class="label label-warning">Work</span> Bà con ai đang gặp các vấn đề về xương khớp</a></td>
                                            <td class="hidden-xs"><i class="fas fa-link"></i></td>
                                            <td class="text-right"> 4 thg 5 </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <div class="checkbox m-t-0 m-b-0">
                                                    <input type="checkbox">
                                                    <label for="checkbox0"></label>
                                                </div>
                                            </td>
                                            <td class="hidden-xs"><i class="fas fa-star"></i></td>
                                            <td class="hidden-xs">Hritik Roshan</td>
                                            <td class="max-texts"><a href="/inbox-detail"><span class="label label-info m-r-10">Work</span> Bà con ai đang gặp các vấn đề về xương khớp</a></td>
                                            <td class="hidden-xs"><i class="fas fa-link"></i></td>
                                            <td class="text-right"> 3 thg 5 </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <div class="checkbox m-t-0 m-b-0">
                                                    <input type="checkbox">
                                                    <label for="checkbox0"></label>
                                                </div>
                                            </td>
                                            <td class="hidden-xs"><i class="fas fa-star text-warning"></i></td>
                                            <td class="hidden-xs">Genelia Roshan</td>
                                            <td class="max-texts"><a href="/inbox-detail"> Bà con ai đang gặp các vấn đề về xương khớp</a></td>
                                            <td class="hidden-xs"><i class="fas fa-link"></i></td>
                                            <td class="text-right"> 30 thg 4 </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <div class="checkbox m-t-0 m-b-0">
                                                    <input type="checkbox">
                                                    <label for="checkbox0"></label>
                                                </div>
                                            </td>
                                            <td class="hidden-xs"><i class="fas fa-star"></i></td>
                                            <td class="hidden-xs">Ritesh Deshmukh</td>
                                            <td class="max-texts"><a href="/inbox-detail"><span class="label label-success">Elite</span> Bà con ai đang gặp các vấn đề về xương khớp</a></td>
                                            <td class="hidden-xs"><i class="fas fa-link"></i></td>
                                            <td class="text-right"> 27 thg 4 </td>
                                        </tr>
                                        </tbody>
                                    </table>
                                </div>
                                <div class="row">
                                    <div class="col-xs-7 m-t-20"> Hiển thị 1 - 15 of 200 </div>
                                    <div class="col-xs-5 m-t-20">
                                        <div class="btn-group pull-right">
                                            <button type="button" class="btn btn-default waves-effect"><i class="fas fa-chevron-left"></i></button>
                                            <button type="button" class="btn btn-default waves-effect"><i class="fas fa-chevron-right"></i></button>
                                        </div>
                                    </div>
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