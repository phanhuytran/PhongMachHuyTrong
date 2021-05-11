<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<div id="page-wrapper">
    <div class="container-fluid">
        <div class="row bg-title">
            <div class="col-lg-3 col-md-4 col-sm-4 col-xs-12">
                <h4 class="page-title">Danh sách toa thuốc</h4>
            </div>
            <div class="col-lg-9 col-sm-8 col-md-8 col-xs-12">
                <a href="/" target="_blank" class="btn btn-danger pull-right m-l-20 btn-rounded btn-outline hidden-xs hidden-sm waves-effect waves-light">Trang chủ</a>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-5 col-md-6 col-sm-6 col-xs-6 input-prescription">
                <form action="/prescription/search">
                    <label for="hotenBS">Tìm kiếm</label>
                    <input id="hotenBS" name="BS" type="text" class="form-control" placeholder="Nhập họ tên Bác sĩ"><br/>
                    <input class="form-control btn btn-info text-light input-search-prescription" type="submit" value="Tìm kiếm">
                </form>
            </div>
            <div class="col-lg-5 col-md-6 col-sm-6 col-xs-6 input-prescription">
                <form action="/prescription/search">
                    <label btn-lg>Tìm kiếm</label>
                    <input id="hotenBN" name="BN" type="text" class="form-control"placeholder="Nhập họ tên bệnh nhân"><br/>
                    <input class="form-control btn btn-info text-light input-search-prescription" type="submit" value="Tìm kiếm">
                </form>
            </div>
        </div>
        <br/>
        <sec:authorize access="hasAnyRole('ROLE_ADMIN')">
            <a class="btn btn-primary" href="/prescription/add">Thêm Toa Thuốc</a><br/><br/>
        </sec:authorize>
        <table class="table table-bordered table-striped table-hover">
            <thead class="thead-dark">
            <tr>
                <th scope="col">ID</th>
                <th scope="col">Bác sĩ</th>
                <th scope="col">Bệnh nhân</th>
                <th scope="col">Ngày kê toa</th>
                <th scope="col">Loại bệnh</th>
                <sec:authorize access="hasAnyRole('ROLE_ADMIN')">
                    <th scope="col">Quản lý toa thuốc</th>
                </sec:authorize>
            </tr>
            </thead>
            <tbody style="font-size: 13px">
            <c:forEach items="${prescription}" var="e">
                <tr id="${e.id}">
                    <td><a href="<c:url value="/prescription/detail/${e.id}" />">${e.id}</a></td>
                    <td>${e.bacSi.ten}</td>
                    <td>${e.benhNhan.ten}</td>
                    <td>${e.ngayKeToa}</td>
                    <td>${e.loaiBenh.tenBenh}</td>
                    <sec:authorize access="hasAnyRole('ROLE_ADMIN')">
                        <td>
                            <a class="btn btn-info" style="padding-left: 5%" href="/prescription/edit/${e.id}"><i class="far fa-edit"></i></a>
                            <a class="btn btn-primary" style="padding-left: 5%" href="/prescription/edit/${e.id}"><i class="far fa-edit"></i></a>
                            <a class="btn btn-danger" style="padding-left: 5%" href="javascript:;" onclick="xoaToaThuoc('${e.id}')" ><i class="far fa-trash-alt"></i></a>
                        </td>
                    </sec:authorize>
                </tr>
            </c:forEach>
            </tbody>
        </table>
    </div>
</div>