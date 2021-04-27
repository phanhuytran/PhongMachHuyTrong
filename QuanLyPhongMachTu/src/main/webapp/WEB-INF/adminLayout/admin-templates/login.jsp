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
    <link href="<c:url value="/admin-resources/css/animate.css"/>" rel="stylesheet">
    <link href="<c:url value="/admin-resources/css/style.min.css"/>" rel="stylesheet">
    <link href="<c:url value="/admin-resources/css/colors/megna.css"/>" id="theme" rel="stylesheet">
    <link href="<c:url value="/resources/css/sub-content.css"/>" rel="stylesheet">
</head>

<body>
<div class="preloader">
    <div class="cssload-speeding-wheel"></div>
</div>
<section id="wrapper" class="login-register">
    <div class="login-box login-sidebar">
        <div class="white-box">
            <form class="form-horizontal form-material" id="loginform" action="${pageContext.request.contextPath}/taikhoan/login" method="POST">
                <a href="javascript:void(0)" class="text-center db"><img style="width: 70%" src="<c:url value="/resources/img/logo.png"/>" alt="Home" /></a>
                <c:if test="${param.error != null}">
                    <div style="color: red; margin: 50px 0 -15px 0">
                        Tên đăng nhập hoặc mật khẩu không hợp lệ!
                    </div>
                </c:if>
                <c:if test="${param.accessDenied != null}">
                    <div style="color: red; margin: 50px 0 -15px 0">
                        Bạn không có quyền truy cập trang này!
                    </div>
                </c:if>
                <div class="form-group m-t-40">
                    <div class="col-xs-12">
                        <input name="username" id="usernameId" class="form-control" type="text" required="" placeholder="Tên đăng nhập"> </div>
                </div>
                <div class="form-group">
                    <div class="col-xs-12">
                        <input name="password" id="passwordId" class="form-control" type="password" required="" placeholder="Mật khẩu"> </div>
                </div>
                <div class="form-group">
                    <div class="col-md-12">
                        <div class="checkbox checkbox-primary pull-left p-t-0">
                            <input id="checkbox-signup" type="checkbox">
                            <label for="checkbox-signup"> Nhớ mật khẩu </label>
                        </div> <a href="javascript:void(0)" id="to-recover" class="text-dark pull-right"><i class="fas fa-lock m-r-5"></i> Quên mật khẩu?</a> </div>
                </div>
                <div class="login-admin">
                    <a href="/admin">Đăng nhập với tư cách là Admin</a>
                </div>
                <div class="form-group text-center m-t-20">
                    <div class="col-xs-12">
                        <button class="btn btn-info btn-lg btn-block text-uppercase waves-effect waves-light" type="submit">Đăng nhập</button>
                    </div>
                </div>
                <div class="row">
                    <div class="col-xs-12 col-sm-12 col-md-12 m-t-10 text-center">
                        <div class="social">
                            <a href="javascript:void(0)" class="btn  btn-facebook" data-toggle="tooltip" title="Login with Facebook"> <i aria-hidden="true" class="fab fa-facebook-f"></i> </a>
                            <a href="javascript:void(0)" class="btn btn-googleplus" data-toggle="tooltip" title="Login with Google"> <i aria-hidden="true" class="fab fa-google-plus-g"></i> </a>
                        </div>
                    </div>
                </div>
<%--                <div class="form-group m-b-0">--%>
<%--                    <div class="col-sm-12 text-center">--%>
<%--                        <p>Bạn chưa có tài khoản? <a href="register2.html" class="text-primary m-l-5"><b>Đăng ký</b></a></p>--%>
<%--                    </div>--%>
<%--                </div>--%>
            </form>
            <form class="form-horizontal" id="recoverform" action="/admin">
                <div class="form-group ">
                    <div class="col-xs-12">
                        <h3>Khôi phục mật khẩu</h3>
                        <p class="text-muted">Vui lòng nhập Email và chúng tôi sẽ sớm giải quyết vấn đề cho bạn!</p>
                    </div>
                </div>
                <div class="form-group ">
                    <div class="col-xs-12">
                        <input class="form-control" type="text" required="" placeholder="Email">
                    </div>
                </div>
                <div class="form-group text-center m-t-20">
                    <div class="col-xs-12">
                        <button class="btn btn-primary btn-lg btn-block text-uppercase waves-effect waves-light" type="submit">Đặt lại</button>
                    </div>
                </div>
            </form>
        </div>
    </div>
</section>
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