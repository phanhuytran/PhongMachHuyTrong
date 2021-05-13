0<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>

<div id="page-wrapper">
    <div class="container-fluid">
        <div class="row bg-title">
            <div class="col-lg-3 col-md-4 col-sm-4 col-xs-12">
                <h4 class="page-title">Thêm mới thuốc</h4>
            </div>
            <div class="col-lg-9 col-sm-8 col-md-8 col-xs-12">
                <a href="/" target="_blank" class="btn btn-danger pull-right m-l-20 btn-rounded btn-outline hidden-xs hidden-sm waves-effect waves-light">Trang chủ</a>
            </div>
        </div>
        <div class="row">
            <div class="col-sm-12">
                <div class="white-box">
                    <h3 class="box-title">Thông tin thuốc</h3>
                    <form:form cssClass="form-material form-horizontal" action="/medicines/add" modelAttribute="medicine" method="post">
                        <form:errors path="*" element="div" cssClass="text-danger"/>
                        <div class="form-group">
                            <label class="col-md-12">Tên thuốc </span>
                            </label>
                            <div class="col-md-12">
                                <form:input path="tenThuoc" type="text" class="form-control" placeholder="nhập tên thuốc"/>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-md-12">Mô tả </span>
                            </label>
                            <div class="col-md-12">
                                <form:input  path="moTa" type="text"  class="form-control" placeholder="nhập mô tả"/>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-md-12">Đơn giá </span>
                            </label>
                            <div class="col-md-12">
                                <form:input  path="donGia" type="number"  class="form-control" placeholder="nhập đơn giá"/>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-md-12">Đơn vị </span>
                            </label>
                            <div class="col-md-12">
                                <form:input  path="donVi" type="text"  class="form-control" placeholder="nhập đơn vị"/>
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