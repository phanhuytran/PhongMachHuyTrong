<%--
  Created by IntelliJ IDEA.
  User: ndt05
  Date: 5/13/2021
  Time: 10:56 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<table class="table table-responsive table-bordered" style="margin-top: 250px">
    <thead>
    <tr>
        <td>Ho ten</td>
        <td>Gioi tinh</td>
        <td>Ngay sinh</td>
        <td>SDT</td>
    </tr>
    </thead>
    <tbody>
    <tr>
        <td>${patient.ho} ${patient.ten}</td>
        <td>${patient.gioiTinh}</td>
        <td>${patient.ngaySinh}</td>
        <td>${patient.dienThoai}</td>
    </tr>
    </tbody>
</table>
