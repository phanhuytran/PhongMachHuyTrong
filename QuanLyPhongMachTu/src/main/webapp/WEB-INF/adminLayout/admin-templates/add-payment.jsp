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
                    <h4 class="page-title">Th??m h??a ????n thanh to??n</h4>
                </div>
                <div class="col-lg-9 col-sm-8 col-md-8 col-xs-12">
                    <a href="/" target="_blank" class="btn btn-danger pull-right m-l-20 btn-rounded btn-outline hidden-xs hidden-sm waves-effect waves-light">Trang ch???</a>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-12">
                    <div class="white-box">
                        <h3 class="box-title">Th??ng tin thanh to??n</h3>
                        <form class="form-material form-horizontal">
                            <div class="form-group">
                                <label class="col-md-12" for="example-text">S??? thanh to??n</span>
                                </label>
                                <div class="col-md-12">
                                    <input type="text" id="example-text" name="example-text" class="form-control"> </div>
                            </div>
                            <div class="form-group">
                                <label class="col-md-12" for="paydate">Ng??y thanh to??n</span>
                                </label>
                                <div class="col-md-12">
                                    <input type="text" id="paydate" name="paydate" class="form-control mydatepicker"> </div>
                            </div>
                            <div class="form-group">
                                <label class="col-md-12" for="pname">T??n b???nh nh??n</span>
                                </label>
                                <div class="col-md-12">
                                    <input type="text" id="pname" name="pname" class="form-control"> </div>
                            </div>
                            <div class="form-group">
                                <label class="col-md-12" for="dname">T??n b??c s??</span>
                                </label>
                                <div class="col-md-12">
                                    <input type="text" id="dname" name="dname" class="form-control"> </div>
                            </div>
                            <div class="form-group">
                                <label class="col-md-12" for="toamt">Chi ph??</span>
                                </label>
                                <div class="col-md-12">
                                    <input type="text" id="toamt" name="toamt" class="form-control"> </div>
                            </div>
                            <div class="form-group">
                                <label class="col-md-12" for="toamt">Gi???m gi??</span>
                                </label>
                                <div class="col-md-12">
                                    <input type="text" name="toamt" class="form-control" data-mask="99.99%"> </div>
                            </div>
                            <div class="form-group">
                                <label class="col-md-12" for="fiamt">T???ng ti???n</span>
                                </label>
                                <div class="col-md-12">
                                    <input type="text" id="fiamt" name="fiamt" class="form-control"> </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-12">H??nh th???c thanh to??n</label>
                                <div class="col-sm-12">
                                    <select class="form-control">
                                        <option>L???a ch???n h??nh th???c thanh to??n</option>
                                        <option>Ti???n m???t</option>
                                        <option>Ki???m tra</option>
                                        <option>Th??? t??n d???ng</option>
                                        <option>Th??? ghi n???</option>
                                        <option>Netbanking</option>
                                        <option>Th??? b???o hi???m</option>
                                    </select>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-12">T??nh tr???ng thanh to??n</label>
                                <div class="col-sm-12">
                                    <select class="form-control">
                                        <option>L???a ch???n t??nh tr???ng thanh to??n</option>
                                        <option>Ho??n th??nh</option>
                                        <option>??ang ch??? x??? l??</option>
                                        <option>M???t ph???n</option>
                                    </select>
                                </div>
                            </div>
                            <button type="submit" class="btn btn-info waves-effect waves-light m-r-10">Th??m</button>
                            <button type="reset" class="btn btn-inverse waves-effect waves-light">H???y</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
        <footer class="footer text-center"> ??Copyright 2020 - Huy & Tr???ng. ???? ????ng k?? b???n quy???n.</footer>
    </div>
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
<script src="<c:url value="/admin-resources/js/mask.js"/>"></script>
<script src="<c:url value="/admin-resources/plugins/bower_components/styleswitcher/jQuery.style.switcher.js"/>"></script>
<script src="<c:url value="/admin-resources/plugins/bower_components/styleswitcher/jQuery.style.switcher.js"/>"></script>
</body>
</html>