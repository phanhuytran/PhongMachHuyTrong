<%--
  Created by IntelliJ IDEA.
  User: ndt05
  Date: 4/15/2021
  Time: 11:51 AM
  To change this template use File | Settings | File Templates.
--%>
<%@taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" type="image/png" sizes="16x16" href="<c:url value="/admin-resources/plugins/images/logo.png"/>">

    <link href="<c:url value="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css"/>" rel="stylesheet"/>
    <link href="<c:url value="/admin-resources/bootstrap/dist/css/bootstrap.min.css"/>" rel="stylesheet">
    <link href="<c:url value="/admin-resources/plugins/bower_components/bootstrap-extension/css/bootstrap-extension.css"/>" rel="stylesheet">
    <link href="<c:url value="/admin-resources/plugins/bower_components/sidebar-nav/dist/sidebar-nav.min.css"/>" rel="stylesheet">
    <link href="<c:url value="/admin-resources/plugins/bower_components/morrisjs/morris.css"/>" rel="stylesheet">
    <link href="<c:url value="/admin-resources/css/animate.css"/>" rel="stylesheet">
    <link href="<c:url value="/admin-resources/css/style.min.css"/>" rel="stylesheet">
    <link href="<c:url value="/admin-resources/css/colors/megna.css"/>" id="theme" rel="stylesheet">
    <link href="<c:url value="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css"/>" rel="stylesheet">
    <link href="<c:url value="/resources/css/sub-content.css"/>" rel="stylesheet">

    <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datetimepicker/4.17.47/css/bootstrap-datetimepicker.css" integrity="sha512-63+XcK3ZAZFBhAVZ4irKWe9eorFG0qYsy2CaM5Z+F3kUn76ukznN0cp4SArgItSbDFD1RrrWgVMBY9C/2ZoURA==" crossorigin="anonymous" />
    <title>
        <tiles:insertAttribute name="title"/>
    </title>
</head>
<body>

    <div id="wrapper">
        <tiles:insertAttribute name="header"/>
        <tiles:insertAttribute name="nav-bar" />
        <tiles:insertAttribute name="content"/>
        <tiles:insertAttribute name="footer"/>
    </div>

    <script>
        function xoaBacSi(id) {
            if (confirm("Bạn có muốn xóa không?")) {
                fetch("/doctors/delete/" + id, {
                    method: "POST",
                    headers: {
                        "content-type": "application/json"
                    }
                }).then(res => {
                    if (res.status == 200) {
                        document.getElementById(id).style.display = "none";
                        alert("Xóa thành công!!!");
                    }
                    else
                        alert("Ôi hỏng!!!");
                })
            }
        }
        function xoaNhanVien(id) {
            if (confirm("Bạn có muốn xóa không?")) {
                fetch("/employees/delete/" + id, {
                    method: "POST",
                    headers: {
                        "content-type": "application/json"
                    }
                }).then(res => {
                    if (res.status == 200) {
                        document.getElementById(id).style.display = "none";
                        alert("Xóa thành công!!!");
                    }
                    else
                        alert("Ôi hỏng!!!");
                })
            }
        }
        function xoaBenhNhan(id) {
            if (confirm("Bạn có muốn xóa không?")) {
                fetch("/patients/delete/" + id, {
                    method: "POST",
                    headers: {
                        "content-type": "application/json"
                    }
                }).then(res => {
                    if (res.status == 200) {
                        document.getElementById(id).style.display = "none";
                        alert("Xóa thành công!!!");
                    }
                    else
                        alert("Ôi hỏng!!!");
                })
            }
        }
    </script>

    <script src="<c:url value="/admin-resources/plugins/bower_components/jquery/dist/jquery.min.js"/>"></script>
    <script src="<c:url value="/admin-resources/bootstrap/dist/js/tether.min.js"/>"></script>
    <script src="<c:url value="/admin-resources/bootstrap/dist/js/bootstrap.min.js"/>"></script>
    <script src="<c:url value="/admin-resources/plugins/bower_components/bootstrap-extension/js/bootstrap-extension.min.js"/>"></script>
    <script src="<c:url value="/admin-resources/plugins/bower_components/sidebar-nav/dist/sidebar-nav.min.js"/>"></script>
    <script src="<c:url value="/admin-resources/js/jquery.slimscroll.js"/>"></script>
    <script src="<c:url value="/admin-resources/js/waves.js"/>"></script>
    <script src="<c:url value="/admin-resources/js/custom.min.js"/>"></script>
    <script src="<c:url value="/admin-resources/plugins/bower_components/calendar/jquery-ui.min.js"/>"></script>
    <script src="<c:url value="/admin-resources/plugins/bower_components/moment/moment.js"/>"></script>
    <script src="<c:url value="/admin-resources/plugins/bower_components/calendar/dist/fullcalendar.min.js"/>"></script>
    <script src="<c:url value="/admin-resources/plugins/bower_components/calendar/dist/jquery.fullcalendar.js"/>"></script>
    <script src="<c:url value="/admin-resources/plugins/bower_components/calendar/dist/cal-init.js"/>"></script>
    <script src="<c:url value="/admin-resources/plugins/bower_components/styleswitcher/jQuery.style.switcher.js"/>"></script>
</body>
</html>
