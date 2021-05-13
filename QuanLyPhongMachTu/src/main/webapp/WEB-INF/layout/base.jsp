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
    <link rel="icon" type="image/png" sizes="16x16" href="<c:url value="/admin-resources/plugins/images/logo.png"/>">
    <title>
        <tiles:insertAttribute name="title"/>
    </title>
    <!-- css -->
    <link href="<c:url value="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css"/>" rel="stylesheet"/>
    <link href="<c:url value="/resources/css/bootstrap.min.css"/>" rel="stylesheet" type="text/css">
    <link href="<c:url value="/resources/font-awesome/css/font-awesome.min.css"/>" rel="stylesheet" type="text/css"/>
    <link href="<c:url value="/resources/plugins/cubeportfolio/css/cubeportfolio.min.css"/>" rel="stylesheet" type="text/css">
    <link href="<c:url value="/resources/css/nivo-lightbox.css"/>" rel="stylesheet"/>
    <link href="<c:url value="/resources/css/nivo-lightbox-theme/default/default.css"/>" rel="stylesheet" type="text/css"/>
    <link href="<c:url value="/resources/css/owl.carousel.css"/>" rel="stylesheet" media="screen"/>
    <link href="<c:url value="/resources/css/owl.theme.css"/>" rel="stylesheet" media="screen"/>
    <link href="<c:url value="/resources/css/animate.css"/>" rel="stylesheet"/>
    <link href="<c:url value="/resources/css/style.css"/>" rel="stylesheet">
    <link href="<c:url value="/resources/bodybg/bg1.css"/>" rel="stylesheet" id="bodybg" type="text/css"/>
    <link href="<c:url value="/resources/color/default.css"/>" id="t-colors" rel="stylesheet">
    <link href="<c:url value="/resources/css/sub-content.css"/>" rel="stylesheet">

    <script src="<c:url value="/resources/js/jquery.min.js"/>"/></script>
    <script src="<c:url value="/resources/js/bootstrap.min.js"/>"/></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.29.1/moment.min.js" integrity="sha512-qTXRIMyZIFb8iQcfjXWCO8+M5Tbc38Qi5WzdPOYZHIlZpzBHG3L3by84BBBOiRGiEb7KKtAOAs5qYdUiZiQNNQ==" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datetimepicker/4.17.47/js/bootstrap-datetimepicker.min.js" integrity="sha512-GDey37RZAxFkpFeJorEUwNoIbkTwsyC736KNSYucu1WJWFK9qTdzYub8ATxktr6Dwke7nbFaioypzbDOQykoRg==" crossorigin="anonymous"></script>
</head>

<body id="page-top" data-spy="scroll" data-target=".navbar-custom">
    <div id="wrapper">
        <tiles:insertAttribute name="header"/>
        <tiles:insertAttribute name="content"/>
        <tiles:insertAttribute name="footer"/>
    </div>
    <a href="#" class="scrollup"><i class="fa fa-angle-up active"></i></a>
    <!-- Core JavaScript Files -->
    <script src="<c:url value="/resources/js/jquery.easing.min.js"/>"/></script>
    <script src="<c:url value="/resources/js/wow.min.js"/>"/></script>
    <script src="<c:url value="/resources/js/jquery.scrollTo.js"/>"/></script>
    <script src="<c:url value="/resources/js/jquery.appear.js"/>"/></script>
    <script src="<c:url value="/resources/js/stellar.js"/>"/></script>
    <script src="<c:url value="/resources/plugins/cubeportfolio/js/jquery.cubeportfolio.min.js"/>"/></script>
    <script src="<c:url value="/resources/js/owl.carousel.min.js"/>"/></script>
    <script src="<c:url value="/resources/js/nivo-lightbox.min.js"/>"/></script>
    <script src="<c:url value="/resources/js/custom.js"/>"/></script>
</body>
</html>