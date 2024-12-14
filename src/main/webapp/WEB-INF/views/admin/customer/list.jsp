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
                                            <form:input path="fullName" type="text" id="fullName" name="fullName"
                                                        class="form-control"/>
                                        </div>
                                    </div>
                                    <!--/span-->
                                    <div class="col-md-6">
                                        <div class="form-group has-danger">
                                            <label class="control-label">Số Điện thoại</label>
                                            <form:input type="number" id="phone" name="phone"
                                                        class="form-control form-control-danger" path="phone"/>
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
                                           href="/admin/customer-new"><i class="fa fa-bookmark"></i> Add New</a>
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
                                                <td>${item.fullName}</td>
                                                <td>${item.phone}</td>
                                                <td>${item.email}</td>
                                                <td>${item.demand}</td>

                                                <td>${item.createdBy}</td>
                                                <td>${item.createdDate}</td>
                                                <td>${item.status}</td>

                                                <td class="">
                                                    <div class="row d-flex justify-content-center">
                                                        <div class="col-lg-4 d-flex justify-content-center">
                                                            <a type="button" href="/admin/customer-edit-${item.id}"
                                                               class="btn btn-success "
                                                               data-toggle="tooltip" data-placement="top" title=""
                                                               data-original-title="Update Khách Hàng!">
                                                                <i class="fas fa-edit"> </i>
                                                            </a></div>
                                                        <div class="col-lg-4 d-flex justify-content-center">
                                                            <a type="button" onclick="assignmentCustomer(${item.id})"
                                                               class="btn btn-dark "
                                                               data-toggle="tooltip" data-placement="top" title=""
                                                               data-original-title="Giao khách hàng cho nhân viên quản lý!">
                                                                <i class="far fa-address-card "
                                                                   style="color: white;"></i>
                                                            </a>
                                                        </div>
                                                        <div class="col-lg-4 d-flex justify-content-center">
                                                            <a type="button" onclick="deleteCustomer(${item.id} )"
                                                               class="btn btn-dark "
                                                               data-toggle="tooltip" data-placement="top" title=""
                                                               data-original-title="Delete!">
                                                                <i class="far fa-trash-alt " style="color: white;"></i>
                                                            </a>
                                                        </div>

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

<div class="modal fade" id="assignmentCustomerModal">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title font-medium" id="exampleModalLabel1">Giao khách hàng cho nhân viên quản lý</h4>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
                        aria-hidden="true">&times;</span></button>
            </div>
            <div class="modal-body">
                <input type="hidden" id="customerId" value="1">
                <table class="table " id="staffList">
                    <thead class="bg-dark text-white align-items-center">
                    <tr class="text-center">
                        <th class="font-weight-light">Chọn</th>
                        <th class="font-weight-light">Tên Nhân Viên</th>
                    </tr>
                    </thead>
                    <tbody class="border border-dark text-center">
                    </tbody>
                </table>
                <div class="modal-footer">
                    <button type="button" class="btn btn-dark" data-dismiss="modal">Close</button>
                    <button id="btnAssignmentCustomer" type="button" class="btn btn-success">Thêm</button>
                </div>

            </div>

        </div>
    </div>
</div>

<script>
    const urlParams = new URLSearchParams(window.location.search);
    const message = urlParams.get('message');
    if (message === 'success') {
        toastr.success("Thêm khách hàng thành công!", "Success");
    }
    if (message === 'success-edit') {
        toastr.success("Update thông tin khách hàng thành công!", "Success");
    }else if (message === 'error') {
        toastr.error('Có lỗi xảy ra, vui lòng thử lại.', "Error");
    }
    urlParams.delete('message'); // Xóa tham số "message" khỏi URL
    // Cập nhật URL trên trình duyệt (không reload)
    const newUrl = window.location.pathname + urlParams.toString();
    window.history.replaceState({}, document.title, newUrl);

    // Hiển thị from nhân viên
    function assignmentCustomer(customerId) {
        $('#assignmentCustomerModal').modal();
        $('#customerId').val(customerId);//set giá trị cho input hidden của danh sách giao nhân viên
        loadStaff(customerId);
    }

    function loadStaff(customerId) {
        $.ajax({
            type: "GET",
            url: "/api/customer/" + customerId + "/staffs",
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
    $('#btnAssignmentCustomer').click(function (e) {
        e.preventDefault();
        var data = {};
        data['customerId'] = $('#customerId').val();
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
            url: "/api/customer/assignment",
            data: JSON.stringify(data),
            contentType: "application/JSON",
            //dataType: "JSON",
            success: function (response) {
                toastr.success("Giao khách hàng cho nhân viên thành công!", "Success");
                $('#assignmentCustomerModal').modal('hide');
            },
            error: function (response) {
                console.info("Giao không thành công");
                console.log(response);
            }

        });
    }

    function deleteCustomer(id) {

        var customerId = [id];
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
                Swal.fire({
                    title: "Deleted!",
                    text: "Your file has been deleted.",
                    type: "success"
                });
                deleteBuildings(customerId, row);
            }
        });


    }

    function deleteBuildings(customerId, row) {//Xóa tòa nhà
        $.ajax({
            type: "DELETE",
            url: "/api/customer/" + customerId,
            data: JSON.stringify(customerId),
            contentType: "application/JSON",
            //dataType: "JSON",
            success: function (respond) {
                console.log("Success!");
                $('#multi_control').DataTable().row(row).remove().draw();
                toastr.success('Xóa khách hàng thành công!', 'Success');
            },
            error: function (respond) {
                console.log("Failed!");
                console.log(respond);

            }
        });
    }

</script>
</body>
</html>
