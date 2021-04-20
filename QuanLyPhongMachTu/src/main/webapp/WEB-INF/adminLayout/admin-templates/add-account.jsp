<%--
  Created by IntelliJ IDEA.
  User: ndt05
  Date: 4/19/2021
  Time: 1:41 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<div class="col-sm-6">
    <div class="white-box">
        <h3 class="box-title">Phương tiện truyền thông</h3>
        <form class="form-material form-horizontal">
            <div class="form-group">
                <label class="col-md-12" for="furl">Facebook URL</span>
                </label>
                <div class="col-md-12">
                    <input type="text" id="furl" name="furl" class="form-control"></div>
            </div>
            <div class="form-group">
                <label class="col-md-12" for="turl">Twitter URL</span>
                </label>
                <div class="col-md-12">
                    <input type="text" id="turl" name="turl" class="form-control"></div>
            </div>
            <div class="form-group">
                <label class="col-md-12" for="gurl">Google Plus URL</span>
                </label>
                <div class="col-md-12">
                    <input type="text" id="gurl" name="gurl" class="form-control"></div>
            </div>
            <div class="form-group">
                <label class="col-md-12" for="inurl">LinkedIN URL</span>
                </label>
                <div class="col-md-12">
                    <input type="text" id="inurl" name="inurl" class="form-control"></div>
            </div>
            <button type="submit" class="btn btn-info waves-effect waves-light m-r-10">Thêm</button>
            <button type="submit" class="btn btn-inverse waves-effect waves-light">Hủy</button>
        </form>
    </div>
</div>
</div>