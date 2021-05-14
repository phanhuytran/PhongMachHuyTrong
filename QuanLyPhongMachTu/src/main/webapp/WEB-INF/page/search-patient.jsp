<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<div class="intro-content">
    <div class="container">
        <div class="row">
            <div class="col-lg-6">

                <div class="form-wrapper">
                    <div class="wow fadeInRight" data-wow-duration="2s" data-wow-delay="0.2s">
                        <div class="panel panel-skin">
                            <div class="panel-heading">
                                <h3 class="panel-title"><span class="fa fa-pencil-square-o"></span> Tra cứu lịch sử bệnh nhân</h3>
                            </div>
                            <div class="panel-body">
                                <form:form modelAttribute="patient" role="form" class="lead">
                                    <div class="row">
                                        <div class="col-xs-6 col-sm-6 col-md-6">
                                            <div class="form-group">
                                                <label>Số Điện Thoại</label>
                                                <form:input path="dienThoai" cssClass="form-control input-md"/>
                                                <form:errors path="dienThoai" cssClass="text-danger"/>
                                            </div>
                                        </div>
                                    </div>
                                    <br/>
                                    <input type="submit" class="btn btn-primary" value="Search">
                                </form:form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>