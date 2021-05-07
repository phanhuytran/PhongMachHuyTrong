
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt" %>
<div id="page-wrapper">
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
                    <td></td>

                </tr>
            </c:forEach>

        </tbody>

    </table>
</div>