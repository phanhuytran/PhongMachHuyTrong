<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <div id="page-wrapper">
        <div class="container-fluid">
            <div class="row bg-title">
                <div class="col-lg-3 col-md-4 col-sm-4 col-xs-12">
                    <h4 class="page-title">Danh sách Bác sĩ</h4>
                </div>
                <div class="col-lg-9 col-sm-8 col-md-8 col-xs-12">
                    <a href="/" target="_blank" class="btn btn-danger pull-right m-l-20 btn-rounded btn-outline hidden-xs hidden-sm waves-effect waves-light">Trang chủ</a>
                </div>
            </div>
            <div class="row">
                <c:forEach items="${doctors}" var="d">
                    <div class="col-md-4 col-sm-4">
                        <div class="white-box">
                            <div class="row">
                                <div class="col-md-4 col-sm-4 text-center">
                                    <img src="<c:url value="${d.image}"/>" alt="user" class="img-circle img-responsive">
                                </div>
                                <div class="col-md-8 col-sm-8">
                                    <h3 class="box-title m-b-0">${d.ho} ${d.ten}</h3>
                                    <p>
                                        <address>
                                            Quê quán: ${d.queQuan}<br/>
                                            Số điện thoại: ${d.dienThoai}<br/><br/>
                                            <a href="#"><i class="far fa-address-card"></i></a>
                                            <a style="padding-left: 5%" href="/edit-doctor"><i class="far fa-edit"></i></a>
                                            <a style="padding-left: 5%" href="javascript:;" ><i class="far fa-trash-alt"></i></a>
                                        </address>
                                    </p>
                                </div>
                            </div>
                        </div>
                    </div>
                </c:forEach>
            </div>
        </div>
    </div>