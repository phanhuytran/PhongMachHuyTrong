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
    <link href="<c:url value="/admin-resources/plugins/bower_components/calendar/dist/fullcalendar.css"/>" rel="stylesheet" />
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
                    <h4 class="page-title">L???ch h???n B??c s??</h4>
                </div>
                <div class="col-lg-9 col-sm-8 col-md-8 col-xs-12">
                    <a href="/" target="_blank" class="btn btn-danger pull-right m-l-20 btn-rounded btn-outline hidden-xs hidden-sm waves-effect waves-light">Trang ch???</a>
                </div>
            </div>
            <div class="row">
                <div class="col-md-3">
                    <div class="white-box">
                        <h3 class="box-title">L???ch h???n B??c s??</h3>
                        <div class="row">
                            <div class="col-md-12 col-sm-12 col-xs-12">

                                <div id="calendar-events" class="m-t-20">
                                    <div class="calendar-events" data-class="bg-info"><i class="fas fa-circle text-info"></i> 10:00</div>
                                    <div class="calendar-events" data-class="bg-success"><i class="fas fa-circle text-success"></i> 11:00</div>
                                    <div class="calendar-events" data-class="bg-danger"><i class="fas fa-circle text-danger"></i> 12:00</div>
                                    <div class="calendar-events" data-class="bg-warning"><i class="fas fa-circle text-warning"></i> 13:00</div>
                                </div>
                                <div class="checkbox">
                                    <input id="drop-remove" type="checkbox">
                                    <label for="drop-remove">
                                        X??a sau khi th???
                                    </label>
                                </div>
                                <a href="#" data-toggle="modal" data-target="#add-new-event" class="btn btn-lg m-t-40 btn-danger btn-block waves-effect waves-light">
                                    <i class="fas fa-plus"></i> Ch???nh s???a
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-9">
                    <div class="white-box">
                        <div id="calendar"></div>
                    </div>
                </div>
            </div>
            <!-- /.row -->
            <!-- BEGIN MODAL -->
            <div class="modal fade none-border" id="my-event">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                            <h4 class="modal-title"><strong>Ch???nh s???a</strong></h4>
                        </div>
                        <div class="modal-body"></div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-white waves-effect" data-dismiss="modal">????ng</button>
                            <button type="button" class="btn btn-success save-event waves-effect waves-light">T???o s??? ki???n</button>
                            <button type="button" class="btn btn-danger delete-event waves-effect waves-light" data-dismiss="modal">X??a</button>
                        </div>
                    </div>
                </div>
            </div>

            <div class="modal fade none-border" id="add-new-event">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                            <h4 class="modal-title"><strong>Ch???nh S???a</strong> Ng??y</h4>
                        </div>
                        <div class="modal-body">
                            <form role="form">
                                <div class="row">
                                    <div class="col-md-6">
                                        <label class="control-label">H??? v?? T??n b???nh nh??n</label>
                                        <input class="form-control form-white" placeholder="nh???p h??? v?? t??n b???nh nh??n" type="text" name="category-name"/>
                                    </div>
                                    <div class="col-md-6">
                                        <label class="control-label">L???a ch???n danh m???c m??u</label>
                                        <select class="form-control form-white" data-placeholder="L???a ch???n m???t m??u..." name="category-color">
                                            <option value="success">Success</option>
                                            <option value="danger">Danger</option>
                                            <option value="info">Info</option>
                                            <option value="primary">Primary</option>
                                            <option value="warning">Warning</option>
                                            <option value="inverse">Inverse</option>
                                        </select>
                                    </div>
                                </div>
                            </form>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-danger waves-effect waves-light save-category" data-dismiss="modal">L??u</button>
                            <button type="button" class="btn btn-white waves-effect" data-dismiss="modal">????ng</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <footer class="footer text-center"> ??Copyright 2020 - Huy & Tr???ng. ???? ????ng k?? b???n quy???n.</footer>
    </div>
</div>


</body>
</html>