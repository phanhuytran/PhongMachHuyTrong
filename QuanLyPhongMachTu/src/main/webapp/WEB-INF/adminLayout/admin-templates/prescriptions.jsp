
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt" %><
<div id="page-wrapper">
    <div class="container-fluid">
        <div class="row bg-title form-group ">
            <div class="col-lg-5 col-md-6 col-sm-6 col-xs-6">

                    <form action="/prescription/search">
                        <label btn-lg>Tìm kiếm</label>
                        <input id="hotenBN" name="BN" type="text"
                               class="form-control"placeholder="Nhập họ tên Bệnh nhân">
                        <br/>

                            <input class="form-control btn btn-info text-light " type="submit" value="tìm">


                    </form>

            </div>
            <div class="col-lg-5 col-md-6 col-sm-6 col-xs-6">
                    <form action="/prescription/search">
                        <label for="hotenBS">Tìm kiếm</label>
                        <input id="hotenBS" name="BS" type="text"
                               class="form-control" placeholder="Nhập họ tên bác sĩ">
                        <br/>
                        <input class="form-control btn btn-info text-light" type="submit" value="tìm">
                    </form>
            </div>


        </div>
        <div row bg-title form-group>
            <a class="btn btn-primary"  href="/prescription/add">Thêm Toa Thuốc</a>
            <br/>
        </div>

        <div class="row bg-title form-group ">
            <table class="table table-bordered table-striped table-hover">
                <thead class="thead-dark">
                <tr>
                    <th scope="col">ID</th>
                    <th scope="col">Bác sĩ</th>
                    <th scope="col">Bệnh nhân</th>
                    <th scope="col">Ngày kê toa</th>
                    <th scope="col">Loại Bệnh</th>
                    <th class="text-right">Hành vi</th>
                </tr>
                </thead>
                <tbody>

                    <c:forEach items="${prescription}" var="e">
                        <tr id="${e.id}">
                            <td><a href="<c:url value="/prescription/detail/${e.id}" />">${e.id}</a></td>
                            <td>
            <%--                    <img width="28" height="28" src="<c:url value="${e.bacSi.image}" />"  alt="">--%>
                                ${e.bacSi.ten}
                            </td>
                            <td>${e.benhNhan.ten}</td>

                            <td>${e.ngayKeToa}</td>
                            <td>${e.loaiBenh.tenBenh}</td>
                            <td>
                                <a class="btn btn-info" style="padding-left: 5%" href="/prescription/edit/${e.id}"><i class="far fa-edit"></i></a>
                                <a class="btn btn-primary" style="padding-left: 5%" href="/prescription/edit/${e.id}"><i class="far fa-edit"></i></a>
                                <a class="btn btn-danger"  style="padding-left: 5%" href="javascript:;" onclick="xoaToaThuoc('${e.id}')" ><i class="far fa-trash-alt"></i></a>
                            </td>

                        </tr>
                    </c:forEach>

                </tbody>

            </table>
        </div>

    </div>
</div>


