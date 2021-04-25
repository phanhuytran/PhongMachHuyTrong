<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" type="image/png" sizes="16x16" href="<c:url value="/admin-resources/plugins/images/logo.png"/>">
    <title>
        <tiles:insertAttribute name="title"/>
    </title>
    <link href="<c:url value="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css"/>" rel="stylesheet"/>
    <link href="<c:url value="/admin-resources/bootstrap/dist/css/bootstrap.min.css"/>" rel="stylesheet">
    <link href="<c:url value="/admin-resources/plugins/bower_components/bootstrap-extension/css/bootstrap-extension.css"/>" rel="stylesheet">
    <link href="<c:url value="/admin-resources/plugins/bower_components/sidebar-nav/dist/sidebar-nav.min.css"/>" rel="stylesheet">
    <link href="<c:url value="/admin-resources/plugins/bower_components/bootstrap-datepicker/bootstrap-datepicker.min.css"/>" rel="stylesheet" type="text/css" />
    <link href="<c:url value="/admin-resources/css/animate.css"/>" rel="stylesheet">
    <link href="<c:url value="/admin-resources/css/style.min.css"/>" rel="stylesheet">
    <link href="<c:url value="/admin-resources/css/colors/megna.css"/>" rel="stylesheet">
    <link href="<c:url value="/resources/css/sub-content.css"/>" rel="stylesheet">
    <script>
        (function (i, s, o, g, r, a, m) {
            i['GoogleAnalyticsObject'] = r;
            i[r] = i[r] || function () {
                (i[r].q = i[r].q || []).push(arguments)
            }, i[r].l = 1 * new Date();
            a = s.createElement(o), m = s.getElementsByTagName(o)[0];
            a.async = 1;
            a.src = g;
            m.parentNode.insertBefore(a, m)
        })(window, document, 'script', 'https://www.google-analytics.com/analytics.js', 'ga');
        ga('create', 'UA-19175540-9', 'auto');
        ga('send', 'pageview');
    </script>
</head>

<body>
<div id="wrapper">
    <tiles:insertAttribute name="index-01"/>
    <tiles:insertAttribute name="index-02"/>
    <div id="page-wrapper">
        <div class="container-fluid">
            <div class="row bg-title">
                <div class="col-lg-3 col-md-4 col-sm-4 col-xs-12">
                    <h4 class="page-title">Thông tin Bác sĩ</h4>
                </div>
                <div class="col-lg-9 col-sm-8 col-md-8 col-xs-12">
                    <a href="/" target="_blank" class="btn btn-danger pull-right m-l-20 btn-rounded btn-outline hidden-xs hidden-sm waves-effect waves-light">Trang chủ</a>
                </div>
            </div>
            <div class="row">
                <div class="col-md-4 col-xs-12">
                    <div class="white-box">
                        <div class="user-bg"> <img width="100%" alt="user" src="<c:url value="/admin-resources/plugins/images/big/d2.jpg"/>"/> </div>
                        <div class="user-btm-box">
                            <!-- .row -->
                            <div class="row text-center m-t-10">
                                <div class="col-md-6 b-r"><strong>Họ và Tên</strong>
                                    <p>Nguyễn Đỗ Trọng</p>
                                </div>
                                <div class="col-md-6"><strong>Ngành nghề</strong>
                                    <p>Nha sĩ</p>
                                </div>
                            </div>
                            <hr>
                            <div class="row text-center m-t-10">
                                <div class="col-md-6 b-r"><strong>Email</strong>
                                    <p>trong@gmail.com</p>
                                </div>
                                <div class="col-md-6"><strong>Số điện thoại</strong>
                                    <p>094 4444 555</p>
                                </div>
                            </div>
                            <hr>
                            <div class="row text-center m-t-10">
                                <div class="col-md-12"><strong>Địa chỉ</strong>
                                    <p>371 Nguyễn Kiệm, Gò Vấp<br/> TP HCM, Việt Nam.</p>
                                </div>
                            </div>
                            <hr>
                            <div class="col-md-4 col-sm-4 text-center">
                                <p class="text-purple"><i class="fab fa-facebook"></i></p>
                                <h1>258</h1> </div>
                            <div class="col-md-4 col-sm-4 text-center">
                                <p class="text-blue"><i class="fab fa-twitter"></i></p>
                                <h1>125</h1> </div>
                            <div class="col-md-4 col-sm-4 text-center">
                                <p class="text-danger"><i class="fab fa-google-plus"></i></p>
                                <h1>140</h1> </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-8 col-xs-12">
                    <div class="white-box">
                        <!-- .tabs -->
                        <ul class="nav nav-tabs tabs customtab">
                            <li class="active tab">
                                <a href="#home" data-toggle="tab"> <span class="visible-xs"><i class="fa fa-home"></i></span> <span class="hidden-xs">Hoạt động</span> </a>
                            </li>
                            <li class="tab">
                                <a href="#biography" data-toggle="tab"> <span class="visible-xs"><i class="fa fa-home"></i></span> <span class="hidden-xs">Tiểu sửa</span> </a>
                            </li>
                            <li class="tab">
                                <a href="#update" data-toggle="tab"> <span class="visible-xs"><i class="fa fa-home"></i></span> <span class="hidden-xs">Cập nhật chi tiết</span> </a>
                            </li>
                        </ul>
                        <div class="tab-content">
                            <div class="tab-pane active" id="home">
                                <div class="steamline">
                                    <div class="sl-item">
                                        <div class="sl-left"> <img src="<c:url value="/admin-resources/plugins/images/users/d1.jpg"/>" alt="user" class="img-circle" /> </div>
                                        <div class="sl-right">
                                            <div class="m-l-40"><a href="#" class="text-info">John Doe</a> <span class="sl-date">5 phút trước</span>
                                                <p>giao một nhiệm vụ mới <a href="#"> Thiết kế weblayout</a></p>
                                                <div class="m-t-20 row">
                                                    <img src="<c:url value="/admin-resources/plugins/images/img2.jpg"/>" alt="user" class="col-md-3 col-xs-12" />
                                                    <img src="<c:url value="/admin-resources/plugins/images/img2.jpg"/>" alt="user" class="col-md-3 col-xs-12" />
                                                    <img src="<c:url value="/admin-resources/plugins/images/img2.jpg"/>" alt="user" class="col-md-3 col-xs-12" />
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <hr>
                                    <div class="sl-item">
                                        <div class="sl-left"> <img src="<c:url value="/admin-resources/plugins/images/users/d1.jpg"/>" alt="user" class="img-circle" /> </div>
                                        <div class="sl-right">
                                            <div class="m-l-40"> <a href="#" class="text-info">John Doe</a> <span class="sl-date">5 phút trước</span>
                                                <div class="m-t-20 row">
                                                    <div class="col-md-2 col-xs-12"><img src="<c:url value="/admin-resources/plugins/images/users/pawandeep.jpg"/>" alt="user" class="img-responsive" /></div>
                                                    <div class="col-md-9 col-xs-12">
                                                        <p>Thời gian đã qua đi không thể trở lại. Dòng sông đã ra đi làm sao về chốn cũ. Náo nức khơi xa không thể thiếu những cánh buồm. Áng mây trên đầu đâu thể ngừng trôi. Còn đâu miền dương gian khi úa tan mặt trời. Bình minh có lên ngôi khi không còn đêm tối. Đã có sông sâu không thể thiếu những suối nguồn. Vắng anh trên đời đâu còn tình yêu.</p> <a href="#" class="btn btn-success">Thiết kế weblayout</a></div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <hr>
                                    <div class="sl-item">
                                        <div class="sl-left"> <img src="<c:url value="/admin-resources/plugins/images/users/d1.jpg"/>" alt="user" class="img-circle" /> </div>
                                        <div class="sl-right">
                                            <div class="m-l-40"><a href="#" class="text-info">John Doe</a> <span class="sl-date">5 phút trước</span>
                                                <p class="m-t-10">Thời gian đã qua đi không thể trở lại. Dòng sông đã ra đi làm sao về chốn cũ. Náo nức khơi xa không thể thiếu những cánh buồm. Áng mây trên đầu đâu thể ngừng trôi. Còn đâu miền dương gian khi úa tan mặt trời. Bình minh có lên ngôi khi không còn đêm tối. Đã có sông sâu không thể thiếu những suối nguồn. Vắng anh trên đời đâu còn tình yêu.</p>
                                            </div>
                                        </div>
                                    </div>
                                    <hr>
                                    <div class="sl-item">
                                        <div class="sl-left"> <img src="<c:url value="/admin-resources/plugins/images/users/d1.jpg"/>" alt="user" class="img-circle" /> </div>
                                        <div class="sl-right">
                                            <div class="m-l-40"><a href="#" class="text-info">John Doe</a> <span class="sl-date">5 phút trước</span>
                                                <p>gian một nhiệm vụ mới <a href="#"> Thiết kế weblayout</a></p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- /.tabs1 -->
                            <!-- .tabs 2 -->
                            <div class="tab-pane" id="biography">
                                <div class="row">
                                    <div class="col-md-3 col-xs-6 b-r"> <strong>Họ và Tên</strong>
                                        <br>
                                        <p class="text-muted">Nguyễn Đỗ Trọng</p>
                                    </div>
                                    <div class="col-md-3 col-xs-6 b-r"> <strong>Mobile</strong>
                                        <br>
                                        <p class="text-muted">094 4444 555</p>
                                    </div>
                                    <div class="col-md-3 col-xs-6 b-r"> <strong>Email</strong>
                                        <br>
                                        <p class="text-muted">trong@gmail.com</p>
                                    </div>
                                    <div class="col-md-3 col-xs-6"> <strong>Địa điểm</strong>
                                        <br>
                                        <p class="text-muted">TP HCM</p>
                                    </div>
                                </div>
                                <hr>
                                <p class="m-t-30">Thời gian đã qua đi không thể trở lại. Dòng sông đã ra đi làm sao về chốn cũ. Náo nức khơi xa không thể thiếu những cánh buồm. Áng mây trên đầu đâu thể ngừng trôi. Còn đâu miền dương gian khi úa tan mặt trời. Bình minh có lên ngôi khi không còn đêm tối. Đã có sông sâu không thể thiếu những suối nguồn. Vắng anh trên đời đâu còn tình yêu.</p>
                                <p>Người đã ra đi có thể trở lại. Vết thương ngày nào có thể liền da. Nước mắt sẽ thôi rơi, đôi môi lại chín đỏ. Bồi hồi ngày gặp nhau xua tan đi bao nỗi mong nhớ.</p>
                                <p>Vòng tay yêu thương có thể rộng mở. Bóng mây muộn sầu có thể dần tan. Và điều này thật rộn ràng êm ái. Có thể một ngày mai chúng ta sẽ thành đôi.</p>
                                <h4 class="m-t-30">Kỹ năng</h4>
                                <hr>
                                <h5>Wordpress <span class="pull-right">80%</span></h5>
                                <div class="progress">
                                    <div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="80" aria-valuemin="0" aria-valuemax="100" style="width:80%;"> <span class="sr-only">50% Complete</span> </div>
                                </div>
                                <h5>HTML 5 <span class="pull-right">90%</span></h5>
                                <div class="progress">
                                    <div class="progress-bar progress-bar-custom" role="progressbar" aria-valuenow="90" aria-valuemin="0" aria-valuemax="100" style="width:90%;"> <span class="sr-only">50% Complete</span> </div>
                                </div>
                                <h5>jQuery <span class="pull-right">50%</span></h5>
                                <div class="progress">
                                    <div class="progress-bar progress-bar-primary" role="progressbar" aria-valuenow="50" aria-valuemin="0" aria-valuemax="100" style="width:50%;"> <span class="sr-only">50% Complete</span> </div>
                                </div>
                                <h5>Photoshop <span class="pull-right">70%</span></h5>
                                <div class="progress">
                                    <div class="progress-bar progress-bar-danger" role="progressbar" aria-valuenow="70" aria-valuemin="0" aria-valuemax="100" style="width:70%;"> <span class="sr-only">50% Complete</span> </div>
                                </div>
                                <h4 class="m-t-30">Giáo dục</h4>
                                <hr>
                                <ul>
                                    <li>Thời gian đã qua đi không thể trở lại</li>
                                    <li>Dòng sông đã ra đi làm sao về chốn cũ</li>
                                    <li>Náo nức khơi xa không thể thiếu những cánh buồm</li>
                                    <li>Áng mây trên đầu đâu thể ngừng trôi</li>
                                    <li>Còn đâu miền dương gian khi úa tan mặt trời</li>
                                    <li>Bình minh có lên ngôi khi không còn đêm tối</li>
                                </ul>
                                <h4 class="m-t-30">Kinh nghiệm</h4>
                                <hr>
                                <ul>
                                    <li>Đã có sông sâu không thể thiếu những suối nguồn</li>
                                    <li>Vắng anh trên đời đâu còn tình yêu</li>
                                    <li>Người đã ra đi có thể trở lại</li>
                                    <li>Vết thương ngày nào có thể liền da</li>
                                    <li>Nước mắt sẽ thôi rơi, đôi môi lại chín đỏ</li>
                                    <li>Bồi hồi ngày gặp nhau xua tan đi bao nỗi mong nhớ</li>
                                </ul>
                                <h4 class="m-t-30">Thành tích</h4>
                                <hr>
                                <ul>
                                    <li>Vòng tay yêu thương có thể rộng mở</li>
                                    <li>Bóng mây muộn sầu có thể dần tan</li>
                                    <li>Và điều này thật rộn ràng êm ái</li>
                                    <li>Có thể một ngày mai chúng ta sẽ thành đôi</li>
                                    <li>Không thể và có thể</li>
                                    <li>Phó Đức Phương</li>
                                    <li>Trần Phấn Huy & Nguyễn Đỗ Trọng</li>
                                </ul>
                            </div>
                            <div class="tab-pane" id="update">
                                <form class="form-material form-horizontal">
                                    <div class="form-group">
                                        <label class="col-md-12" for="example-text">Họ và Tên</span>
                                        </label>
                                        <div class="col-md-12">
                                            <input type="text" id="example-text" name="example-text" class="form-control" placeholder="nhập họ và tên" value="Nguyễn Đỗ Trọng"> </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-md-12" for="bdate">Ngày sinh</span>
                                        </label>
                                        <div class="col-md-12">
                                            <input type="text" id="bdate" name="bdate" class="form-control mydatepicker" placeholder="nhập ngày sinh" value="12/10/2017"> </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-sm-12">Giới tính</label>
                                        <div class="col-sm-12">
                                            <select class="form-control">
                                                <option>Lựa chọn giới tính</option>
                                                <option selected="selected">Nam</option>
                                                <option>Nữ</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-sm-12">Ảnh đại diện</label>
                                        <div class="col-sm-12"> <img class="img-responsive" src="<c:url value="/admin-resources/plugins/images/big/d2.jpg"/>" alt="" style="max-width:120px;"> </div>
                                        <div class="col-sm-12">
                                            <div class="fileinput fileinput-new input-group" data-provides="fileinput">
                                                <div class="form-control" data-trigger="fileinput"> <i class="glyphicon glyphicon-file fileinput-exists"></i> <span class="fileinput-filename"></span></div> <span class="input-group-addon btn btn-default btn-file"> <span class="fileinput-new">Chọn ảnh</span> <span class="fileinput-exists">Thay đổi</span>
                                                    <input type="file" name="..."> </span> <a href="#" class="input-group-addon btn btn-default fileinput-exists" data-dismiss="fileinput">Xóa ảnh</a> </div>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-md-12" for="special">Đặc điểm</span>
                                        </label>
                                        <div class="col-md-12">
                                            <input type="text" id="special" name="special" class="form-control" placeholder="Ví dụ: Thích Java" value="Thành thạo Python"> </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-md-12">Mô tả</label>
                                        <div class="col-md-12">
                                            <textarea class="form-control" rows="3">Tôi là người cầu toàn nên thỉnh thoảng làm việc gì cũng chậm.</textarea>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-md-12" for="url">Website URL</span>
                                        </label>
                                        <div class="col-md-12">
                                            <input type="text" id="url" name="url" class="form-control" placeholder="nhập URL website" value="http://www.example-website.com"> </div>
                                    </div>
                                    <button type="submit" class="btn btn-info waves-effect waves-light m-r-10">Cập nhật</button>
                                    <button type="submit" class="btn btn-inverse waves-effect waves-light">Hủy</button>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <footer class="footer text-center"> ©Copyright 2020 - Huy & Trọng. Đã đăng ký bản quyền.</footer>
</div>

<script src="<c:url value="/admin-resources/plugins/bower_components/jquery/dist/jquery.min.js"/>"></script>
<script src="<c:url value="/admin-resources/bootstrap/dist/js/tether.min.js"/>"></script>
<script src="<c:url value="/admin-resources/bootstrap/dist/js/bootstrap.min.js"/>"></script>
<script src="<c:url value="/admin-resources/plugins/bower_components/bootstrap-extension/js/bootstrap-extension.min.js"/>"></script>
<script src="<c:url value="/admin-resources/plugins/bower_components/sidebar-nav/dist/sidebar-nav.min.js"/>"></script>
<script src="<c:url value="/admin-resources/js/jquery.slimscroll.js"/>"></script>
<script src="<c:url value="/admin-resources/plugins/bower_components/bootstrap-datepicker/bootstrap-datepicker.min.js"/>"></script>
<script type="text/javascript">
    jQuery('.mydatepicker').datepicker();
</script>
<script src="<c:url value="/admin-resources/js/waves.js"/>"></script>
<script src="<c:url value="/admin-resources/js/custom.min.js"/>"></script>
<script src="<c:url value="/admin-resources/plugins/bower_components/styleswitcher/jQuery.style.switcher.js"/>"></script>
</body>
</html>