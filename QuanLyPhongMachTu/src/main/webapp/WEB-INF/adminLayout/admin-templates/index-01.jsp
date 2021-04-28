<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<nav class="navbar navbar-default navbar-static-top m-b-0">
    <div class="navbar-header">
        <a class="navbar-toggle hidden-sm hidden-md hidden-lg " href="javascript:void(0)" data-toggle="collapse"
           data-target=".navbar-collapse">
            <i class="ti-menu"></i>
        </a>
        <div class="top-left-part" style="margin: 0 -10px 0 15px;">
            <a class="logo" href="/admin">
                <img style="width: 40px; margin-right: 10px;"
                     src="<c:url value="/admin-resources/plugins/images/logo.png"/>" alt="home"/>
                </b><span class="hidden-xs"><b>HUYTRONG</b></span>
            </a>
        </div>
        <ul class="nav navbar-top-links navbar-left hidden-xs">
            <form role="search" class="app-search hidden-xs" style="margin-left: 20px;">
                <input type="text" placeholder="Tìm kiếm..." class="form-control">
                <a style="margin-top: 3px;" href=""><i class="fas fa-search"></i></a>
            </form>
        </ul>
        <ul class="nav navbar-top-links navbar-right pull-right">
            <li class="dropdown">
                <a class="dropdown-toggle waves-effect waves-light" data-toggle="dropdown" href="#">
                    <i class="far fa-envelope" style="margin: 22px 0 -22px 0;"></i>
                    <div class="notify">
                        <span class="heartbit"></span>
                        <span class="point"></span>
                    </div>
                </a>
            </li>
            <li class="dropdown">
                <a class="dropdown-toggle waves-effect waves-light" data-toggle="dropdown" href="#">
                    <i class="fas fa-bell" style="margin: 22px 0 -22px 0;"></i>
                    <div class="notify">
                        <span class="heartbit"></span>
                        <span class="point"></span>
                    </div>
                </a>
            </li>
            <li class="info-admin-hover">
                <a class="" data-toggle="dropdown" href="" style="margin-right: 20px;">
                    <img src="<c:url value="/admin-resources/plugins/images/users/d1.jpg"/>" alt="user-img" width="36" class="img-circle">
                    <b class="hidden-xs">${pageContext.request.userPrincipal.name}</b>
                </a>
                <div class="sub-content-2">
                    <ul>
                        <a href="#"><li><i class="far fa-user"></i><span style="margin-left: 8%"></span>Xem thông tin</li></a>
                        <a href="#"><li><i class="far fa-envelope"></i><span style="margin-left: 8%"></span>Hộp thư</li></a>
                        <a href="#"><li><i class="fas fa-cog"></i><span style="margin-left: 8%"></span>Cài đặt tài khoản</li></a>
                        <a href="/logout"><li><i class="fas fa-sign-out-alt"></i><span style="margin-left: 8%"></span>Đăng xuất</li></a>
                    </ul>
                </div>
            </li>
        </ul>
    </div>
</nav>