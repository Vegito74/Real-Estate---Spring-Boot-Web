<%--
  Created by IntelliJ IDEA.
  User: Trọng Nguyễn
  Date: 11/6/2024
  Time: 7:09 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/common/taglib.jsp" %>
<c:url var="buildingListURL" value="/admin/building-view"/>




<!-- ============================================================== -->
<!-- Preloader - style you can find in spinners.css -->
<!-- ============================================================== -->

<!-- ============================================================== -->
<!-- Main wrapper - style you can find in pages.scss -->
<!-- ============================================================== -->

    <!-- ============================================================== -->
    <!-- Topbar header - style you can find in pages.scss -->
    <!-- ============================================================== -->

    <!-- ============================================================== -->
    <!-- End Topbar header -->
    <!-- ============================================================== -->
    <!-- ============================================================== -->
    <!-- Left Sidebar - style you can find in sidebar.scss  -->
    <!-- ============================================================== -->

    <!-- ============================================================== -->
    <!-- End Left Sidebar - style you can find in sidebar.scss  -->
    <!-- ============================================================== -->
    <!-- ============================================================== -->
    <!-- Page wrapper  -->
    <!-- ============================================================== -->
    <div class="page-wrapper">
        <!-- ============================================================== -->
        <!-- Bread crumb and right sidebar toggle -->
        <!-- ============================================================== -->
        <div class="page-breadcrumb">
            <div class="row">
                <div class="col-5 align-self-center">
                    <h4 class="page-title">Dashboard</h4>
                </div>
                <div class="col-7 align-self-center">
                    <div class="d-flex align-items-center justify-content-end">
                        <nav aria-label="breadcrumb">
                            <ol class="breadcrumb">
                                <li class="breadcrumb-item">
                                    <a href="#">Home</a>
                                </li>
                                <li class="breadcrumb-item active" aria-current="page">Dashboard</li>
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
                        <div class="card-header bg-primary">
                            <h4 class="m-b-0 text-white">Building Info</h4>
                        </div>
                        <form:form modelAttribute="modelSearch"  id="listFrom" action="${buildingListURL}" method="GET">
                            <div class="card-body">
                                <h4 class="card-title">Danh mục tìm kiếm</h4>
                            </div>
                            <hr>
                            <div class="form-body">
                                <div class="card-body">
                                    <div class="row ">
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label class="control-label"> Tên tòa nhà</label>
                                                        <form:input path="name" type="text" id="name" name="name" class="form-control"/>
                                                <small class="form-control-feedback"> This is inline help </small>
                                            </div>
                                        </div>
                                        <!--/span-->
                                        <div class="col-md-6">
                                            <div class="form-group has-danger">
                                                <label class="control-label">Diện tích sàn</label>
                                                <form:input type="number" id="floorArea" name="floorArea"
                                                       class="form-control form-control-danger" path="floorArea"/>
                                                <small class="form-control-feedback"> This field has error. </small>
                                            </div>
                                        </div>
                                        <!--/span-->
                                    </div>
                                    <!--/row-->
                                    <div class="row">
                                        <div class="col-md-2">
                                            <div class="form-group has-danger">
                                                <label class="control-label">Quận hiện có</label>
                                                <form:select path="district" id="districtId" name="districtCode"
                                                        class="form-control custom-select"
                                                        data-placeholder="Choose a Category" tabindex="1">
                                                    <form:option value="QUAN_1">-- Chọn Quận --</form:option>
                                                    <form:options items="${districts}"/>

                                                </form:select>
                                            </div>
                                        </div>
                                        <div class="col-md-5">
                                            <div class="form-group has-danger">
                                                <label class="control-label">Phường</label>
                                                <input type="text" id="ward" name="ward"
                                                       class="form-control form-control-danger" value="${modelSearch.ward}">
                                            </div>
                                        </div>
                                        <div class="col-md-5">
                                            <div class="form-group has-danger">
                                                <label class="control-label">Đường</label>
                                                <input type="text" id="street" name="street"
                                                       class="form-control form-control-danger"value="${modelSearch.street}">
                                            </div>
                                        </div>
                                    </div>
                                    <!--/row-->

                                    <!--/row-->
                                    <div class="row">
                                        <div class="col-md-4">
                                            <div class="form-group has-danger">
                                                <label class="control-label">Số tầng hầm</label>
                                                <input type="number" id="numberOfBasement" name="numberOfBasement"
                                                       class="form-control form-control-danger" value="${modelSearch.numberOfBasement}">
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="form-group has-danger">
                                                <label class="control-label">Hướng</label>
                                                <input type="text" id="direction" name="direction"
                                                       class="form-control form-control-danger" value="${modelSearch.direction}">
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="form-group has-danger">
                                                <label class="control-label">Hạng</label>
                                                <input type="number" id="level" name="level"
                                                       class="form-control form-control-danger" value="${modelSearch.level}">
                                            </div>
                                        </div>
                                    </div>
                                    <!--/row-->
                                    <!--/row-->
                                    <div class="row">
                                        <div class="col-md-3">
                                            <div class="form-group has-danger">
                                                <label class="control-label">Diện tích từ</label>
                                                <input type="number" id="areaFrom" name="areaFrom"
                                                       class="form-control form-control-danger" value="${modelSearch.areaFrom}">
                                            </div>
                                        </div>
                                        <div class="col-md-3">
                                            <div class="form-group has-danger">
                                                <label class="control-label">Diện tích đến</label>
                                                <input type="number" id="areaTo" name="areaTo"
                                                       class="form-control form-control-danger" value="${modelSearch.areaTo}">
                                            </div>
                                        </div>
                                        <div class="col-md-3">
                                            <div class="form-group has-danger">
                                                <label class="control-label">Giá thuê từ</label>
                                                <input type="number" id="rentPriceFrom" name="rentPriceFrom"
                                                       class="form-control form-control-danger" value="${modelSearch.rentPriceFrom}">
                                            </div>
                                        </div>
                                        <div class="col-md-3">
                                            <div class="form-group has-danger">
                                                <label class="control-label">Giá thuê đến</label>
                                                <input type="number" id="rentPriceTo" name="rentPriceTo"
                                                       class="form-control form-control-danger" value="${modelSearch.rentPriceTo}">
                                            </div>
                                        </div>
                                    </div>
                                    <!--/row-->
                                    <div class="row">
                                        <div class="col-md-4">
                                            <div class="form-group has-danger">
                                                <label class="control-label">Tên quản lý</label>
                                                <input type="text" id="managerName" name="managerName"
                                                       class="form-control form-control-danger" value="${modelSearch.managerName}">
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="form-group has-danger">
                                                <label class="control-label">SĐT quản lý</label>
                                                <input type="text" id="managerPhoneNumber" name="managerPhoneNumber"
                                                       class="form-control form-control-danger" value="${modelSearch.managerPhone}">
                                            </div>
                                        </div>

                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label class="control-label">Nhân viên</label>
                                                <form:select path="staffId" class="form-control custom-select"
                                                        data-placeholder="Choose a Category" tabindex="1">
                                                    <option value="">--Chọn Nhân Viên--</option>
                                                    <form:options items="${listStaff}"/>

                                                </form:select>
                                            </div>
                                        </div>
                                        <!--/span-->

                                    </div>
                                    <!--/row-->
                                    <div class="row">
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label
                                                        class="control-label custom-cursor-default-hover">Kiểu tòa nhà</label>
                                                <fieldset class="checkbox">
                                                   <form:checkboxes items="${types}" path="typeCode"/>
                                                </fieldset>
                                            </div>
                                        </div>
                                        <!--/span-->
                                    </div>
                                    <div class="row d-flex justify-content-center">

                                        <button id="btnSearchBuilding" type="button"
                                                class="btn btn-success ms-auto">
                                            <i class="fas fa-search"></i>
                                            Tìm kiếm
                                        </button>


                                    </div>
                                </div>

                                <hr>

                            </div>
                        </form:form>

                    </div>
                    <!-- Multiple table control element -->
                    <div class="row">
                        <div class="col-12">
                            <div class="card">
                                <div class="card-body">
                                <div class="row">
                                    <h4 class="card-title col-lg-6">Danh sách Building</h4>
                                    <div class="col-lg-6 d-flex justify-content-end">
                                    <a type="button" class="btn btn-primary" id="addBuilding" href="/admin/building-edit"><i class="fa fa-building"></i> Add New</a>
    </div>
    </div>
                                    <h6 class="card-subtitle">Bảng danh sách thông tin chính của các tòa nhà hiện có
                                    </h6>
                                    <div class="table-responsive" style="font-family:'Times New Roman'">
                                        <table id="multi_control" class="table table-striped table-bordered display"
                                               style="width:100%">
                                            <thead>
                                            <tr role="row" >
                                                <th>Tên tòa nhà</th>
                                                <th>Địa chỉ</th>
                                                <th>Số tầng hầm</th>
                                                <th>Tên quản lý</th>
                                                <th>Số điện thoại</th>
                                                <th>DT sàn</th>
                                                <th>DT thuê</th>
                                                <th>DT trống</th>
                                                <th>Giá thuê</th>
                                                <th>Phí môi giới</th>
                                                <th>Phí dịch vụ</th>
                                                <th>Action</th>
                                            </tr>
                                            </thead>
                                            <tbody>
                                            <c:forEach var="item" items="${buildingSearchResponseList}">
 <tr>
                                                <td>${item.name}</td>
                                                <td>${item.address}</td>
                                                <td>${item.numberOfBasement}</td>
                                                <td>${item.managerName}</td>

                                                <td>${item.managerPhone}</td>
                                                <td>${item.floorArea}</td>
                                                <td>${item.rentArea}</td>
                                                <td>${item.emptyArea}</td>
                                                <td>${item.rentPrice}</td>
                                                <td>${item.brokerageFee}</td>
                                                <td>${item.serviceFee}</td>
                                                <td class="">
                                                    <div class="row d-flex justify-content-center">
                                                        <button type="button"
                                                                class="btn btn-info dropdown-toggle "
                                                                data-toggle="dropdown" aria-haspopup="true"
                                                                aria-expanded="false">
                                                            <i class="ti-settings"> Action</i>
                                                        </button>
                                                        <div class="dropdown-menu ">
                                                            <a class="dropdown-item"
                                                               href="/admin/building-edit-${item.id}">Edit</a>
                                                            <a id="" onclick="deleteBuilding(5)" class="dropdown-item"
                                                               href="javascript:void(0)">Delete</a>
                                                            <div class="dropdown-divider"></div>
                                                            <a type="button" class="dropdown-item btn"
                                                               data-toggle="modal"
                                                               data-target="#assignmentBuildingModal"
                                                               data-whatever="@getbootstrap"
                                                               onclick="assignmentbuilding(1)">Thêm nhân viên
                                                                quản lý</a>
                                                        </div>
                                                    </div>


                                                </td>

                                            </tr>
                                                </c:forEach>









                                            </tbody>
                                            <tfoot>
                                            <tr>

                                                <th>Tên tòa nhà</th>
                                                <th>Địa chỉ</th>
                                                <th>Số tầng hầm</th>
                                                <th>Tên quản lý</th>
                                                <th>Số điện thoại</th>
                                                <th>DT sàn</th>
                                                <th>DT thuê</th>
                                                <th>DT trống</th>
                                                <th>Phí môi giới</th>
                                                <th>Phí môi giới</th>
                                                <th>Action</th>
                                                <td class="">
                                                    <div class="row d-flex justify-content-center">
                                                        <button type="button"
                                                                class="btn btn-info dropdown-toggle "
                                                                data-toggle="dropdown" aria-haspopup="true"
                                                                aria-expanded="false">
                                                            <i class="ti-settings"> Action</i>
                                                        </button>
                                                        <div class="dropdown-menu ">
                                                            <a class="dropdown-item"
                                                               href="javascript:void(0)">Edit</a>
                                                            <a  class="dropdown-item"
                                                               href="">Delete</a>
                                                            <div class="dropdown-divider"></div>
                                                            <a type="button" class="dropdown-item btn"
                                                               data-toggle="modal"
                                                               data-target="#assignmentBuildingModal"
                                                               data-whatever="@getbootstrap"
                                                               onclick="assignmentbuilding(1)">Thêm nhân viên
                                                                quản lý</a>
                                                        </div>
                                                    </div>


                                                </td>
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
<!-- End Container fluid  -->
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
                <form>
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
                    <input type="hidden" id="buildingId" name="buildingId" value="3487">
                    <table class="table " id="staffList">
                        <thead class="bg-success text-white align-items-center">
                        <tr class="text-center">

                            <th>Chọn</th>
                            <th>Tên Nhân Viên</th>

                        </tr>
                        </thead>
                        <tbody class="border border-success text-center">
                        <tr>
                            <td>
                                <input type="checkbox" class="" id="checkbox1" value="1" checked>
                            </td>
                            <td> Nguyễn Văn Trọng</td>
                        </tr>
                        <tr>

                            <td>
                                <input type="checkbox" class="" value="1">
                            </td>
                            <td>Nguyễn Tiến Duy</td>
                        </tr>
                        <tr>

                            <td>
                                <input type="checkbox" class="" value="1">
                            </td>
                            <td>Nguyễn Trung Đức</td>
                        </tr>
                        </tbody>
                    </table>
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                <button id="btnAssignmentBuilding" type="button" class="btn btn-primary">Thêm</button>
            </div>
        </div>
    </div>
</div>


<script>
    // Hiển thị from nhân viên
    function assignmentbuilding(buildingId) {
        $('#assignmentBuildingModal').modal();
        $('#buildingId').val();
    }

    $('#btnAssignmentBuilding').click(function (e) {
        e.preventDefault();
        var data = {};
        data['buildingId'] = $('#buildingId').val();
        var staffs = $('#staffList').find('tbody input[type = checkbox]:checked').map(function () {
            return $(this).val();
        }).get();
        data['staffs'] = staffs;
        console.log("OK");
    });

    $('#btnSearchBuilding').click(function (e) {
        e.preventDefault();
        $('#listFrom').submit();
    });

      function deleteBuilding(id) {
          var buildingId = [id];
          deleteBuildings(buildingId);
    }

    function deleteBuildings(data) {
        $.ajax({
            type: "DELETE",
            url: "/api/building/" + data,
            data: JSON.stringify(data),
            contentType: "application/JSON",
            dataType: "JSON",
            success: function (respond) {
                console.log("Success!");
            },
            error: function (respond) {
                console.log("Failed!");
                console.log(respond);
            }

        });
    }
</script>
