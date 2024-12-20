<%--
  Created by IntelliJ IDEA.
  User: Trọng Nguyễn
  Date: 12/18/2024
  Time: 9:54 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/common/taglib.jsp" %>


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
<!-- Left Sidebar - style you can find in sidebar.scss -->
<!-- ============================================================== -->

<!-- ============================================================== -->
<!-- End Left Sidebar - style you can find in sidebar.scss -->
<!-- ============================================================== -->
<!-- ============================================================== -->
<!-- Page wrapper -->
<!-- ============================================================== -->
<div class="page-wrapper">
    <!-- ============================================================== -->
    <!-- Bread crumb and right sidebar toggle -->
    <!-- ============================================================== -->
    <div class="page-breadcrumb">
        <div class="row">
            <div class="col-5 align-self-center">
                <h4 class="page-title">Quản lý diện tích thuê</h4>
            </div>
            <div class="col-7 align-self-center">
                <div class="d-flex align-items-center justify-content-end">
                    <nav aria-label="breadcrumb">
                        <ol class="breadcrumb">
                            <li class="breadcrumb-item">
                                <a href="#">Home</a>
                            </li>
                            <li class="breadcrumb-item active" aria-current="page">Quản lý diện tích thuê</li>
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
            <div class="col-lg-8">
                <div class="card-header bg-dark">
                    <h4 class="card-title text-white">Danh sách diện tích thuê - ${building.name}</h4>
                    <h6 class="card-subtitle text-white font-weight-light">Bảng danh sách thông tin các diện tích thuê của tòa nhà
                    </h6>
                </div>
                <form:form modelAttribute="rentAreaDTOs" id="listFrom" action="" method="GET">
                    <div class="row">
                        <div class="col-12">
                            <div class="card">
                                <div class="card-body">
                                    <div class="table-responsive" style="font-family:'Times New Roman'">
                                        <table id="multi_control"
                                               class="v-middle table table-striped table-bordered display"
                                               style="width:100%">
                                            <thead class="bg-dark text-white" style="font-size: medium">
                                            <tr role="row">
                                                <th>Tầng</th>
                                                <th>Diện tích(m<sup>2</sup>)</th>
                                                <th>Status</th>
                                                <th>Người thuê</th>
                                                <th>Action</th>
                                            </tr>
                                            </thead>
                                            <tbody style="font-size: smaller">
                                            <c:forEach var="item" items="${rentAreaDTOs}">
                                                <tr id="row_${item.id}">
                                                    <td>Tầng ${item.floor}</td>
                                                    <td>${item.value}</td>
                                                    <td class="text-center">
                                                        <c:if test="${item.status == 'AVAILABLE'}">
                                                            <span class="label label-danger label-rounded">${item.status}</span>
                                                        </c:if>
                                                        <c:if test="${item.status == 'RENTED'}">
                                                            <span class="label label-success label-rounded">${item.status}</span>
                                                        </c:if>
                                                    </td>

                                                    <td>
                                                        <c:forEach var="customer" items="${customerDTOs}">
                                                            <c:if test="${customer.id == item.customerId}">
                                                                ${customer.fullName} - ${customer.phone}
                                                            </c:if>
                                                        </c:forEach>
                                                        <c:if test="${item.customerId == null && item.customerId == ''}">
                                                        --Trống--
                                                        </c:if>
                                                    </td>

                                                    <td class="col-lg-2">
                                                        <div class="row d-flex justify-content-center">
                                                            <div class="row d-flex justify-content-center">
                                                                <div class="col-lg-4 d-flex justify-content-center">
                                                                    <a type="button" id="editRole"
                                                                       onclick="addRental(${item.id})"
                                                                       class="btn btn-success "
                                                                       data-toggle="tooltip" data-placement="top"
                                                                       title=""
                                                                       data-original-title="Update Khách Hàng!">
                                                                        <i class="fas fa-edit text-white"> </i>
                                                                    </a></div>

                                                                <div class="col-lg-4 d-flex justify-content-center"
                                                                     style="margin-left: 5px">
                                                                    <a type="button"
                                                                       onclick="clickDeleteRentArea(${item.id} )"
                                                                       class="btn btn-dark "
                                                                       data-toggle="tooltip" data-placement="top"
                                                                       title=""
                                                                       data-original-title="Delete!">
                                                                        <i class="far fa-trash-alt "
                                                                           style="color: white;"></i>
                                                                    </a>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </td>

                                                </tr>
                                            </c:forEach>
                                            </tbody>
                                            <tfoot class="bg-dark text-white">
                                            <tr>
                                               <th>Tầng</th>
                                                <th>Diện tích(m<sup>2</sup>)</th>
                                                <th>Status</th>
                                                <th>Người thuê</th>
                                                <th>Action</th>
                                            </tr>
                                            </tfoot>

                                        </table>

                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </form:form>
            </div>
            <div class="col-lg-4" style="border-width: medium">
                <div class="card">
                    <div class="card-header bg-dark">
                        <h4 class="m-b-0 text-white">Thêm diện tích thuê mới</h4>
                    </div>
                                        <form:form modelAttribute="rentAreaDTOs" id="form-add" method="GET">
                                            <!-- Dòng 1-->
                                            <div class="form-body ">

                                                <div class="card-body  ">
                                                    <div class="row ">
                                                        <div class="col-md-1"></div>
                                                        <div class="col-md-4">
                                                            <div class="form-group text-right">
                                                                <label class="control-label">Tầng:</label>
                                                            </div>
                                                        </div>
                                                        <!--/span-->
                                                        <div class="col-md-6">
                                                            <div class="form-group has-danger">
                                                                <input type="number" id="floor" name="floor" maxlength="${building.level}"
                                                                       class="form-control form-control-danger" required/>
                                                            </div>
                                                        </div>
                                                        <div class="col-md-1"></div>
                                                    </div>
                                                    <div class="row ">
                                                        <div class="col-md-1"></div>
                                                        <div class="col-md-4">
                                                            <div class="form-group  text-right">
                                                                <label class="control-label">Diện tích:</label>
                                                            </div>
                                                        </div>
                                                        <!--/span-->
                                                        <div class="col-md-6">
                                                            <div class="form-group has-danger">
                                                                <input type="number" id="value" name="value"
                                                                       class="form-control form-control-danger" required="required"/>
                                                            </div>
                                                        </div>
                                                        <div class="col-md-1"></div>
                                                    </div>

                                                       <input class="hide" id="buildingId" name="buildingId" value="${id}">
                                                    <div class="row d-flex justify-content-center">
                                                        <button id="btnAddRentArea" type="button"
                                                                class="btn btn-success ms-auto">
                                                            <i class=" mdi mdi-content-save"></i>
                                                            Thêm nhân viên
                                                        </button>
                                                    </div>
                                                </div>
                                            </div>
                                        </form:form>

                </div>
            </div>
        </div>
    </div>

<%--        modal--%>
        <div class="modal fade" id="editModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel1">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h4 class="modal-title" id="label1">Cho khách hàng thuê</h4>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
                                aria-hidden="true">&times;</span></button>
                    </div>
                    <div class="modal-body">
                        <form id="formRentalCustomer">
                            <input class="hide" id="rentAreaId" name="id" value="">
                            <div class="form-group">
                                <label class="control-label">Khách hàng:</label>
                                <select id="select2-customize-result" name="customerId" class="select2 form-control "
                                        data-placeholder="Choose a Category" tabindex="1">
                                    <option value="">--Chọn Khách Hàng--</option>
                                    <c:forEach items="${customerDTOs}" var="items">
                                        <option value="${items.id}">
                                        ${items.fullName} - ${items.phone}
                                        </option>
                                    </c:forEach>

                                </select>
                            </div>
                            <div class="form-group">

                            </div>
                        </form>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-dark" data-dismiss="modal">Close</button>
                        <button type="submit" id="btnUpdate" class="btn btn-success">Save</button>
                    </div>
                </div>
            </div>
        </div>
</div>

<script type="text/javascript">
    $('#btnAddRentArea').click(function () {// Xử lý dữ liệu chưa nhập
        var data = {};
        var formData = $('#form-add').serializeArray();
        $.each(formData, function (index, value) {
            data["" + value.name + ""] = value.value;
        });

        if (data['floor'] === "") {
            toastr.warning('Số tầng không được bỏ trống!', 'Thông báo');
        }
        else if ($('#floor').val() > ${building.level}) {
            toastr.warning('Tòa nhà chỉ có ${building.level} Tầng!', 'Thông báo');
        }
        else if (data['value'] === "") {
            toastr.warning('Diện tích thuê không được bỏ trống!', 'Thông báo');
        } else {
            saveRentArea(data);// Gọi Ajax call API
        }

    });


    // Hiển thị from phân quyền
    function addRental(rentAreaId) {
        $('#editModal').modal();
        $('#rentAreaId').val(rentAreaId);//set giá trị cho input hidden của id user
    }

    $('#btnUpdate').click(function () {// Update thông tin khách hàng
        var data = {};
        var formData = $('#formRentalCustomer').serializeArray();
        $.each(formData, function (index, value) {
            data["" + value.name + ""] = value.value;
        });
        if (data['customerId'] !== '') {
            editUser(data);// Gọi Ajax call API
        } else {
            toastr.warning('Chưa chọn Role!', 'Warning')
        }


    });

    function editUser(data) {
        //Call api
        $.ajax({
            type: "PUT",
            url: "/api/rent-area/rental",
            data: JSON.stringify(data),
            contentType: "application/JSON",
            //dataType: "JSON",
            success: function () {
                toastr.success('Cho thuê thành công!', 'Success');
                setTimeout(function () {// load lại trang sau khi save thành công
                    window.location.reload();
                }, 1200); //
            },
            error: function () {
                toastr.warning('Xảy ra lỗi khi thực hiện thao tác!', 'Cảnh báo');
            }

        });
    }


    function saveRentArea(data) {
        //Call api
        $.ajax({
            type: "PUT",
            url: "/api/rent-area",
            data: JSON.stringify(data),
            contentType: "application/JSON",
            //dataType: "JSON",
            success: function () {
                toastr.success('Thêm diện tích thuê thành công!', 'Success');
                setTimeout(function () {// load lại trang sau khi save thành công
                    window.location.reload();
                }, 1200); //
            },
            error: function () {
                toastr.error('Xảy ra lỗi khi thực hiện thao tác!', 'Cảnh báo');
            }

        });
    }

    function clickDeleteRentArea(id) {
        var renAreaId = [id];
        var row = $("#row_" + id);
        Swal.fire({
            title: "Are you sure?",
            text: "You won't be able to revert this!",
            type: "warning",
            showCancelButton: true,
            confirmButtonColor: "#3085d6",
            cancelButtonColor: "#d33",
            confirmButtonText: "Yes, delete it!"
        }).then((result) => {
            if (result.value) {
                deleteRentArea(renAreaId, row);
                Swal.fire({
                    title: "Deleted!",
                    text: "Your file has been deleted.",
                    type: "success"
                });

            }
        });


    }

    function deleteRentArea(renAreaId, row) {//Xóa tòa nhà
        $.ajax({
            type: "DELETE",
            url: "/api/rent-area/" + renAreaId,
            data: JSON.stringify(renAreaId),
            contentType: "application/JSON",
            //dataType: "JSON",
            success: function (respond) {
                $('#multi_control').DataTable().row(row).remove().draw();
                toastr.success('Xóa diện tích thuê thành công!', 'Success');
            },
            error: function (respond) {
                console.log("Failed!");
                console.log(respond);

            }
        });
    }



</script>

