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
    <link href="<c:url value="/admin-resources/plugins/bower_components/bootstrap-datepicker/bootstrap-datepicker.min.css"/>" rel="stylesheet" type="text/css" />
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
            a = s.createElement(o), m = s.getElementsByTagName(o)[0];
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
                    <h4 class="page-title">C???p nh???t th??ng tin b???nh nh??n</h4>
                </div>
                <div class="col-lg-9 col-sm-8 col-md-8 col-xs-12">
                    <a href="/" target="_blank" class="btn btn-danger pull-right m-l-20 btn-rounded btn-outline hidden-xs hidden-sm waves-effect waves-light">Trang ch???</a>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-12">
                    <div class="white-box">
                        <h3 class="box-title">Th??ng tin c?? b???n</h3>
                        <form:form class="form-material form-horizontal"  modelAttribute="patient"  method="post">
                            <div class="form-group">
                                <label class="col-md-12" for="ho">H???
                                </label>
                                <div class="col-md-12">
                                    <form:input type="text" path="ho" class="form-control" placeholder="nh???p h??? " value="${d.ho}"/> </div>
                            </div>
                            <div class="form-group">
                                <label class="col-md-12" for="ten">T??n
                                </label>
                                <div class="col-md-12">
                                    <form:input path="ten" type="text"  class="form-control" placeholder="nh???p t??n" value="${d.ten}"/> </div>
                            </div>
                            <div class="form-group">
                                <label class="col-md-12" for="ngaySinh">Ng??y sinh</span>
                                </label>
                                <div class="col-md-12">
                                    <form:input path="ngaySinh" type="text"  class="form-control mydatepicker" placeholder="nh???p ng??y sinh" value="${d.ngaySinh}"/> </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-12">Gi???i t??nh</label>
                                <div class="col-sm-12">
                                    <form:select path="gioiTinh" class="form-control">
                                        <option>L???a ch???n gi???i t??nh</option>
                                        <form:option value="Nam">Nam</form:option>
                                        <form:option value="Nu">N???</form:option>
                                    </form:select>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-md-12" for="dienThoai">S??? ??i???n tho???i</span>
                                </label>
                                <div class="col-md-12">
                                    <form:input path="dienThoai" type="text"  class="form-control" placeholder="S??? ??i???n tho???i" value="${d.dienThoai}"/> </div>
                            </div>
<%--                            <div class="form-group">--%>
<%--                                <label class="col-sm-12">???nh ?????i di???n</label>--%>
<%--                                <div class="col-sm-12"> <img class="img-responsive" src="<c:url value="/admin-resources/plugins/images/users/varun.jpg"/>" alt="" style="max-width:120px;"> </div>--%>
<%--                                <div class="col-sm-12">--%>
<%--                                    <div class="fileinput fileinput-new input-group" data-provides="fileinput">--%>
<%--                                        <div class="form-control" data-trigger="fileinput"> <i class="glyphicon glyphicon-file fileinput-exists"></i> <span class="fileinput-filename"></span></div> <span class="input-group-addon btn btn-default btn-file"> <span class="fileinput-new">Ch???n ???nh</span> <span class="fileinput-exists">Thay ?????i</span>--%>
<%--                                            <input type="file" name="..."> </span> <a href="#" class="input-group-addon btn btn-default fileinput-exists" data-dismiss="fileinput">X??a ???nh</a> </div>--%>
<%--                                </div>--%>
<%--                            </div>--%>
                            <div class="form-group">
                                <label class="col-md-12">M?? t???</label>
                                <div class="col-md-12">
                                    <textarea class="form-control" rows="3">T??i l?? con ng?????i c???u to??n n??n th???nh tho???ng l??m vi???c g?? c??ng ch???m.</textarea>
                                </div>
                            </div>
                            <button type="submit" class="btn btn-info waves-effect waves-light m-r-10">C???p nh???t</button>
<%--                            <button type="submit" class="btn btn-inverse waves-effect waves-light">H???y</button>--%>
                        </form:form>
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
<script src="<c:url value="/admin-resources/plugins/bower_components/bootstrap-datepicker/bootstrap-datepicker.min.js"/>"></script>
<script type="text/javascript">
    jQuery('.mydatepicker').datepicker();
</script>
<script src="<c:url value="/admin-resources/js/custom.min.js"/>"></script>
<script src="<c:url value="/admin-resources/js/jasny-bootstrap.js"/>"></script>
<script src="<c:url value="/admin-resources/js/mask.js"/>"></script>
<script src="<c:url value="/admin-resources/plugins/bower_components/styleswitcher/jQuery.style.switcher.js"/>"></script>
</body>
</html>