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
            <li class="dropdown"><a class="dropdown-toggle waves-effect waves-light" data-toggle="dropdown"
                                    href="#"><i class="far fa-envelope" style="margin: 22px 0 -22px 0;"></i>
                <div class="notify"><span class="heartbit"></span><span class="point"></span></div>
            </a>
                <ul class="dropdown-menu mailbox animated bounceInDown">
                    <li>
                        <div class="drop-title">Bạn có 4 tin nhắn mới</div>
                    </li>
                    <li>
                        <div class="message-center">
                            <a href="#">
                                <div class="user-img">
                                    <img src="<c:url value="/admin-resources/plugins/images/users/pawandeep.jpg"/>"
                                         alt="user" class="img-circle"> <span
                                        class="profile-status online pull-right"></span></div>
                                <div class="mail-contnet">
                                    <h5>Pavan kumar</h5> <span class="mail-desc">Xin chào Admin!</span> <span
                                        class="time">9:30</span></div>
                            </a>
                            <a href="#">
                                <div class="user-img"><img
                                        src="<c:url value="/admin-resources/plugins/images/users/sonu.jpg"/>"
                                        alt="user" class="img-circle"> <span
                                        class="profile-status busy pull-right"></span></div>
                                <div class="mail-contnet">
                                    <h5>Sonu Nigam</h5> <span class="mail-desc">Xin chào Admin!</span>
                                    <span class="time">10:10</span></div>
                            </a>
                            <a href="#">
                                <div class="user-img"><img
                                        src="<c:url value="/admin-resources/plugins/images/users/arijit.jpg"/>"
                                        alt="user" class="img-circle"> <span
                                        class="profile-status away pull-right"></span></div>
                                <div class="mail-contnet">
                                    <h5>Arijit Sinh</h5> <span class="mail-desc">Xin chào Admin!</span> <span
                                        class="time">13:08</span>
                                </div>
                            </a>
                            <a href="#">
                                <div class="user-img"><img
                                        src="<c:url value="/admin-resources/plugins/images/users/pawandeep.jpg"/>"
                                        alt="user" class="img-circle"> <span
                                        class="profile-status offline pull-right"></span></div>
                                <div class="mail-contnet">
                                    <h5>Pavan kumar</h5> <span class="mail-desc">Xin chào Admin!</span>
                                    <span class="time">19:02</span>
                                </div>
                            </a>
                        </div>
                    </li>
                    <li>
                        <a class="text-center" href="javascript:void(0);">
                            <strong>Xem tất cả tin nhắn</strong>
                            <i class="fas fa-chevron-right"></i>
                        </a>
                    </li>
                </ul>
            </li>
            <li class="dropdown">
                <a class="dropdown-toggle waves-effect waves-light" data-toggle="dropdown" href="#"><i
                        class="fas fa-bell" style="margin: 22px 0 -22px 0;"></i>
                    <div class="notify">
                        <span class="heartbit"></span>
                        <span class="point"></span>
                    </div>
                </a>
                <ul class="dropdown-menu dropdown-tasks animated slideInUp">
                    <li>
                        <a href="#">
                            <div>
                                <p><strong>Công việc 1</strong> <span
                                        class="pull-right text-muted">Đã hoàn tất 40%</span></p>
                                <div class="progress progress-striped active">
                                    <div class="progress-bar progress-bar-success" role="progressbar"
                                         aria-valuenow="40" aria-valuemin="0" aria-valuemax="100"
                                         style="width: 40%"><span class="sr-only">Đã hoàn tất 40%</span>
                                    </div>
                                </div>
                            </div>
                        </a>
                    </li>
                    <li class="divider"></li>
                    <li>
                        <a href="#">
                            <div>
                                <p><strong>Công việc 2</strong> <span
                                        class="pull-right text-muted">Đã hoàn tất 20%</span>
                                </p>
                                <div class="progress progress-striped active">
                                    <div class="progress-bar progress-bar-info" role="progressbar"
                                         aria-valuenow="20" aria-valuemin="0" aria-valuemax="100"
                                         style="width: 20%"><span class="sr-only">Đã hoàn tất 20%</span></div>
                                </div>
                            </div>
                        </a>
                    </li>
                    <li class="divider"></li>
                    <li>
                        <a href="#">
                            <div>
                                <p><strong>Công việc 3</strong> <span
                                        class="pull-right text-muted">Đã hoàn tất 60%</span></p>
                                <div class="progress progress-striped active">
                                    <div class="progress-bar progress-bar-warning" role="progressbar"
                                         aria-valuenow="60" aria-valuemin="0" aria-valuemax="100"
                                         style="width: 60%"><span class="sr-only">Đã hoàn tất 60%</span>
                                    </div>
                                </div>
                            </div>
                        </a>
                    </li>
                    <li class="divider"></li>
                    <li>
                        <a href="#">
                            <div>
                                <p><strong>Công việc 4</strong> <span
                                        class="pull-right text-muted">Đã hoàn tất 80%</span>
                                </p>
                                <div class="progress progress-striped active">
                                    <div class="progress-bar progress-bar-danger" role="progressbar"
                                         aria-valuenow="80" aria-valuemin="0" aria-valuemax="100"
                                         style="width: 80%"><span class="sr-only">Đã hoàn tất 80%</span></div>
                                </div>
                            </div>
                        </a>
                    </li>
                    <li class="divider"></li>
                    <li>
                        <a class="text-center" href="#">
                            <strong>Xem tất cả công việc</strong>
                            <i class="fas fa-chevron-right"></i>
                        </a>
                    </li>
                </ul>
            </li>
            <li class="dropdown">
                <a class="dropdown-toggle profile-pic" data-toggle="dropdown" href="#" style="margin-right: 20px;">
                    <img src="<c:url value="/admin-resources/plugins/images/users/d1.jpg"/>" alt="user-img"
                         width="36" class="img-circle">
                    <b class="hidden-xs">Dr. Steave</b>
                </a>
                <ul class="dropdown-menu dropdown-user animated flipInY">
                    <li><a href="javascript:void(0)"><i class="far fa-user"></i> Thông tin của tôi</a></li>
                    <li><a href="javascript:void(0)"><i class="far fa-envelope"></i> Hộp thư</a></li>
                    <li><a href="javascript:void(0)"><i class="fas fa-cog"></i> Cài đặt tài khoản</a></li>
                    <li><a href="/login"><i class="fas fa-power-off"></i> Đăng xuất</a></li>
                </ul>
            </li>
        </ul>
    </div>
</nav>
