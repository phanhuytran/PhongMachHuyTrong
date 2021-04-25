<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<nav class="navbar navbar-custom navbar-fixed-top" role="navigation">
    <div class="top-area">
        <div class="container">
            <div class="row">
                <div class="col-sm-6 col-md-6">
                    <p class="bold text-left"><i class="fas fa-calendar"></i><span style="margin-left: 2%"></span>Thứ 2 - Thứ 7, 8:00 đến 22:00 </p>
                </div>
                <div class="col-sm-6 col-md-6">
                    <div class="header-info">
                        <div class="header-info-left">
                            <p class="bold text-right">
                                <i class="fas fa-phone-volume"></i>
                                <span style="margin-left: 2%"></span>(+84) 77 5398 511
                            </p>
                        </div>
                        <div class="header-info-right">
                            <c:choose>
                                <c:when test="${pageContext.request.userPrincipal.name == null}">
                                    <p class="bold text-right" style="margin-left: 2%">
                                        <a style="color: #FFF" href="/taikhoan/login">
                                            <i class="fas fa-sign-in-alt"></i>
                                            <span style="margin-left: 2%"></span>Đăng nhập
                                        </a>
                                    </p>
                                </c:when>
                                <c:when test="${pageContext.request.userPrincipal.name != null}">
                                    <p class="bold text-right" style="margin-left: 2%"><span style="color: #FFF">
                                        <i class="far fa-user"></i>
                                        <span style="margin-left: 2%"></span>${pageContext.request.userPrincipal.name}</span>
                                    </p>
                                    <div class="sub-content">
                                        <ul>
                                            <a href="#"><li><i class="far fa-user"></i><span style="margin-left: 8%"></span>Xem thông tin</li></a>
                                            <sec:authorize access="hasAnyRole('ROLE_ADMIN')">
                                                <a href="/admin" target="_blank"><li><i class="fas fa-tasks"></i><span style="margin-left: 8%"></span>Quản lý phòng mạch</li></a>
                                            </sec:authorize>
                                            <a href="/logout"><li><i class="fas fa-sign-out-alt"></i><span style="margin-left: 8%"></span>Đăng xuất</li></a>
                                        </ul>
                                    </div>
                                </c:when>
                            </c:choose>
                        </div>
                    </div>
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