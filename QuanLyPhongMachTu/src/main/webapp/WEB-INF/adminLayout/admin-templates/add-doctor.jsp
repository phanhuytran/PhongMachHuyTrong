<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>

<div id="page-wrapper">
    <div class="container-fluid">
        <div class="row bg-title">
            <div class="col-lg-3 col-md-4 col-sm-4 col-xs-12">
                <h4 class="page-title">Thêm mới Bác sĩ</h4>
            </div>
            <div class="col-lg-9 col-sm-8 col-md-8 col-xs-12">
                <a href="/" target="_blank" class="btn btn-danger pull-right m-l-20 btn-rounded btn-outline hidden-xs hidden-sm waves-effect waves-light">Trang chủ</a>
            </div>
        </div>
        <div class="row">
            <div class="col-sm-12">
                <div class="white-box">
                    <h3 class="box-title">Thông tin cơ bản</h3>

                    <form:form cssClass="form-material form-horizontal" action="/doctors/add" modelAttribute="doctor1" method="post" enctype="multipart/form-data">
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
                                <form:input path="ngaySinh" type="date" id="bdate" name="bdate"
                                            class="form-control mydatepicker"
                                            placeholder="nhập ngày sinh"/>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-12">Giới tính</label>
                            <div class="col-sm-12">
                                <form:select path="gioiTinh" class="form-control">
                                    <form:option value="">Lựa chọn giới tính</form:option>
                                    <form:option value="nam">Nam</form:option>
                                    <form:option value="nu">Nữ</form:option>
                                    <form:option value="khac">Khác</form:option>
                                </form:select>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-12">Ảnh đại diện</label>
                            <div class="col-sm-12">
                                <form:hidden path="image" value="test" />
                                <form:input path="img" type="file" cssClass="form-control"/>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-md-12" for="email">Email</span>
                            </label>
                            <div class="col-md-12">
                                <form:input path="email" type="email"
                                            class="form-control"
                                            placeholder="nhập email"/>
                            </div>
                        </div>
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
                                            class="form-control mydatepicker"
                                            placeholder="nhập quê quán"/>
                            </div>
                        </div>

                        <div class="form-group">
                            <label class="col-sm-12">Tài khoản</label>
                            <div class="col-sm-12">
                                <form:select path="taiKhoan" class="form-control">
                                    <form:option value="">Lựa chọn tài khoản</form:option>
                                    <c:forEach items="${taiKhoan}" var="t">

                                        <form:option value="${t.id}">${t.username}</form:option>

                                    </c:forEach>
                                </form:select>
                            </div>
                        </div>

                        <form:button type="submit" class="btn btn-info waves-effect waves-light m-r-10">Thêm</form:button>
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

<script type="text/javascript">
    jQuery('.mydatepicker').datepicker();
</script>
<script src="<c:url value="/admin-resources/js/custom.min.js"/>"></script>
<script src="<c:url value="/admin-resources/js/jasny-bootstrap.js"/>"></script>
<script src="<c:url value="/admin-resources/js/mask.js"/>"></script>
<script src="<c:url value="/admin-resources/plugins/bower_components/styleswitcher/jQuery.style.switcher.js"/>"></script>
