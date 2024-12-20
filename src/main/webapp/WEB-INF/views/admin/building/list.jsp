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
<c:url var="buildingAPI" value="/api/building"/>


<!-- Page wrapper -->
<!-- ============================================================== -->
<div class="page-wrapper">
    <!-- ============================================================== -->
    <!-- Bread crumb and right sidebar toggle -->
    <!-- ============================================================== -->
    <div class="page-breadcrumb">
        <div class="row">
            <div class="col-5 align-self-center">
                <h4 class="page-title">Quản lý Building</h4>
            </div>
            <div class="col-7 align-self-center">
                <div class="d-flex align-items-center justify-content-end">
                    <nav aria-label="breadcrumb">
                        <ol class="breadcrumb">
                            <li class="breadcrumb-item">
                                <a href="#">Home</a>
                            </li>
                            <li class="breadcrumb-item active" aria-current="page">Quản lý Building</li>
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
                    <form:form modelAttribute="modelSearch" id="listFrom" action="${buildingListURL}" method="GET">

                        <div class="form-body" style="font-size: small">
                            <div class="card-body">
                                <div class="row ">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label class="control-label"> Tên tòa nhà</label>
                                            <form:input path="name" type="text" id="name" name="name"
                                                        class="form-control"/>
                                        </div>
                                    </div>
                                    <!--/span-->
                                    <div class="col-md-6">
                                        <div class="form-group has-danger">
                                            <label class="control-label">Diện tích sàn</label>
                                            <form:input type="number" id="floorArea" name="floorArea"
                                                        class="form-control form-control-danger" path="floorArea"/>
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
                                                <form:option value="">-- Chọn Quận --</form:option>
                                                <form:options items="${districts}"/>
                                            </form:select>
                                        </div>
                                    </div>
                                    <div class="col-md-5">
                                        <div class="form-group has-danger">
                                            <label class="control-label">Phường</label>
                                            <form:input type="text" id="ward" name="ward"
                                                        class="form-control form-control-danger" path="ward"/>
                                        </div>
                                    </div>
                                    <div class="col-md-5">
                                        <div class="form-group has-danger">
                                            <label class="control-label">Đường</label>
                                            <form:input type="text" id="street" name="street"
                                                        class="form-control form-control-danger" path="street"/>
                                        </div>
                                    </div>
                                </div>
                                <!--/row-->
                                <!--/row-->
                                <div class="row">
                                    <div class="col-md-4">
                                        <div class="form-group has-danger">
                                            <label class="control-label">Số tầng hầm</label>
                                            <form:input type="number" id="numberOfBasement" name="numberOfBasement"
                                                        class="form-control form-control-danger"
                                                        path="numberOfBasement"/>
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="form-group has-danger">
                                            <label class="control-label">Hướng</label>
                                            <form:input type="text" id="direction" name="direction"
                                                        class="form-control form-control-danger" path="direction"/>
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="form-group has-danger">
                                            <label class="control-label">Hạng</label>
                                            <form:input type="number" id="level" name="level"
                                                        class="form-control form-control-danger" path="level"/>
                                        </div>
                                    </div>
                                </div>
                                <!--/row-->
                                <!--/row-->
                                <div class="row">
                                    <div class="col-md-3">
                                        <div class="form-group has-danger">
                                            <label class="control-label">Diện tích từ</label>
                                            <form:input type="number" id="areaFrom" name="areaFrom"
                                                        class="form-control form-control-danger" path="areaFrom"/>
                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <div class="form-group has-danger">
                                            <label class="control-label">Diện tích đến</label>
                                            <form:input type="number" id="areaTo" name="areaTo"
                                                        class="form-control form-control-danger" path="areaTo"/>
                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <div class="form-group has-danger">
                                            <label class="control-label">Giá thuê từ</label>
                                            <form:input type="number" id="rentPriceFrom" name="rentPriceFrom"
                                                        class="form-control form-control-danger" path="rentPriceFrom"/>
                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <div class="form-group has-danger">
                                            <label class="control-label">Giá thuê đến</label>
                                            <form:input type="number" id="rentPriceTo" name="rentPriceTo"
                                                        class="form-control form-control-danger" path="rentPriceTo"/>
                                        </div>
                                    </div>
                                </div>
                                <!--/row-->
                                <div class="row">
                                    <div class="col-md-4">
                                        <div class="form-group has-danger">
                                            <label class="control-label">Tên quản lý</label>
                                            <form:input type="number" id="managerName" name="managerName"
                                                        class="form-control form-control-danger" path="managerName"/>
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="form-group has-danger">
                                            <label class="control-label">SĐT quản lý</label>
                                            <form:input type="number" id="managerPhone" name="managerPhone"
                                                        class="form-control form-control-danger" path="managerPhone"/>
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
                                                    class="control-label custom-cursor-default-hover">Kiểu tòa
                                                nhà</label>
                                            <fieldset class="checkbox">
                                                <form:checkboxes items="${types}" path="typeCode"/>
                                            </fieldset>
                                        </div>
                                    </div>
                                    <!--/span-->
                                </div>
                                <div class="row d-flex justify-content-center">

                                    <button id="btnSearchBuilding" type="button"
                                            class="btn btn-dark ms-auto">
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
                                    <h4 class="card-title col-lg-6">Danh sách Building</h4>
                                    <div class="col-lg-6 d-flex justify-content-end">
                                        <a type="button" class="btn btn-dark" id="addBuilding"
                                           href="/admin/building-edit"><i class="fa fa-building"></i> Add New</a>
                                    </div>
                                </div>
                                <h6 class="card-subtitle">Bảng danh sách thông tin chính của các tòa nhà hiện có
                                </h6>
                                <div class="table-responsive" style="font-family:'Times New Roman'">
                                    <table id="multi_control" class="v-middle  table table-striped table-bordered display "
                                           style="width:100%">
                                        <thead class="bg-success text-white"  style="font-size: medium">
                                        <tr role="row">
                                            <th>Tên tòa nhà</th>
                                            <th>Địa chỉ</th>
                                            <th>Hướng</th>
                                            <th>Số tầng</th>
                                            <th>Số tầng hầm</th>
                                            <th>DT sàn</th>
                                            <th>DT trống</th>
                                            <th>Giá thuê</th>
                                            <th>Mô tả giá</th>
                                            <th>Action</th>
                                        </tr>
                                        </thead>
                                        <tbody style="font-size: smaller">
                                        <c:forEach var="item" items="${buildingSearchResponses}">
                                            <tr id="row_${item.id}">
                                                <td>${item.name}</td>
                                                <td>${item.address}</td>
                                                <td>${item.direction}</td>
                                                <td class="text-center ">${item.level}</td>
                                                <td>${item.numberOfBasement}</td>
                                                <td>${item.floorArea}</td>
                                                <td> <span class="label label-success label-rounded font-normal">${item.emptyArea}</span></td>
                                                <td>${item.rentPrice}</td>
                                                <td>${item.rentPriceDescription}</td>
                                                <td class="">
                                                    <div class="row d-flex justify-content-center">
                                                        <button type="button"
                                                                class="btn btn-dark dropdown-toggle "
                                                                data-toggle="dropdown" aria-haspopup="true"
                                                                aria-expanded="false">
                                                            <i class="ti-settings"> Action</i>
                                                        </button>
                                                        <div class="dropdown-menu ">
                                                            <a class="dropdown-item"

                                                               href="/admin/building-edit-${item.id}"><i   style="margin-left: 50px"
                                                                    class="fas fa-edit"></i> Edit</a>
                                                            <a id="" onclick="deleteBuilding(${item.id})"

                                                               class="dropdown-item "
                                                            ><i  style="margin-left: 50px" class="fas fa-trash-alt"></i> Delete</a>
                                                            <div class="dropdown-divider"></div>
                                                            <a type="button" class="dropdown-item btn"
                                                               data-toggle="modal"
                                                               data-target="#assignmentBuildingModal"
                                                               data-whatever="@getbootstrap"
                                                               onclick="assignmentbuilding(${item.id})"><i
                                                                    class="far fa-address-card "></i> Thêm nhân viên
                                                                quản lý</a>
                                                        </div>
                                                         <div class="col-lg-4 d-flex justify-content-center ">
                                                                    <a type="button" href="/admin/rent-area-${item.id}"
                                                                       class="btn btn-success "
                                                                       data-toggle="tooltip" data-placement="top"
                                                                       data-original-title="Quản lý diện tích thuê!">
                                                                        <i class="fas fa-list text-white" style="margin-top: 2px"> </i>
                                                                    </a></div>
                                                    </div>



                                                </td>

                                            </tr>
                                        </c:forEach>


                                        </tbody>
                                        <tfoot class="bg-success text-white">
                                        <tr>

                                            <th>Tên tòa nhà</th>
                                            <th>Địa chỉ</th>
                                            <th>Hướng</th>
                                            <th>Số tầng</th>
                                            <th>Số tầng hầm</th>
                                            <th>DT sàn</th>
                                            <th>DT trống</th>
                                            <th>Giá thuê</th>
                                            <th>Mô tả giá</th>
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
                    <label class="control-label">Nhân viên:</label>
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

    // load danh sách nhân viên
    function loadStaff(buildingId) {
        $.ajax({
            type: "GET",
            url: "/api/building/" + buildingId + "/staffs",
            //data: JSON.stringify(buildingId),
            //contentType: "application/JSON",
            dataType: "JSON",
            success: function (response) {
                var row = '';
                $.each(response.data, function (index, item) {
                    row += '<tr>';
                    row += '<td class="text-center"><input type="checkbox" value=' + item.staffId + ' id="checkbox_' + item.staffId + '" ' + item.checked + '></td>';
                    row += '<td class ="text-center">' + item.fullName + '</td>';
                    row += '</tr>';
                });
                $('#staffList tbody').html(row)
                console.info("Success!");
            },
            error: function (response) {
                console.log("Failed!");
                window.location.href = '<c:url value="/admin/building-view?message=error"/>';
                console.log(response);
            }

        });
    }

    // click button Giao tòa nhà cho nv
    $('#btnAssignmentBuilding').click(function (e) {
        e.preventDefault();
        var data = {};
        data['buildingId'] = $('#buildingId').val();
        var staffs = $('#staffList').find('tbody input[type = checkbox]:checked').map(function () {
            return $(this).val();
        }).get();
        data['staffs'] = staffs;
        if (data['staffs'] != '') {
            assignment(data);
        }
        console.log("OK");
    });

    // ajax call api Giao toà nhà cho nhân viên
    function assignment(data) {
        $.ajax({
            type: "PUT",
            url: "${buildingAPI}/assignment",
            data: JSON.stringify(data),
            contentType: "application/JSON",
            dataType: "JSON",
            success: function (response) {
                toastr.success("Giao tòa nhà cho nhân viên thành công.", "Success!");
                $('#assignmentBuildingModal').modal('hide');
            },
            error: function (response) {
                console.info("Giao không thành công");
                console.log(response);
            }

        });
    }

    $('#btnSearchBuilding').click(function (e) {
        e.preventDefault();
        $('#listFrom').submit();
    });

    function deleteBuilding(id) {

        var buildingId = [id];
        var row = $("#row_" + id);
        deleteBuildings(buildingId, row);
    }

    function deleteBuildings(buildingId, row) {//Xóa tòa nhà
        $.ajax({
            type: "DELETE",
            url: "${buildingAPI}/" + buildingId,
            data: JSON.stringify(buildingId),
            contentType: "application/JSON",
            dataType: "JSON",

            success: function (respond) {
                console.log("Success!");
                $('#multi_control').DataTable().row(row).remove().draw();
                toastr.success('Xóa tòa nhà thành công!', 'Success');
            },
            error: function (respond) {
                console.log("Failed!");
                console.log(respond);

            }

        });
    }
</script>
