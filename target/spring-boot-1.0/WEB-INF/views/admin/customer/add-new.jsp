<%--
  Created by IntelliJ IDEA.
  User: baruk
  Date: 12/2/2024
  Time: 1:17 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/common/taglib.jsp" %>
<c:url var="buildingAPI" value="/api/building"/>
<html>
<head>
    <title>Title</title>
</head>
<body>
<!-- Page wrapper -->
<!-- ============================================================== -->
<div class="page-wrapper">
    <!-- ============================================================== -->
    <!-- Bread crumb and right sidebar toggle -->
    <!-- ============================================================== -->
    <div class="page-breadcrumb">
        <div class="row">
            <div class="col-5 align-self-center">
                <h4 class="page-title">Add New Customer</h4>
            </div>
            <div class="col-7 align-self-center">
                <div class="d-flex align-items-center justify-content-end">
                    <nav aria-label="breadcrumb">
                        <ol class="breadcrumb">
                            <li class="breadcrumb-item">
                                <a href="#">Home</a>
                            </li>
                            <li class="breadcrumb-item active" aria-current="page">Add New Customer</li>
                        </ol>
                    </nav>
                </div>
            </div>
        </div>
    </div>
    <!-- ============================================================== -->
    <!-- End Bread crumb and right sidebar toggle -->
    <!-- ============================================================== -->
    <!-- ============================================================== -->
    <!-- Container fluid  -->
    <!-- ============================================================== -->
    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-12">
                <div class="card">
                    <div class="card-header bg-dark">
                        <h4 class="m-b-0 text-white">#Customer Info</h4>
                    </div>
                    <form:form modelAttribute="customer" id="form-add" method="GET">
                        <!-- Dòng 1-->
                        <div class="form-body">

                            <div class="card-body">
                                <div class="row ">
                                    <div class="col-md-3"></div>
                                    <div class="col-md-2">
                                        <div class="form-group text-right">
                                            <label class="control-label">Customer Name:</label>
                                        </div>
                                    </div>
                                    <!--/span-->
                                    <div class="col-md-4">
                                        <div class="form-group has-danger">
                                            <input type="text" id="fullName" name="fullName"
                                                   class="form-control form-control-danger"/>
                                        </div>
                                    </div>
                                    <div class="col-md-3"></div>
                                </div>
                                <div class="row ">
                                    <div class="col-md-3"></div>
                                    <div class="col-md-2">
                                        <div class="form-group  text-right">
                                            <label class="control-label">Phone Number:</label>
                                        </div>
                                    </div>
                                    <!--/span-->
                                    <div class="col-md-4">
                                        <div class="form-group has-danger">
                                            <input type="text" id="phone" name="phone"
                                                   class="form-control form-control-danger"/>
                                        </div>
                                    </div>
                                    <div class="col-md-3"></div>
                                </div>
                                <div class="row ">
                                    <div class="col-md-3"></div>
                                    <div class="col-md-2">
                                        <div class="form-group  text-right">
                                            <label class="control-label">Email:</label>
                                        </div>
                                    </div>
                                    <!--/span-->
                                    <div class="col-md-4">
                                        <div class="form-group has-danger">
                                            <input type="email" id="email" name="email"
                                                   class="form-control form-control-danger"/>
                                        </div>
                                    </div>
                                    <div class="col-md-3"></div>
                                </div>
                                <div class="row ">
                                    <div class="col-md-3"></div>
                                    <div class="col-md-2">
                                        <div class="form-group text-right">
                                            <label class="control-label"> Company Name:</label>
                                        </div>
                                    </div>
                                    <!--/span-->
                                    <div class="col-md-4">
                                        <div class="form-group has-danger">
                                            <input type="text" id="companyName" name="companyName"
                                                   class="form-control form-control-danger"/>
                                        </div>
                                    </div>
                                    <div class="col-md-3"></div>
                                </div>
                                <div class="row ">
                                    <div class="col-md-3"></div>
                                    <div class="col-md-2">
                                        <div class="form-group text-right">
                                            <label class="control-label"> Demand:</label>
                                        </div>
                                    </div>
                                    <!--/span-->
                                    <div class="col-md-4">
                                        <div class="form-group has-danger">
                                            <input type="text" id="demand" name="demand"
                                                   class="form-control form-control-danger"/>
                                        </div>
                                    </div>
                                    <div class="col-md-3"></div>
                                </div>
                                <div class="row ">
                                    <div class="col-md-3"></div>
                                    <div class="col-md-2">
                                        <div class="form-group text-right">
                                            <label class="control-label"> Status:</label>
                                        </div>
                                    </div>
                                    <!--/span-->
                                    <div class="col-md-4">
                                        <div class="form-group has-danger">
                                            <form:select path="status" id="status" name="status" class="form-control custom-select">
                                                <form:option value="CHUA_XU_LY">--Chọn Trạng Thái--</form:option>
                                                <form:options items="${transactionStatus}"/>
                                            </form:select>
                                        </div>
                                    </div>
                                    <div class="col-md-3"></div>
                                </div>

                                <div class="row  d-flex justify-content-center">
                                    <button id="btnAddCustomer" type="button"
                                            class="btn btn-success ms-auto">
                                        <i class="m-r-10 m-l-40 mdi mdi-content-save"></i>
                                        Add Customer
                                    </button>

                                    <button id="btnCancel" type="button" class="  btn btn-info ms-auto"
                                            style="margin-left: 5px">
                                        <i class="mdi mdi-backspace"></i>
                                        Hủy thao tác
                                    </button>
                                </div>
                            </div>


                        </div>
                    </form:form>

                </div>


            </div>
        </div>
    </div>
</div>

<script>
 $('#btnCancel').click(function () {
        window.location.href = '<c:url value ="/admin/customer-list"/>'; //Quay về trang list
    });

    $('#btnAddCustomer').click(function () {

        var data = {};
        var formData = $('#form-add').serializeArray();


        $.each(formData, function (index, value) {
            data["" + value.name + ""] = value.value;
        });
        editCustomer(data);

    });




    function editCustomer(data) {
        //Call api
        $.ajax({
            type: "PUT",
            url: "/api/customer",
            data: JSON.stringify(data),
            contentType: "application/JSON",
            //dataType: "JSON",
            success: function () {
                window.location.href = '<c:url value="/admin/customer-list?message=success"/>';
            },
            error: function () {
            }

        });
    }
</script>
</body>
</html>
