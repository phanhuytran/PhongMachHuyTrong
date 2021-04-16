<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>



    <div id="page-wrapper">
        <div class="container-fluid">
            <div class="row bg-title">
                <div class="col-lg-3 col-md-4 col-sm-4 col-xs-12">
                    <h4 class="page-title">Phòng Mạch Huy Trọng</h4>
                </div>
            </div>

            <div class="row">
                <div class="col-md-3 col-sm-6">
                    <div class="white-box">
                        <div class="r-icon-stats"><i class="far fa-user"></i>
                            <div class="bodystate">
                                <h4>370</h4> <span class="text-muted">Bệnh nhân mới</span>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-3 col-sm-6">
                    <div class="white-box">
                        <div class="r-icon-stats"><i class="fas fa-shopping-bag"></i>
                            <div class="bodystate">
                                <h4>342</h4> <span class="text-muted">Bệnh nhân OPD</span>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-3 col-sm-6">
                    <div class="white-box">
                        <div class="r-icon-stats"><i class="fas fa-wallet"></i>
                            <div class="bodystate">
                                <h4>13</h4> <span class="text-muted">Hoạt động</span>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-3 col-sm-6">
                    <div class="white-box">
                        <div class="r-icon-stats"><i class="fas fa-wallet"></i>
                            <div class="bodystate">
                                <h4>$34650</h4> <span class="text-muted">Thu nhập</span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="row">
                <div class="col-md-4 col-sm-12 col-xs-12">
                    <div class="white-box">
                        <h3 class="box-title"><small class="pull-right m-t-10 text-success">18% cao hơn tháng
                            trước</small>Bệnh nhân mới</h3>
                        <div class="stats-row">
                            <div class="stat-item">
                                <h6>Tổng quát</h6> <b>80.40%</b></div>
                            <div class="stat-item">
                                <h6>Hàng tháng</h6> <b>15.40%</b></div>
                            <div class="stat-item">
                                <h6>Hàng ngày</h6> <b>5.50%</b></div>
                        </div>
                        <div id="sparkline8" class="minus-mar"></div>
                    </div>
                </div>
                <div class="col-md-4 col-sm-12 col-xs-12">
                    <div class="white-box">
                        <h3 class="box-title"><small class="pull-right m-t-10 text-danger">18% ít hơn tháng
                            trước</small>Bệnh nhân OPD</h3>
                        <div class="stats-row">
                            <div class="stat-item">
                                <h6>Tổng quát</h6> <b>80.40%</b></div>
                            <div class="stat-item">
                                <h6>Hàng tháng</h6> <b>15.40%</b></div>
                            <div class="stat-item">
                                <h6>Hàng ngày</h6> <b>5.50%</b></div>
                        </div>
                        <div id="sparkline9" class="minus-mar"></div>
                    </div>
                </div>
                <div class="col-md-4 col-sm-12 col-xs-12">
                    <div class="white-box">
                        <h3 class="box-title"><small class="pull-right m-t-10 text-success">18% cao hơn tháng
                            trước</small>Điều trị</h3>
                        <div class="stats-row">
                            <div class="stat-item">
                                <h6>Tổng quát</h6> <b>80.40%</b></div>
                            <div class="stat-item">
                                <h6>Hàng tháng</h6> <b>15.40%</b></div>
                            <div class="stat-item">
                                <h6>Hàng ngày</h6> <b>5.50%</b></div>
                        </div>
                        <div id="sparkline10" class="minus-mar"></div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-6">
                    <div class="white-box">
                        <h3 class="box-title m-b-0">DANH SÁCH BỆNH NHÂN MỚI</h3>
                        <p class="text-muted">Dữ liệu bệnh nhân</p>
                        <div class="table-responsive">
                            <table class="table">
                                <thead>
                                <tr>
                                    <th>#</th>
                                    <th>Họ</th>
                                    <th>Tên</th>
                                    <th>Username</th>
                                    <th>Tình trạng bệnh</th>
                                </tr>
                                </thead>
                                <tbody style="font-size: 14px">
                                <tr>
                                    <td>1</td>
                                    <td>Deshmukh</td>
                                    <td>Prohaska</td>
                                    <td>@Genelia</td>
                                    <td><span class="label label-danger">Fever</span></td>
                                </tr>
                                <tr>
                                    <td>2</td>
                                    <td>Deshmukh</td>
                                    <td>Gaylord</td>
                                    <td>@Ritesh</td>
                                    <td><span class="label label-info">Cancer</span></td>
                                </tr>
                                <tr>
                                    <td>3</td>
                                    <td>Sanghani</td>
                                    <td>Gusikowski</td>
                                    <td>@Govinda</td>
                                    <td><span class="label label-warning">Lakva</span></td>
                                </tr>
                                <tr>
                                    <td>4</td>
                                    <td>Roshan</td>
                                    <td>Rogahn</td>
                                    <td>@Hritik</td>
                                    <td><span class="label label-success">Dental</span></td>
                                </tr>
                                <tr>
                                    <td>5</td>
                                    <td>Joshi</td>
                                    <td>Hickle</td>
                                    <td>@Maruti</td>
                                    <td><span class="label label-info">Cancer</span></td>
                                </tr>
                                <tr>
                                    <td>6</td>
                                    <td>Nigam</td>
                                    <td>Eichmann</td>
                                    <td>@Sonu</td>
                                    <td><span class="label label-success">Dental</span></td>
                                </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
                <div class="col-sm-6">
                    <div class="white-box">
                        <h3 class="box-title m-b-0">PHÒNG THÍ NGHIỆM</h3>
                        <p class="text-muted">Dữ liệu thử nghiệm trong phòng thí nghiệm</p>
                        <div class="table-responsive">
                            <table class="table table-hover">
                                <thead>
                                <tr>
                                    <th>#</th>
                                    <th>Tên</th>
                                    <th>ECG</th>
                                    <th>Kết quả</th>
                                </tr>
                                </thead>
                                <tbody style="font-size: 14px">
                                <tr>
                                    <td>1</td>
                                    <td>Genelia Deshmukh</td>
                                    <td><span class="peity-line" data-width="120"
                                              data-peity='{ "fill": ["#01c0c8"], "stroke":["#01c0c8"]}'
                                              data-height="40">0,-3,-2,-4,-5,-4,-3,-2,-5,-1</span></td>
                                    <td><span class="text-danger text-semibold">28.76%</span>
                                    </td>
                                </tr>
                                <tr>
                                    <td>2</td>
                                    <td>Ajay Devgan</td>
                                    <td><span class="peity-line" data-width="120"
                                              data-peity='{ "fill": ["#01c0c8"], "stroke":["#01c0c8"]}'
                                              data-height="40">0,-1,-1,-2,-3,-1,-2,-3,-1,-2</span></td>
                                    <td><span class="text-warning text-semibold">8.55%</span>
                                    </td>
                                </tr>
                                <tr>
                                    <td>3</td>
                                    <td>Hrithik Roshan</td>
                                    <td><span class="peity-line" data-width="120"
                                              data-peity='{ "fill": ["#01c0c8"], "stroke":["#01c0c8"]}'
                                              data-height="40">0,3,6,1,2,4,6,3,2,1</span></td>
                                    <td><span class="text-success text-semibold">58.56%</span>
                                    </td>
                                </tr>
                                <tr>
                                    <td>4</td>
                                    <td>Steve Gection</td>
                                    <td><span class="peity-line" data-width="120"
                                              data-peity='{ "fill": ["#01c0c8"], "stroke":["#01c0c8"]}'
                                              data-height="40">0,3,6,4,5,4,7,3,4,2</span></td>
                                    <td><span class="text-info text-semibold">35.76%</span>
                                    </td>
                                </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
