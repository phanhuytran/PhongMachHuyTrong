<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="navbar-default sidebar" role="navigation">
    <div class="sidebar-nav navbar-collapse slimscrollsidebar">
        <ul class="nav" id="side-menu">
            <li class="sidebar-search hidden-sm hidden-md hidden-lg">
                <div class="input-group custom-search-form">
                    <input type="text" class="form-control" placeholder="Tìm kiếm..."/>
                    <span class="input-group-btn">
                            <button class="btn btn-default" type="button">
                                <i class="fas fa-search"></i>
                            </button>
                        </span>
                </div>
            </li>
            <li class="user-pro">
                <a href="#" class="waves-effect">
                    <img src="<c:url value="/admin-resources/plugins/images/users/d1.jpg"/>" alt="user-img"
                         class="img-circle"> <span class="hide-menu">${pageContext.request.userPrincipal.name} <span style="margin-top: 2px"
                                                                                             class="fas fa-chevron-right"></span></span>
                </a>
                <ul class="nav nav-second-level">
                    <li><a href="javascript:void(0)"><i class="far fa-user"></i> Thông tin của tôi</a></li>
                    <li><a href="javascript:void(0)"><i class="far fa-envelope"></i> Hộp thư</a></li>
                    <li><a href="javascript:void(0)"><i class="fas fa-cog"></i> Cài đặt tài khoản</a></li>
                    <li><a href="/logout"><i class="fas fa-power-off"></i> Đăng xuất</a></li>
                </ul>
            </li>
            <li><a href="/admin" class="waves-effect"><i class="fas fa-tachometer-alt"
                                                         style="margin-right: 20px"></i> <span
                    class="hide-menu">Bảng điều khiển</span></a></li>
            <li><a href="javascript:void(0);" class="waves-effect"><i class="far fa-envelope"
                                                                      style="margin-right: 20px"></i> <span
                    class="hide-menu"> Mailbox <span style="float: right; margin-top: 3px"
                                                     class="fas fa-chevron-right"></span><span
                    class="label label-rouded label-danger pull-right"
                    style="margin-right: 10px">6</span></span></a>
                <ul class="nav nav-second-level">
                    <li><a href="/inbox">Hộp thư</a></li>
                    <li><a href="/inbox-detail">Chi tiết hộp thư</a></li>
                    <li><a href="/compose">Soạn thư</a></li>
                </ul>
            </li>
            <li><a href="javascript:void(0);" class="waves-effect"><i class="fas fa-calendar"
                                                                      style="margin-right: 20px"></i> <span
                    class="hide-menu"> Cuộc hẹn <span style="float: right; margin-top: 3px"
                                                      class="fas fa-chevron-right"></span></span></a>
                <ul class="nav nav-second-level">
                    <li><a href="/doctor-schedule">Lịch hẹn Bác sĩ</a></li>
                    <li><a href="/book-appointment">Đặt lịch khám</a></li>
                </ul>
            </li>
            <li><a href="javascript:void(0);" class="waves-effect"><i class="fas fa-user-md"
                                                                      style="margin-right: 20px"></i> <span
                    class="hide-menu"> Bác sĩ <span style="float: right; margin-top: 3px"
                                                    class="fas fa-chevron-right"></span></span></a>
                <ul class="nav nav-second-level">
                    <li><a href="/doctors">Tất cả Bác sĩ</a></li>
                    <li><a href="/doctors/add">Thêm Bác sĩ</a></li>
                    <li><a href="/edit-doctor">Chỉnh sửa Bác sĩ</a></li>
                    <li><a href="/doctor-profile">Thông tin Bác sĩ</a></li>
                </ul>
            </li>
            <li><a href="javascript:void(0);" class="waves-effect"><i class="fas fa-users"
                                                                      style="margin-right: 16px"></i> <span
                    class="hide-menu"> Bệnh nhân <span style="float: right; margin-top: 3px"
                                                       class="fas fa-chevron-right"></span></span></a>
                <ul class="nav nav-second-level">
                    <li><a href="/patients">Tất cả bệnh nhân</a></li>
                    <li><a href="/add-patient">Thêm bệnh nhân</a></li>
                    <li><a href="/edit-patient">Chỉnh sửa bệnh nhân</a></li>
                    <li><a href="/patient-profile">Thông tin bệnh nhân</a></li>
                </ul>
            </li>
            <li><a href="javascript:void(0);" class="waves-effect"><i class="fas fa-bar-chart"
                                                                      style="margin-right: 20px"></i> <span
                    class="hide-menu"> Báo cáo <span style="float: right; margin-top: 3px"
                                                     class="fas fa-chevron-right"></span></span></a>
                <ul class="nav nav-second-level">
                    <li><a href="/payment-report">Báo cáo thanh toán</a></li>
                    <li><a href="/income-report">Báo cáo thu nhập</a></li>
                    <li><a href="/sales-report">Báo cáo bán hàng</a></li>
                </ul>
            </li>
            <li><a href="javascript:void(0);" class="waves-effect"><i class="fas fa-credit-card"
                                                                      style="margin-right: 20px"></i> <span
                    class="hide-menu"> Thanh toán <span style="float: right; margin-top: 3px"
                                                        class="fas fa-chevron-right"></span></span></a>
                <ul class="nav nav-second-level">
                    <li><a href="/payments">Thanh toán</a></li>
                    <li><a href="/add-payment">Thêm thanh toán </a></li>
                    <li><a href="/patient-invoice">Hóa đơn bệnh nhân</a></li>
                </ul>
            </li>
            <li>
                <a href="/logout" class="waves-effect">
                    <i class="fas fa-power-off" style="margin-right: 20px"></i>
                    <span class="hide-menu"> Đăng xuất </span>
                </a>
            </li>
        </ul>
    </div>
</div>
