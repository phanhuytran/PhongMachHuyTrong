<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>

    <div id="page-wrapper">
        <div class="container-fluid">
            <div class="row bg-title">
                <div class="col-lg-3 col-md-4 col-sm-4 col-xs-12">
                    <h4 class="page-title">Tất cả bệnh nhân</h4>
                </div>
                <div class="col-lg-9 col-sm-8 col-md-8 col-xs-12">
                    <a href="/" target="_blank" class="btn btn-danger pull-right m-l-20 btn-rounded btn-outline hidden-xs hidden-sm waves-effect waves-light">Trang chủ</a>
                </div>
            </div>
            <div class="row el-element-overlay">
                <c:forEach items="${patient}" var="d">
                    <!-- .usercard -->
                    <div class="col-lg-3 col-md-4 col-sm-6 col-xs-12">
                        <div class="white-box">
                            <div class="el-card-item">
                                <div class="el-card-avatar el-overlay-1"><img
                                        src="<c:url value="/admin-resources/plugins/images/users/1.jpg"/>"/>
                                    <div class="el-overlay">
                                        <ul class="el-info">
                                            <li><a class="btn default btn-outline image-popup-vertical-fit"
                                                   href="<c:url value="/patients/details/${d.id}"/>"><i
                                                    class="fas fa-search"></i></a></li>
                                            <li><a class="btn default btn-outline" href="/edit-patient"><i
                                                    class="fas fa-link"></i></a></li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="el-card-content">
                                    <h3 class="box-title">Genelia Deshmukh</h3> <small>${d.ten}</small>
                                    <br/> <small>Age: 24 years</small></div>
                            </div>
                        </div>
                    </div>
                </c:forEach>

            </div>
        </div>
    </div>


