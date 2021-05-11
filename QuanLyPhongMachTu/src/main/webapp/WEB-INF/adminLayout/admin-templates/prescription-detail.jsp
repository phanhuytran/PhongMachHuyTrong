<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>

<div id="page-wrapper">
    <div class="container-fluid">
        <div class="row bg-title">
            <div class="col-lg-3 col-md-4 col-sm-4 col-xs-12">
                <h4 class="page-title">Thông tin toa thuốc</h4>
            </div>
            <div class="col-lg-9 col-sm-8 col-md-8 col-xs-12">
                <a href="/" target="_blank" class="btn btn-danger pull-right m-l-20 btn-rounded btn-outline hidden-xs hidden-sm waves-effect waves-light">Trang chủ</a>
            </div>
        </div>
        <div class="row">
            <table class="table table-bordered table-striped table-hover">
                <thead class="thead-dark">
                    <th>ID</th>
                    <th>Bác sĩ</th>
                    <th>Bệnh nhân</th>
                    <th>Ngày kê toa</th>
                    <th>Loại bệnh</th>
                </thead>
                <tbody style="font-size: 13px">
                    <tr>
                        <td>${prescription.id}</td>
                        <td>${prescription.bacSi.ten}</td>
                        <td>${prescription.benhNhan.ten}</td>
                        <td>${prescription.ngayKeToa}</td>
                        <td>${prescription.loaiBenh.tenBenh}</td>
                    </tr>
                </tbody>
            </table>
            <a href="javascript:;" class="btn btn-primary" onclick="showForm()">Thê chi tiết toa thuốc</a>
            <form:form id="medicine-form" cssStyle="display: none; margin-top: 50px" method="post" modelAttribute="detail">
                <form:hidden path="toaThuoc" value="${prescription.id}" />
                <form:errors path="*" element="div" cssClass="alert alert-danger"/>
                <div class="form-group">
                    <label for="tenThuoc">Thuoc</label>
                    <form:select cssClass="form-control select" path="thuoc">
                        <c:forEach items="${medicines}" var="m">
                            <form:option value="${m.id}">${m.tenThuoc}</form:option>
                        </c:forEach>
                    </form:select>
                </div>
                <div class="form-group">
                    <label for="soLuong">So luong</label>
                    <form:input type="number" path="soLuong" class="form-control"/>
                </div>
                <input type="submit" value="Submit" class="btn btn-success">
            </form:form>

            <c:if test="${result != null}">
                <table style="margin-top: 50px" class="table table-bordered table-striped table-hover">
                    <thead class="thead-dark">
                    <th>Tên thuốc</th>
                    <th>Số lượng</th>
                    </thead>
                    <tbody style="font-size: 13px">
                        <c:forEach items="${result}" var="i">
                            <tr>
                                <td>${i.thuoc.tenThuoc}</td>
                                <td>${i.soLuong}</td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
            </c:if>
        </div>
    </div>
</div>

<script>
    function showForm() {
        let e = document.getElementById("medicine-form");
        e.style.display = 'block';
    }
</script>



