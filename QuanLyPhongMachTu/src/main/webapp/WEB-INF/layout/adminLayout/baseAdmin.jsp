<%--
  Created by IntelliJ IDEA.
  User: ndt05
  Date: 4/13/2021
  Time: 3:52 PM
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>
        <tiles:insertAttribute name="title"/>
    </title>
    <!-- Bootstrap Core CSS -->
    <link href="<c:url value="/adminResource/bootstrap/dist/css/bootstrap.min.css" />" rel="stylesheet">
    <link href="<c:url value="/adminResource/plugins/bower_components/bootstrap-extension/css/bootstrap-extension.css"/>" rel="stylesheet">
    <!-- Menu CSS -->
    <link href="<c:url value="/adminResource/plugins/bower_components/sidebar-nav/dist/sidebar-nav.min.css"/>" rel="stylesheet">
    <!-- morris CSS -->
    <link href="<c:url value="/adminResource/plugins/bower_components/morrisjs/morris.css"/>" rel="stylesheet">
    <!-- animation CSS -->
    <link href="<c:url value="/adminResource/css/animate.css" />" rel="stylesheet">
    <!-- Custom CSS -->
    <link href="<c:url value="/adminResource/css/style.min.css" /> " rel="stylesheet">

    <!-- color CSS -->
    <link href="<c:url value="/adminResource/css/colors/megna.css" /> " id="theme" rel="stylesheet">
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
</head>
<body>
<!-- Preloader -->
<div class="preloader">
    <div class="cssload-speeding-wheel"></div>
</div>
<div id="wrapper">
    <!-- Navigation -->
    <tiles:insertAttribute name="header" />
    <!-- Left navbar-header -->
    <tiles:insertAttribute name="sidebar"/>
    <!-- Left navbar-header end -->
    <!-- Page Content -->
    <div id="page-wrapper">
        <tiles:insertAttribute name="content"/>
        <!-- /.container-fluid -->
        <tiles:importAttribute name="footer"/>
    </div>
    <!-- /#page-wrapper -->
</div>
<!-- /#wrapper -->
<!-- jQuery -->
<script src="<c:url value="/adminResource/plugins/bower_components/jquery/dist/jquery.min.js" />"></script>
<!-- Bootstrap Core JavaScript -->
<script src="<c:url value=""/>"></script>
<script src="<c:url value="/adminResource/bootstrap/dist/js/bootstrap.min.js"/>"></script>
<script src="<c:url value="/adminResource/plugins/bower_components/bootstrap-extension/js/bootstrap-extension.min.js"/>"></script>
<!-- Menu Plugin JavaScript -->
<script src="<c:url value="/adminResource/plugins/bower_components/sidebar-nav/dist/sidebar-nav.min.js"/>"></script>
<!--slimscroll JavaScript -->
<script src="<c:url value="/adminResource/js/jquery.slimscroll.js"/>"></script>
<!--Wave Effects -->
<script src="<c:url value="/adminResource/js/waves.js"/>"></script>
<!--Morris JavaScript -->
<script src="<c:url value="/adminResource/plugins/bower_components/raphael/raphael-min.js"/>"></script>
<script src="<c:url value="/adminResource/plugins/bower_components/morrisjs/morris.js"/>"></script>
<!-- Sparkline chart JavaScript -->
<script src="<c:url value="/adminResource/plugins/bower_components/jquery-sparkline/jquery.sparkline.min.js"/>"></script>
<!-- jQuery peity -->
<script src="<c:url value="/adminResource/plugins/bower_components/peity/jquery.peity.min.js"/>"></script>
<script src="<c:url value="/adminResource/plugins/bower_components/peity/jquery.peity.init.js"/>"></script>
<!-- Custom Theme JavaScript -->
<script src="<c:url value="/adminResource/js/custom.min.js"/>"></script>
<script src="<c:url value="/adminResource/js/dashboard1.js"/>"></script>
<!--Style Switcher -->
<script src="<c:url value="/adminResource/plugins/bower_components/styleswitcher/jQuery.style.switcher.js"/>"></script>
</body>
</html>
