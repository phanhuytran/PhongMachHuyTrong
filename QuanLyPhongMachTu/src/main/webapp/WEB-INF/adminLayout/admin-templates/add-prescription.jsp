<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>

<div id="page-wrapper">
    <div class="container-fluid">
        <div class="row bg-title">
            <div class="col-lg-3 col-md-4 col-sm-4 col-xs-12">
                <h4 class="page-title">Thêm mới toa thuốc</h4>
            </div>
            <div class="col-lg-9 col-sm-8 col-md-8 col-xs-12">
                <a href="/" target="_blank" class="btn btn-danger pull-right m-l-20 btn-rounded btn-outline hidden-xs hidden-sm waves-effect waves-light">Trang chủ</a>
            </div>
        </div>
        <div class="row">
            <div class="col-sm-12">
                <div class="white-box">
                    <h3 class="box-title">Thông tin cơ bản</h3>

                    <form:form cssClass="form-material form-horizontal" modelAttribute="prescription" method="post">
                        <form:errors path="*" element="div" cssClass="text-danger" />

                        <div class="form-group">
                            <label class="col-md-12" for="bacSi">Bác sĩ</span>
                            </label>
                            <form:select path="bacSi" cssClass="form-control select">
                                <c:forEach items="${doctors}" var="d">
                                    <form:option value="${d.id}">${d.ho} ${d.ten}</form:option>
                                </c:forEach>
                            </form:select>
                            <form:errors path="bacSi" cssClass="text-danger"/>
                        </div>
                        <div class="form-group">
                            <label class="col-md-12" for="benhNhan">Chọn bệnh nhân</span>
                            </label>
                            <form:select path="benhNhan" cssClass="form-control select">
                                <c:forEach items="${patients}" var="p">
                                    <form:option value="${p.id}">${p.ho} ${p.ten}</form:option>
                                </c:forEach>
                            </form:select>
                            <form:errors path="benhNhan" cssClass="text-danger"/>
                        </div>
                        <div class="form-group">
                            <label class="col-md-12" for="ngayKeToa">Ngày kê toa</span>
                            </label>

                            <form:input path="ngayKeToa" placeholder="nhập ngày kê toa" cssClass="form-control" />
                            <form:errors path="ngayKeToa" cssClass="text-danger input-md"/>
                        </div>
                        <div class="form-group">
                            <label class="col-md-12" for="loaiBenh">Loại Bệnh</span>
                            </label>
                            <form:select path="loaiBenh" cssClass="form-control select">
                                <c:forEach items="${diseases}" var="benh">
                                    <form:option value="${benh.id}">${benh.tenBenh}</form:option>
                                </c:forEach>
                            </form:select>
                            <form:errors path="loaiBenh" cssClass="text-danger"/>
                        </div>

                        <form:button type="submit" class="btn btn-info waves-effect waves-light m-r-10">Thêm</form:button>
                        <button type="reset" class="btn btn-inverse waves-effect waves-light">Hủy</button>
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
<script>
    $(document).ready(function() {
        $("#ngayKeToa").datetimepicker({
            format: 'DD/MM/YYYY',
            minDate: new Date()
        })
        let bornDate = new Date();
        bornDate.setFullYear(bornDate.getFullYear() - 18);
        $("#ngaySinh").datetimepicker({
            format: 'DD/MM/YYYY',
            maxDate: bornDate
        })
    })
</script>