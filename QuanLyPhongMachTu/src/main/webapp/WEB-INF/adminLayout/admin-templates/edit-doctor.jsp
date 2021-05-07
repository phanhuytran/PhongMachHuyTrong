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
                    <h4 class="page-title">Cap nhat Bac si</h4>
                </div>
                <div class="col-lg-9 col-sm-8 col-md-8 col-xs-12">
                    <a href="/" target="_blank" class="btn btn-danger pull-right m-l-20 btn-rounded btn-outline hidden-xs hidden-sm waves-effect waves-light">Trang chủ</a>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-12">
                    <div class="white-box">
                        <h3 class="box-title">Thông tin cơ bản</h3>

                        <form:form cssClass="form-material form-horizontal" modelAttribute="doctor" method="post">
                            <form:errors path="*" element="div" cssClass="text-danger" />
                            <div class="form-group">
                                <label class="col-md-12" for="example-text">Họ</span>
                                </label>
                                <div class="col-md-12">
                                    <form:input path="ho" type="text" name="example-text" cssClass="form-control"
                                                placeholder="nhập họ"/>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-md-12" for="example-text">Tên</span>
                                </label>
                                <div class="col-md-12">
                                    <form:input path="ten" type="text" name="example-text" cssClass="form-control"
                                                placeholder="nhập tên"/>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-md-12" for="bdate">Ngày sinh</span>
                                </label>
                                <div class="col-md-12">
                                    <form:input path="ngaySinh" id="bdate" name="bdate"
                                                class="form-control mydatepicker"
                                                placeholder="nhập ngày sinh"/>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-md-12" for="bdate">Email</span>
                                </label>
                                <div class="col-md-12">
                                    <form:input path="email"
                                                class="form-control"
                                                placeholder="nhập email"/>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-md-12" for="bdate">Image</span>
                                </label>
                                <div class="col-md-12">
                                    <form:input path="image"
                                                class="form-control"
                                                placeholder="Nhap link image"/>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-12">Giới tính</label>
                                <div class="col-sm-12">
                                    <form:select path="gioiTinh" class="form-control">
                                        <form:option value="">Lựa chọn giới tính</form:option>
                                        <form:option value="Nam">Nam</form:option>
                                        <form:option value="Nu">Nữ</form:option>
                                    </form:select>
                                </div>
                            </div>
                            <%--                        <div class="form-group">--%>
                            <%--                            <label class="col-sm-12">Ảnh đại diện</label>--%>
                            <%--                            <div class="col-sm-12">--%>
                            <%--                                <form:hidden path="image" value="test" />--%>
                            <%--                                <form:input path="img" type="file" cssClass="form-control"/>--%>
                            <%--                            </div>--%>
                            <%--                        </div>--%>
                            <%--                        <div class="form-group">--%>
                            <%--                            <label class="col-md-12" for="email">Email</span>--%>
                            <%--                            </label>--%>
                            <%--                            <div class="col-md-12">--%>
                            <%--                                <form:input path="email" type="email"--%>
                            <%--                                            class="form-control"--%>
                            <%--                                            placeholder="nhập email"/>--%>
                            <%--                            </div>--%>
                            <%--                        </div>--%>
                            <div class="form-group">
                                <label class="col-md-12" for="dienThoai">Điện thoại</span>
                                </label>
                                <div class="col-md-12">
                                    <form:input path="dienThoai" type="text"
                                                class="form-control"
                                                placeholder="nhập điện thoại"/>
                                </div>
                            </div>
                                                                                <div class="form-group">
                                                                                    <label class="col-md-12" for="queQuan">Quê quán</span>
                                                                                    </label>
                                                                                    <div class="col-md-12">
                                                                                        <form:input path="queQuan" type="text"
                                                                                                    class="form-control"
                                                                                                    placeholder="nhập quê quán"/>
                                                                                    </div>
                                                                                </div>

                            <form:hidden path="taiKhoan"/>
                            <form:button type="submit" class="btn btn-info waves-effect waves-light m-r-10">Cập nhật</form:button>
                            <%--                        <button type="submit" class="btn btn-inverse waves-effect waves-light">Hủy</button>--%>
                        </form:form>

                    </div>
                </div>
            </div>
            <%--        <div class="row">--%>
            <%--            <div class="col-sm-6">--%>
            <%--                <div class="white-box">--%>
            <%--                    <h3 class="box-title">Thông tin tài khoản</h3>--%>
            <%--                    <form class="form-material form-horizontal">--%>
            <%--                        <div class="form-group">--%>
            <%--                            <label class="col-md-12" for="example-email">Email</span>--%>
            <%--                            </label>--%>
            <%--                            <div class="col-md-12">--%>
            <%--                                <input type="email" id="example-email" name="example-email" class="form-control"--%>
            <%--                                       placeholder="nhập email"></div>--%>
            <%--                        </div>--%>
            <%--                        <div class="form-group">--%>
            <%--                            <label class="col-md-12" for="example-phone">Số điện thoại</span>--%>
            <%--                            </label>--%>
            <%--                            <div class="col-md-12">--%>
            <%--                                <input type="text" id="example-phone" name="example-phone" class="form-control"--%>
            <%--                                       placeholder="nhập số điện thoại" data-mask="(999) 999-9999"></div>--%>
            <%--                        </div>--%>
            <%--                        <div class="form-group">--%>
            <%--                            <label class="col-md-12" for="pwd">Mật khẩu</span>--%>
            <%--                            </label>--%>
            <%--                            <div class="col-md-12">--%>
            <%--                                <input type="password" id="pwd" name="pwd" class="form-control"--%>
            <%--                                       placeholder="nhập mật khẩu"></div>--%>
            <%--                        </div>--%>
            <%--                        <div class="form-group">--%>
            <%--                            <label class="col-md-12" for="cpwd">Xác nhận mật khẩu</span>--%>
            <%--                            </label>--%>
            <%--                            <div class="col-md-12">--%>
            <%--                                <input type="password" id="cpwd" name="cpwd" class="form-control"--%>
            <%--                                       placeholder="nhập lại mật khẩu"></div>--%>
            <%--                        </div>--%>
            <%--                        <button type="submit" class="btn btn-info waves-effect waves-light m-r-10">Thêm</button>--%>
            <%--                        <button type="submit" class="btn btn-inverse waves-effect waves-light">Hủy</button>--%>
            <%--                    </form>--%>
            <%--                </div>--%>
            <%--            </div>--%>

            <%--        </div>--%>
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