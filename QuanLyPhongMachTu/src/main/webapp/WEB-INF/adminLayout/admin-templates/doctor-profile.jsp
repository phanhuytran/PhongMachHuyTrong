<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>

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
                        <div class="user-bg"> <img width="60%" alt="user" src="<c:url value="${doctor.image}"/>"/> </div>
                        <div class="user-btm-box">
                            <!-- .row -->
                            <div class="row text-center m-t-10">
                                <div class="col-md-6 b-r"><strong>Họ và Tên</strong>
                                    <p>${doctor.ho} ${doctor.ten}</p>
                                </div>
                                <div class="col-md-6"><strong>Số điện thoại</strong>
                                    <p>${doctor.dienThoai}</p>
                                </div>

                            </div>
                            <hr>
                            <div class="row text-center m-t-10">
                                <div class="col-md-6 b-r"><strong>Email</strong>
                                    <p>${doctor.email}</p>
                                </div>
                                <div class="col-md-6"><strong>Địa chỉ</strong>
                                    <p>${doctor.queQuan}</p>
                                </div>

                            </div>

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
                                        <div class="sl-left"> <img src="<c:url value="${doctor.image}"/>" alt="user" class="img-circle" /> </div>
                                        <div class="sl-right">
                                            <div class="m-l-40"><a href="#" class="text-info">${doctor.ho} ${doctor.ten}</a> <span class="sl-date">5 phút trước</span>
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
                                        <div class="sl-left"> <img src="<c:url value="${doctor.image}"/>" alt="user" class="img-circle" /> </div>
                                        <div class="sl-right">
                                            <div class="m-l-40"> <a href="#" class="text-info">${doctor.ho} ${doctor.ten}</a> <span class="sl-date">5 phút trước</span>
                                                <div class="m-t-20 row">
                                                    <div class="col-md-2 col-xs-12"><img src="<c:url value="/admin-resources/plugins/images/users/1.jpg"/>" alt="user" class="img-responsive" /></div>
                                                    <div class="col-md-9 col-xs-12">
                                                        <p>Thời gian đã qua đi không thể trở lại. Dòng sông đã ra đi làm sao về chốn cũ. Náo nức khơi xa không thể thiếu những cánh buồm. Áng mây trên đầu đâu thể ngừng trôi. Còn đâu miền dương gian khi úa tan mặt trời. Bình minh có lên ngôi khi không còn đêm tối. Đã có sông sâu không thể thiếu những suối nguồn. Vắng anh trên đời đâu còn tình yêu.</p> <a href="#" class="btn btn-success">Thiết kế weblayout</a></div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <hr>
                                    <div class="sl-item">
                                        <div class="sl-left"> <img src="<c:url value="${doctor.image}"/>" alt="user" class="img-circle" /> </div>
                                        <div class="sl-right">
                                            <div class="m-l-40"><a href="#" class="text-info">${doctor.ho} ${doctor.ten}</a> <span class="sl-date">5 phút trước</span>
                                                <p class="m-t-10">Thời gian đã qua đi không thể trở lại. Dòng sông đã ra đi làm sao về chốn cũ. Náo nức khơi xa không thể thiếu những cánh buồm. Áng mây trên đầu đâu thể ngừng trôi. Còn đâu miền dương gian khi úa tan mặt trời. Bình minh có lên ngôi khi không còn đêm tối. Đã có sông sâu không thể thiếu những suối nguồn. Vắng anh trên đời đâu còn tình yêu.</p>
                                            </div>
                                        </div>
                                    </div>
                                    <hr>
                                    <div class="sl-item">
                                        <div class="sl-left"> <img src="<c:url value="${doctor.image}"/>" alt="user" class="img-circle" /> </div>
                                        <div class="sl-right">
                                            <div class="m-l-40"><a href="#" class="text-info">${doctor.ho} ${doctor.ten}</a> <span class="sl-date">5 phút trước</span>
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
                                        <p class="text-muted">${doctor.ho} ${doctor.ten}</p>
                                    </div>
                                    <div class="col-md-3 col-xs-6 b-r"> <strong>Mobile</strong>
                                        <br>
                                        <p class="text-muted">${doctor.dienThoai}</p>
                                    </div>
                                    <div class="col-md-3 col-xs-6 b-r"> <strong>Email</strong>
                                        <br>
                                        <p class="text-muted">${doctor.email}</p>
                                    </div>
                                    <div class="col-md-3 col-xs-6"> <strong>Địa điểm</strong>
                                        <br>
                                        <p class="text-muted">${doctor.queQuan}</p>
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
                                <div class="text-danger"> ${mesageError}</div>
                                <form:form cssClass="form-material form-horizontal" modelAttribute="doctor" method="post" action="/doctors/detail/${doctor.id}">
                                    <form:errors path="*" element="div" cssClass="text-danger" />
                                    <div class="form-group">
                                        <label class="col-md-12" for="example-text">Họ</span>
                                        </label>
                                        <div class="col-md-12">
                                            <form:input path="ho" type="text" name="example-text" cssClass="form-control"
                                                        placeholder="nhập họ"/>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-md-12" for="example-text">Tên</span>
                                        </label>
                                        <div class="col-md-12">
                                            <form:input path="ten" type="text" name="example-text" cssClass="form-control"
                                                        placeholder="nhập tên"/>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-md-12" for="bdate">Ngày sinh</span>
                                        </label>
                                        <div class="col-md-12">
                                            <form:input path="ngaySinh" id="bdate" name="bdate"
                                                        class="form-control mydatepicker"
                                                        placeholder="nhập ngày sinh"/>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-md-12" for="email">Email</span>
                                        </label>
                                        <div class="col-md-12">
                                            <form:input path="email"
                                                        class="form-control"
                                                        placeholder="nhập email"/>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-md-12" for="bdate">Image</span>
                                        </label>
                                        <div class="col-md-12">
                                            <form:input path="image"
                                                        class="form-control"
                                                        placeholder="Nhap link image"/>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-sm-12">Giới tính</label>
                                        <div class="col-sm-12">
                                            <form:select path="gioiTinh" class="form-control">
                                                <form:option value="">Lựa chọn giới tính</form:option>
                                                <form:option value="Nam">Nam</form:option>
                                                <form:option value="Nu">Nữ</form:option>
                                            </form:select>
                                        </div>
                                    </div>
                                    <%--                        <div class="form-group">--%>
                                    <%--                            <label class="col-sm-12">Ảnh đại diện</label>--%>
                                    <%--                            <div class="col-sm-12">--%>
                                    <%--                                <form:hidden path="image" value="test" />--%>
                                    <%--                                <form:input path="img" type="file" cssClass="form-control"/>--%>
                                    <%--                            </div>--%>
                                    <%--                        </div>--%>
                                    <%--                        <div class="form-group">--%>
                                    <%--                            <label class="col-md-12" for="email">Email</span>--%>
                                    <%--                            </label>--%>
                                    <%--                            <div class="col-md-12">--%>
                                    <%--                                <form:input path="email" type="email"--%>
                                    <%--                                            class="form-control"--%>
                                    <%--                                            placeholder="nhập email"/>--%>
                                    <%--                            </div>--%>
                                    <%--                        </div>--%>
                                    <div class="form-group">
                                        <label class="col-md-12" for="dienThoai">Điện thoại</span>
                                        </label>
                                        <div class="col-md-12">
                                            <form:input path="dienThoai" type="text"
                                                        class="form-control"
                                                        placeholder="nhập điện thoại"/>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-md-12" for="queQuan">Quê quán</span>
                                        </label>
                                        <div class="col-md-12">
                                            <form:input path="queQuan" type="text"
                                                        class="form-control"
                                                        placeholder="nhập quê quán"/>
                                        </div>
                                    </div>

                                    <form:hidden path="taiKhoan"/>
                                    <form:button type="submit" class="btn btn-info waves-effect waves-light m-r-10">Cập nhật</form:button>
                                    <%--                        <button type="submit" class="btn btn-inverse waves-effect waves-light">Hủy</button>--%>
                                </form:form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
