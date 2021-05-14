<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div style="width: 80%; margin: 0 auto">
    <table class="table table-hover" style="margin: 250px 0 100px 0">
        <thead>
        <tr style="text-align: center">
            <td colspan="4"><h3>KẾT QUẢ TRA CỨU LỊCH SỬ BỆNH NHÂN</h3></td>
        </tr>
        <tr>
            <th scope="col">Họ và Tên</th>
            <th scope="col">Giới tính</th>
            <th scope="col">Ngày sinh</th>
            <th scope="col">Số điện thoại</th>
        </tr>
        </thead>
        <tbody>
        <tr>
            <td>${patient.ho} ${patient.ten}</td>
            <td>${patient.gioiTinh}</td>
            <td>${patient.ngaySinh}</td>
            <th scope="row">${patient.dienThoai}</th>
        </tr>
        </tbody>
    </table>
</div>