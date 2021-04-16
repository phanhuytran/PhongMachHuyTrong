<%@ page contentType="text/html;charset=UTF-8" language="java" %>

    <div id="page-wrapper">
        <div class="container-fluid">
            <div class="row bg-title">
                <div class="col-lg-3 col-md-4 col-sm-4 col-xs-12">
                    <h4 class="page-title">Danh sách Bác sĩ</h4>
                </div>
            </div>
            <div class="row">
                <c:forEach items="${doctors}" var="d">
                    <div class="col-md-4 col-sm-4">
                        <div class="white-box">
                            <div class="row">
                                <div class="col-md-4 col-sm-4 text-center">
                                    <a href="contact-detail.html">
                                        <img src="<c:url value="/admin-resources/plugins/images/users/d1.jpg"/>" alt="user" class="img-circle img-responsive">
                                    </a>
                                </div>
                                <div class="col-md-8 col-sm-8">
                                    <h3 class="box-title m-b-0">${d.ho}</h3> <small>${d.ten}</small>
                                    <p>
                                    <address>
                                        ${d.queQuan}<br/><br/>
                                        <abbr title="Phone">P:</abbr> ${d.dienThoai}
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
