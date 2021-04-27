<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>

    <div id="page-wrapper">
        <div class="container-fluid">
            <div class="row bg-title">
                <div class="col-lg-3 col-md-4 col-sm-4 col-xs-12">
                    <h4 class="page-title">Thêm mới bệnh nhân</h4>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-12">
                    <div class="white-box">
                        <h3 class="box-title">Thông tin cơ bản</h3>
                        <form:form cssClass="form-material form-horizontal" action="/patients/add" modelAttribute="patient" method="post">
                            <form:errors path="*" element="div" cssClass="text-danger"/>
                            <div class="form-group">
                                <label class="col-md-12" for="ho">Họ </span>
                                </label>
                                <div class="col-md-12">
                                    <form:input  path="ho" type="text"  class="form-control"
                                                 placeholder="nhập họ bênh nhân"/>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-md-12" for="ten">Tên </span>
                                </label>
                                <div class="col-md-12">
                                    <form:input  path="ten" type="text"  class="form-control"
                                                 placeholder="nhập tên bệnh nhân"/>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-md-12" for="ngaySinh">Ngày sinh</span>
                                </label>
                                <div class="col-md-12">
                                    <form:input path="dateString" class="form-control" placeholder="nhập ngày sinh" enctype="multipart/form-data"/>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-12">Giới tính</label>
                                <div class="col-sm-12">
                                    <form:select path="gioiTinh" class="form-control">
                                        <form:option value="">Lựa chọn giới tính</form:option>
                                        <form:option value="nam">Nam</form:option>
                                        <form:option value="nu">Nữ</form:option>
                                    </form:select>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-md-12" for="dienThoai">điện thoại</span>
                                </label>
                                <div class="col-md-12">
                                    <form:input path="dienThoai" class="form-control" placeholder="nhập sô điên thoại"/>
                                </div>
                            </div>


                            <button
                                    type="submit"  class="btn btn-info waves-effect waves-light m-r-10">Thêm</button>
<%--                            <button type="submit" class="btn btn-inverse waves-effect waves-light">Hủy</button>--%>
                        </form:form>
                    </div>
                </div>
            </div>

        </div>
    </div>

<script>
    $(function () {
        $('#dateString').datepicker();
    });
    setTimeout(function () {
        let e = document.getElementById("dateString");
        e.datepicker();
    }, 1000)
</script>