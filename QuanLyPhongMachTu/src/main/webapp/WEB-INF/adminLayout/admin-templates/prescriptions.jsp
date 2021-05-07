
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt" %><
<div id="page-wrapper">
    <div class="container-fluid">
        <div class="row bg-title">
            <div class="col-lg-5 col-md-6 col-sm-6 col-xs-6">

                    <form action="/prescription/search">
                        <label>Tìm kiếm</label>
                        <input id="hotenBN" name="BN" type="text" placeholder="Nhập họ tên Bệnh nhân">
                        <input type="submit" value="tìm">
                    </form>

            </div>
            <div class="col-lg-5 col-md-6 col-sm-6 col-xs-6">
                    <form action="/prescription/search">
                        <label>Tìm kiếm</label>
                        <input id="hotenBS" name="BS" type="text" placeholder="Nhập họ tên bác sĩ">
                        <input type="submit" value="tìm">
                    </form>
            </div>

        </div>
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
                        <tr>
                            <td><a href="<c:url value="" />">${e.id}</a></td>
                            <td>
            <%--                    <img width="28" height="28" src="<c:url value="${e.bacSi.image}" />"  alt="">--%>
                                ${e.bacSi.ten}
                            </td>
                            <td>${e.benhNhan.ten}</td>

                            <td>${e.ngayKeToa}</td>
                            <td>${e.loaiBenh.tenBenh}</td>
                            <td>
                                <a class="btn btn-primary" href="#">edit</a>
                                <a class="btn btn-danger" href="#">delete</a>
                            </td>

                        </tr>
                    </c:forEach>

                </tbody>

            </table>

    </div>
</div>
