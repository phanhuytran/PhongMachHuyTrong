<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<nav class="navbar navbar-custom navbar-fixed-top" role="navigation">
    <div class="top-area">
        <div class="container">
            <div class="row">
                <div class="col-sm-6 col-md-6">
                    <p class="bold text-left">Thứ 2 - Thứ 7, 8:00 đến 22:00 </p>
                </div>
                <div class="col-sm-6 col-md-6">
                    <p class="bold text-right">Liên hệ (+84) 77 5398 511</p>
                </div>
            </div>
        </div>
    </div>
    <div class="container navigation">

        <div class="navbar-header page-scroll">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-main-collapse">
                <i class="fa fa-bars"></i>
            </button>
            <a class="navbar-brand" href="/">
                <img style="width: 180px" src="<c:url value="/resources/img/logo.png"/>" alt="" width="150" height="40"/>
            </a>
        </div>

        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse navbar-right navbar-main-collapse">
            <ul class="nav navbar-nav">
                <li class="active"><a href="#intro">Trang chủ</a></li>
                <li><a href="#service">Dịch vụ</a></li>
                <li><a href="#doctor">Bác sĩ</a></li>
                <li><a href="#facilities">Cơ sở vật chất</a></li>
            </ul>
        </div>
    </div>
</nav>