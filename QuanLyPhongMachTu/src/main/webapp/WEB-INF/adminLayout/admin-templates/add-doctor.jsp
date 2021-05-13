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

                    <form:form cssClass="form-material form-horizontal" action="/doctors/add" modelAttribute="doctor1" method="post">
<%--                        <form:errors path="*" element="div" cssClass="text-danger" />--%>
                        <div class="form-group">
                            <label class="col-md-12" for="example-text">Họ</span>
                            </label>
                            <div class="col-md-12">
                                <form:input path="ho" type="text" name="example-text" cssClass="form-control"
                                            placeholder="nhập họ"/>
                                <form:errors path="ho" cssClass="text-danger"/>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-md-12" for="example-text">Tên</span>
                            </label>
                            <div class="col-md-12">
                                <form:input path="ten" type="text" name="example-text" cssClass="form-control"
                                            placeholder="nhập tên"/>
                                <form:errors path="ten" cssClass="text-danger"/>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-md-12" for="ngaySinh">Ngày sinh</span>
                            </label>
                            <div class="col-md-12">
                                <form:input path="ngaySinh"
                                            class="form-control mydatepicker"
                                            placeholder="nhập ngày sinh"/>
                                <form:errors path="ngaySinh" cssClass="text-danger"/>
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
                                <form:errors path="gioiTinh" cssClass="text-danger"/>
                            </div>
                        </div>
<%--                        <div class="form-group">--%>
<%--                            <label class="col-sm-12">Ảnh đại diện</label>--%>
<%--                            <div class="col-sm-12">--%>
<%--                                <form:hidden path="image" value="test" />--%>
<%--                                <form:input path="img" type="file" cssClass="form-control"/>--%>
<%--                            </div>--%>
<%--                        </div>--%>
                        <div class="form-group">
                            <label class="col-md-12" for="email">Email</span>
                            </label>
                            <div class="col-md-12">
                                <form:input path="email" type="email"
                                            class="form-control"
                                            placeholder="nhập email"/>
                                <form:errors path="email" cssClass="text-danger"/>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-md-12" for="dienThoai">Điện thoại</span>
                            </label>
                            <div class="col-md-12">
                                <form:input path="dienThoai" type="text"
                                            class="form-control"
                                            placeholder="nhập điện thoại"/>
                                <form:errors path="dienThoai" cssClass="text-danger"/>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-md-12" for="queQuan">Quê quán</span>
                            </label>
                            <div class="col-md-12">
                                <form:input path="queQuan" type="text"
                                            class="form-control"
                                            placeholder="nhập quê quán"/>
                                <form:errors path="queQuan" cssClass="text-danger"/>
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
                                <form:errors path="taiKhoan" cssClass="text-danger"/>
                            </div>
                        </div>

                        <form:button type="submit" class="btn btn-info waves-effect waves-light m-r-10">Thêm</form:button>
                        <button type="reset" class="btn btn-inverse waves-effect waves-light">Hủy</button>
                    </form:form>

                </div>
            </div>
        </div>

    </div>
</div>



<script type="text/javascript">
    jQuery('.mydatepicker').datepicker();
</script>
<script src="<c:url value="/admin-resources/js/custom.min.js"/>"></script>
<script src="<c:url value="/admin-resources/js/jasny-bootstrap.js"/>"></script>
<script src="<c:url value="/admin-resources/js/mask.js"/>"></script>
<script src="<c:url value="/admin-resources/plugins/bower_components/styleswitcher/jQuery.style.switcher.js"/>"></script>
<script>
    $(document).ready(function() {

        let bornDate = new Date();
        bornDate.setFullYear(bornDate.getFullYear() - 10);
        $("#ngaySinh").datetimepicker({
            format: 'DD/MM/YYYY',
            maxDate: bornDate
        })
    })
</script>