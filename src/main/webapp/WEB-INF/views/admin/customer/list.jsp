<%--
  Created by IntelliJ IDEA.
  User: baruk
  Date: 12/2/2024
  Time: 11:39 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/common/taglib.jsp" %>
<c:url var="customerListURL" value="/admin/admin/customer-list"/>
<c:url var="buildingAPI" value="/api/building"/>
<html>
<head>
    <title>Title</title>
</head>
<body>
<div class="page-wrapper">
    <!-- ============================================================== -->
    <!-- Bread crumb and right sidebar toggle -->
    <!-- ============================================================== -->
    <div class="page-breadcrumb">
        <div class="row">
            <div class="col-5 align-self-center">
                <h4 class="page-title">Quản lý Khách hàng</h4>
            </div>
            <div class="col-7 align-self-center">
                <div class="d-flex align-items-center justify-content-end">
                    <nav aria-label="breadcrumb">
                        <ol class="breadcrumb">
                            <li class="breadcrumb-item">
                                <a href="#">Home</a>
                            </li>
                            <li class="breadcrumb-item active" aria-current="page">Quản lý Khách hàng</li>
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
                        <h4 class="m-b-0 text-white">Danh mục tìm kiếm</h4>
                    </div>
                    <form:form modelAttribute="customer" id="listFrom" action="${customerDTOList}" method="GET">

                        <div class="form-body" style="font-size: small">
                            <div class="card-body">
                                <div class="row ">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label class="control-label">Tên Khách hàng</label>
                                            <form:input path="name" type="text" id="name" name="name"
                                                        class="form-control"/>
                                        </div>
                                    </div>
                                    <!--/span-->
                                    <div class="col-md-6">
                                        <div class="form-group has-danger">
                                            <label class="control-label">Số Điện thoại</label>
                                            <form:input type="number" id="customerPhone" name="customerPhone"
                                                        class="form-control form-control-danger" path="customerPhone"/>
                                        </div>
                                    </div>
                                    <!--/span-->
                                </div>


                                <!--/row-->
                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="form-group has-danger">
                                            <label class="control-label">Email</label>
                                            <form:input type="email" id="email" name="email"
                                                        class="form-control form-control-danger" path="email"/>
                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <div class="form-group has-danger">
                                            <label class="control-label">Diện tích đến</label>
                                            <form:select path="managementStaff" class="form-control custom-select"
                                                         data-placeholder="Choose a Category" tabindex="1">
                                                <option value="">--Chọn Nhân Viên--</option>
                                                <form:options items="${listStaff}"/>
                                            </form:select>
                                        </div>
                                    </div>

                                </div>

                                <div class="row d-flex justify-content-center">

                                    <button id="btnSearchBuilding" type="button"
                                            class="btn btn-success ms-auto">
                                        <i class="fas fa-search"></i>
                                        Tìm kiếm
                                    </button>


                                </div>
                            </div>


                        </div>
                    </form:form>

                </div>
                <!-- Multiple table control element -->
                <div class="row">
                    <div class="col-12">
                        <div class="card">
                            <div class="card-body">
                                <div class="row">
                                    <h4 class="card-title col-lg-6">Danh sách Customer</h4>
                                    <div class="col-lg-6 d-flex justify-content-end">
                                        <a type="button" class="btn btn-dark" id="addBuilding"
                                           href="/admin/building-edit"><i class="fa fa-bookmark"></i>  Add New</a>
                                    </div>
                                </div>
                                <h6 class="card-subtitle">Bảng danh sách thông tin các khách hàng
                                </h6>
                                <div class="table-responsive" style="font-family:'Times New Roman'">
                                    <table id="multi_control" class="table table-striped table-bordered display"
                                           style="width:100%">
                                        <thead style="font-size: medium">
                                        <tr role="row">
                                            <th>Customer Name</th>
                                            <th>Phone Number</th>
                                            <th>Email</th>
                                            <th>Deman</th>
                                            <th>Created By</th>
                                            <th>Created Date</th>
                                            <th>Status</th>
                                            <th>Action</th>


                                        </tr>
                                        </thead>
                                        <tbody style="font-size: smaller">
                                        <c:forEach var="item" items="${customerDTOList}">
                                            <tr id="row_${item.id}">
                                                <td>${item.name}</td>
                                                <td>${item.customerPhone}</td>
                                                <td>${item.email}</td>
                                                <td>${item.demand}</td>

                                                <td>${item.createdBy}</td>
                                                <td>${item.createdDate}</td>
                                                <td>${item.status}</td>

                                                <td class="">
                                                    <div class="row d-flex justify-content-center">
                                                        <a type="button" href="/admin/customer-edit"
                                                                class="btn btn-dark dropdown-toggle "
                                                            <i class="ti-settings"> Management</i>
                                                        </a>
                                                    </div>


                                                </td>

                                            </tr>
                                        </c:forEach>


                                        </tbody>
                                        <tfoot>
                                        <tr>
 <th>Customer Name</th>
                                            <th>Phone Number</th>
                                            <th>Email</th>
                                            <th>Deman</th>
                                            <th>Created By</th>
                                            <th>Created Date</th>
                                            <th>Status</th>
                                            <th>Action</th>
                                        </tr>
                                        </tfoot>

                                    </table>

                                </div>
                            </div>
                        </div>
                    </div>
                </div>


            </div>
        </div>
    </div>

</div>


<!-- ============================================================== -->
<!-- End Container fluid -->
<!-- ============================================================== -->

<!-- ============================================================== -->
<!-- All Jquery -->

<div class="modal fade" id="assignmentBuildingModal">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title" id="exampleModalLabel1">Thêm nhân viên quản lý cho tòa nhà</h4>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
                        aria-hidden="true">&times;</span></button>
            </div>
            <div class="modal-body">

                <div class="form-group">
                    <label for="recipient-name" class="control-label">Nhân viên:</label>
                    <select name="staffId" class="form-contưrol custom-select"
                            data-placeholder="Choose a Category" tabindex="1">
                        <option value="Category 1">-- Chọn Nhân viên --</option>
                        <option value="Category 2">Nguyễn Văn Trọng</option>
                        <option value="Category 3">Nguyễn Tiến Duy</option>
                        <option value="Category 4">Nguyễn Trung Đức</option>
                    </select>
                </div>
                <input type="hidden" id="buildingId" value="1">
                <table class="table " id="staffList">
                    <thead class="bg-success text-white align-items-center">
                    <tr class="text-center">

                        <th>Chọn</th>
                        <th>Tên Nhân Viên</th>

                    </tr>
                    </thead>
                    <tbody class="border border-success text-center">

                    </tbody>
                </table>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                    <button id="btnAssignmentBuilding" type="button" class="btn btn-primary">Thêm</button>
                </div>

            </div>

        </div>
    </div>
</div>

<script>

    // Hiển thị from nhân viên
    function assignmentbuilding(buildingId) {
        $('#assignmentBuildingModal').modal();
        $('#buildingId').val(buildingId);//set giá trị cho input hidden của danh sách giao nhân viên
        loadStaff(buildingId);
    }
</script>
</body>
</html>
