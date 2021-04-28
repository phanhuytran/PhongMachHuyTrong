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
    <link href="<c:url value="/admin-resources/plugins/bower_components/datatables/jquery.dataTables.min.css"/>" rel="stylesheet" type="text/css" />
    <link href="<c:url value="https://cdn.datatables.net/buttons/1.2.2/css/buttons.dataTables.min.css"/>" rel="stylesheet" type="text/css" />
    <link href="<c:url value="/admin-resources/plugins/bower_components/sidebar-nav/dist/sidebar-nav.min.css"/>" rel="stylesheet">
    <link href="<c:url value="/admin-resources/css/animate.css"/>" rel="stylesheet">
    <link href="<c:url value="/admin-resources/css/style.min.css"/>" rel="stylesheet">
    <link href="<c:url value="/admin-resources/css/colors/megna.css"/>" id="theme" rel="stylesheet">
    <link href="<c:url value="/resources/css/sub-content.css"/>" rel="stylesheet">
</head>

<body>
<div id="wrapper">
    <tiles:insertAttribute name="index-01"/>
    <tiles:insertAttribute name="index-02"/>
    <div id="page-wrapper">
        <div class="container-fluid">
            <div class="row bg-title">
                <div class="col-lg-3 col-md-4 col-sm-4 col-xs-12">
                    <h4 class="page-title">Chi tết hóa đơn thanh toán</h4>
                </div>
                <div class="col-lg-9 col-sm-8 col-md-8 col-xs-12">
                    <a href="/" target="_blank" class="btn btn-danger pull-right m-l-20 btn-rounded btn-outline hidden-xs hidden-sm waves-effect waves-light">Trang chủ</a>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-12">
                    <div class="white-box">
                        <h3 class="box-title m-b-0">Chi tiết thanh toán hóa đơn phòng mạch</h3>
                        <hr>
                        <div class="table-responsive">
                            <table id="myTable" class="table table-striped">
                                <thead>
                                <tr>
                                    <th>STT</th>
                                    <th>Bệnh nhân</th>
                                    <th>Bác sĩ</th>
                                    <th>Ngày</th>
                                    <th>Chi phí</th>
                                    <th>Giảm giá</th>
                                    <th>Tổng tiền</th>
                                </tr>
                                </thead>
                                <tbody>
                                <tr>
                                    <td>1</td>
                                    <td>Tiger Nixon</td>
                                    <td>Steve Gection</td>
                                    <td>2011/04/25</td>
                                    <td>$610</td>
                                    <td>15%</td>
                                    <td>$320</td>
                                </tr>
                                <tr>
                                    <td>2</td>
                                    <td>Garrett Winters</td>
                                    <td>Steve Gection</td>
                                    <td>2011/04/25</td>
                                    <td>$630</td>
                                    <td>15%</td>
                                    <td>$170</td>
                                </tr>
                                <tr>
                                    <td>3</td>
                                    <td>Ashton Cox</td>
                                    <td>Steve Gection</td>
                                    <td>2011/04/25</td>
                                    <td>$660</td>
                                    <td>15%</td>
                                    <td>$860</td>
                                </tr>
                                <tr>
                                    <td>4</td>
                                    <td>Cedric Kelly</td>
                                    <td>Steve Gection</td>
                                    <td>2011/04/25</td>
                                    <td>$220</td>
                                    <td>15%</td>
                                    <td>$433</td>
                                </tr>
                                <tr>
                                    <td>5</td>
                                    <td>Airi Satou</td>
                                    <td>Steve Gection</td>
                                    <td>2011/04/25</td>
                                    <td>$330</td>
                                    <td>15%</td>
                                    <td>$162</td>
                                </tr>
                                <tr>
                                    <td>6</td>
                                    <td>Brielle Williamson</td>
                                    <td>Steve Gection</td>
                                    <td>2011/04/25</td>
                                    <td>$610</td>
                                    <td>15%</td>
                                    <td>$372</td>
                                </tr>
                                <tr>
                                    <td>7</td>
                                    <td>Herrod Chandler</td>
                                    <td>Steve Gection</td>
                                    <td>2011/04/25</td>
                                    <td>$590</td>
                                    <td>15%</td>
                                    <td>$137</td>
                                </tr>
                                <tr>
                                    <td>8</td>
                                    <td>Rhona Davidson</td>
                                    <td>Steve Gection</td>
                                    <td>2011/04/25</td>
                                    <td>$550</td>
                                    <td>15%</td>
                                    <td>$327</td>
                                </tr>
                                <tr>
                                    <td>9</td>
                                    <td>Colleen Hurst</td>
                                    <td>Steve Gection</td>
                                    <td>2011/04/25</td>
                                    <td>$390</td>
                                    <td>15%</td>
                                    <td>$205</td>
                                </tr>
                                <tr>
                                    <td>10</td>
                                    <td>Sonya Frost</td>
                                    <td>Steve Gection</td>
                                    <td>2008/12/13</td>
                                    <td>$230</td>
                                    <td>15%</td>
                                    <td>$103</td>
                                </tr>
                                <tr>
                                    <td>31</td>
                                    <td>Tiger Nixon</td>
                                    <td>Steve Gection</td>
                                    <td>2011/04/25</td>
                                    <td>$610</td>
                                    <td>15%</td>
                                    <td>$320</td>
                                </tr>
                                <tr>
                                    <td>28</td>
                                    <td>Garrett Winters</td>
                                    <td>Steve Gection</td>
                                    <td>2011/04/25</td>
                                    <td>$630</td>
                                    <td>15%</td>
                                    <td>$170</td>
                                </tr>
                                <tr>
                                    <td>73</td>
                                    <td>Ashton Cox</td>
                                    <td>Steve Gection</td>
                                    <td>2011/04/25</td>
                                    <td>$660</td>
                                    <td>15%</td>
                                    <td>$860</td>
                                </tr>
                                <tr>
                                    <td>44</td>
                                    <td>Cedric Kelly</td>
                                    <td>Steve Gection</td>
                                    <td>2011/04/25</td>
                                    <td>$220</td>
                                    <td>15%</td>
                                    <td>$433</td>
                                </tr>
                                <tr>
                                    <td>95</td>
                                    <td>Airi Satou</td>
                                    <td>Steve Gection</td>
                                    <td>2011/04/25</td>
                                    <td>$330</td>
                                    <td>15%</td>
                                    <td>$162</td>
                                </tr>
                                <tr>
                                    <td>76</td>
                                    <td>Brielle Williamson</td>
                                    <td>Steve Gection</td>
                                    <td>2011/04/25</td>
                                    <td>$610</td>
                                    <td>15%</td>
                                    <td>$372</td>
                                </tr>
                                <tr>
                                    <td>67</td>
                                    <td>Herrod Chandler</td>
                                    <td>Steve Gection</td>
                                    <td>2011/04/25</td>
                                    <td>$590</td>
                                    <td>15%</td>
                                    <td>$137</td>
                                </tr>
                                <tr>
                                    <td>83</td>
                                    <td>Rhona Davidson</td>
                                    <td>Steve Gection</td>
                                    <td>2011/04/25</td>
                                    <td>$550</td>
                                    <td>15%</td>
                                    <td>$327</td>
                                </tr>
                                <tr>
                                    <td>19</td>
                                    <td>Colleen Hurst</td>
                                    <td>Steve Gection</td>
                                    <td>2011/04/25</td>
                                    <td>$390</td>
                                    <td>15%</td>
                                    <td>$205</td>
                                </tr>
                                <tr>
                                    <td>14</td>
                                    <td>Sonya Frost</td>
                                    <td>Steve Gection</td>
                                    <td>2008/12/13</td>
                                    <td>$230</td>
                                    <td>15%</td>
                                    <td>$103</td>
                                </tr>
                                <tr>
                                    <td>13</td>
                                    <td>Tiger Nixon</td>
                                    <td>Steve Gection</td>
                                    <td>2011/04/25</td>
                                    <td>$610</td>
                                    <td>15%</td>
                                    <td>$320</td>
                                </tr>
                                <tr>
                                    <td>25</td>
                                    <td>Garrett Winters</td>
                                    <td>Steve Gection</td>
                                    <td>2011/04/25</td>
                                    <td>$630</td>
                                    <td>15%</td>
                                    <td>$170</td>
                                </tr>
                                <tr>
                                    <td>39</td>
                                    <td>Ashton Cox</td>
                                    <td>Steve Gection</td>
                                    <td>2011/04/25</td>
                                    <td>$660</td>
                                    <td>15%</td>
                                    <td>$860</td>
                                </tr>
                                <tr>
                                    <td>41</td>
                                    <td>Cedric Kelly</td>
                                    <td>Steve Gection</td>
                                    <td>2011/04/25</td>
                                    <td>$220</td>
                                    <td>15%</td>
                                    <td>$433</td>
                                </tr>
                                <tr>
                                    <td>53</td>
                                    <td>Airi Satou</td>
                                    <td>Steve Gection</td>
                                    <td>2011/04/25</td>
                                    <td>$330</td>
                                    <td>15%</td>
                                    <td>$162</td>
                                </tr>
                                <tr>
                                    <td>65</td>
                                    <td>Brielle Williamson</td>
                                    <td>Steve Gection</td>
                                    <td>2011/04/25</td>
                                    <td>$610</td>
                                    <td>15%</td>
                                    <td>$372</td>
                                </tr>
                                <tr>
                                    <td>77</td>
                                    <td>Herrod Chandler</td>
                                    <td>Steve Gection</td>
                                    <td>2011/04/25</td>
                                    <td>$590</td>
                                    <td>15%</td>
                                    <td>$137</td>
                                </tr>
                                <tr>
                                    <td>80</td>
                                    <td>Rhona Davidson</td>
                                    <td>Steve Gection</td>
                                    <td>2011/04/25</td>
                                    <td>$550</td>
                                    <td>15%</td>
                                    <td>$327</td>
                                </tr>
                                <tr>
                                    <td>90</td>
                                    <td>Colleen Hurst</td>
                                    <td>Steve Gection</td>
                                    <td>2011/04/25</td>
                                    <td>$390</td>
                                    <td>15%</td>
                                    <td>$205</td>
                                </tr>
                                <tr>
                                    <td>100</td>
                                    <td>Sonya Frost</td>
                                    <td>Steve Gection</td>
                                    <td>2008/12/13</td>
                                    <td>$230</td>
                                    <td>15%</td>
                                    <td>$103</td>
                                </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <footer class="footer text-center"> ©Copyright 2020 - Huy & Trọng. Đã đăng ký bản quyền.</footer>
    </div>
</div>

<script src="<c:url value="/admin-resources/plugins/bower_components/jquery/dist/jquery.min.js"/>"></script>
<script src="<c:url value="/admin-resources/bootstrap/dist/js/tether.min.js"/>"></script>
<script src="<c:url value="/admin-resources/bootstrap/dist/js/bootstrap.min.js"/>"></script>
<script src="<c:url value="/admin-resources/plugins/bower_components/bootstrap-extension/js/bootstrap-extension.min.js"/>"></script>
<script src="<c:url value="/admin-resources/plugins/bower_components/sidebar-nav/dist/sidebar-nav.min.js"/>"></script>
<script src="<c:url value="/admin-resources/js/jquery.slimscroll.js"/>"></script>
<script src="<c:url value="/admin-resources/js/waves.js"/>"></script>
<script src="<c:url value="/admin-resources/js/custom.min.js"/>"></script>
<script src="<c:url value="/admin-resources/plugins/bower_components/datatables/jquery.dataTables.min.js"/>"></script>
<script>
    $(document).ready(function () {
        $('#myTable').DataTable();
    });
</script>
<script src="<c:url value="/admin-resources/plugins/bower_components/styleswitcher/jQuery.style.switcher.js"/>"></script>
</body>
</html>