<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="/common/taglib.jsp" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>
<body>
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
        <!-- ============================================================== -->
        <!-- Sales chart -->
        <!-- ============================================================== -->
        <div class="row">
            <div class="col-lg-3 col-md-6">
                <div class="card">
                    <div class="card-body">
                        <div class="row align-items-center">
                            <div class="col-7">
                                <i class="mdi mdi-emoticon font-20 text-info"></i>
                                <p class="font-16 m-b-5">Clients</p>
                            </div>
                            <div class="col-5">
                                <h1 class="font-light text-right mb-0">${numberOfUser}</h1>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-6">
                <div class="card">
                    <div class="card-body">
                        <div class="row align-items-center">
                            <div class="col-7">
                                <i class="mdi mdi-image font-20 text-success"></i>
                                <p class="font-16 m-b-5">Tòa nhà</p>
                            </div>
                            <div class="col-5">
                                <h1 class="font-light text-right mb-0">${numberOfBuilding}</h1>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-6">
                <div class="card">
                    <div class="card-body">
                        <div class="row align-items-center">
                            <div class="col-7">
                                <i class="mdi mdi-currency-eur font-20 text-purple"></i>
                                <p class="font-16 m-b-5">Giao dịch</p>
                            </div>
                            <div class="col-5">
                                <h1 class="font-light text-right mb-0">${numberOfTransaction}</h1>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-6">
                <div class="card">
                    <div class="card-body">
                        <div class="row align-items-center">
                            <div class="col-7">
                                <i class="mdi mdi-poll font-20 text-danger"></i>
                                <p class="font-16 m-b-5">Khách hàng chờ</p>
                            </div>
                            <div class="col-5">
                                <h1 class="font-light text-right mb-0">${numberOfCustomersWaiting}</h1>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- ============================================================== -->
        <!-- Sales chart -->
        <!-- ============================================================== -->
        <!-- ============================================================== -->
        <!-- Email campaign chart -->
        <!-- ============================================================== -->
<%--        <div class="row">--%>
<%--            <div class="col-lg-8 col-md-12">--%>
<%--                <div class="card">--%>
<%--                    <div class="card-body">--%>
<%--                        <div class="d-flex align-items-center">--%>
<%--                            <div>--%>
<%--                                <h4 class="card-title">Trading chart</h4>--%>
<%--                            </div>--%>
<%--                            <div class="ml-auto">--%>
<%--                                <div class="dl m-b-10">--%>
<%--                                    <select class="custom-select border-0 text-muted">--%>
<%--                                        <option value="0" selected="selected">August 2024</option>--%>
<%--                                        <option value="1">May 2024</option>--%>
<%--                                        <option value="2">March 2024</option>--%>
<%--                                        <option value="3">June 2024</option>--%>
<%--                                    </select>--%>
<%--                                </div>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                        <div class="sales5 ct-charts m-t-30"></div>--%>
<%--                        <ul class="list-inline m-t-30 text-center font-12">--%>
<%--                            <li class="list-inline-item text-muted"><i class="fa fa-circle text-info m-r-5"></i> Số--%>
<%--                                lượng giao dịch--%>
<%--                            </li>--%>
<%--                            <li class="list-inline-item text-muted"><i class="fa fa-circle text-success m-r-5"></i>--%>
<%--                                MaterialPro Admin--%>
<%--                            </li>--%>
<%--                        </ul>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--            </div>--%>
<%--            <div class="col-lg-4 col-md-12">--%>
<%--                <div class="card bg-info">--%>
<%--                    <div class="card-body mb-0">--%>
<%--                        <h4 class="card-title text-white">Thursday--%>
<%--                            <span class="font-14 font-normal text-white op-5">--%>
<%--                                <script>--%>
<%--						            document.write(new Date().getFullYear() + '-' + (new Date().getMonth() + 1) + '-' + new Date().getDate());--%>
<%--					             </script>--%>
<%--                            </span>--%>
<%--                        </h4>--%>
<%--                        <div class="d-flex align-items-center flex-row m-t-30">--%>
<%--                            <h1 class="font-light text-white"><i class="wi wi-day-sleet"></i>--%>
<%--                                <span>35<sup>°</sup></span></h1>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                    <div class="weather-report" style="height:78px; width:100%;"></div>--%>
<%--                </div>--%>
<%--                <div class="card bg-success">--%>
<%--                    <div class="card-body">--%>
<%--                        <div class="d-flex align-items-center">--%>
<%--                            <div>--%>
<%--                                <h4 class="card-title text-white">Users</h4>--%>
<%--                            </div>--%>
<%--                            <div class="ml-auto">--%>
<%--                                <h2 class="font-light text-white">23</h2>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                        <div class="m-t-20 m-b-10">--%>
<%--                            <ul class="list-style-none m-t-10">--%>
<%--                                <li>--%>
<%--                                    <div class="d-flex align-items-center">--%>
<%--                                        <div>--%>
<%--                                            <h4 class="mb-0 font-medium text-white">24% <span--%>
<%--                                                    class="font-normal font-14 text-white op-5 m-l-5">Manager</span>--%>
<%--                                            </h4>--%>
<%--                                        </div>--%>
<%--                                    </div>--%>
<%--                                    <div class="progress m-t-10 user-progress-bg">--%>
<%--                                        <div class="progress-bar bg-white" role="progressbar" style="width: 24%"--%>
<%--                                             aria-valuenow="58" aria-valuemin="0" aria-valuemax="100"></div>--%>
<%--                                    </div>--%>
<%--                                </li>--%>
<%--                                <li class="m-t-30">--%>
<%--                                    <div class="d-flex align-items-center">--%>
<%--                                        <div>--%>
<%--                                            <h4 class="mb-0 font-medium text-white">76% <span--%>
<%--                                                    class="font-normal font-14 text-white op-5 m-l-5">Staff</span></h4>--%>
<%--                                        </div>--%>
<%--                                    </div>--%>
<%--                                    <div class="progress m-t-10 user-progress-bg">--%>
<%--                                        <div class="progress-bar bg-white" role="progressbar" style="width: 76%"--%>
<%--                                             aria-valuenow="16" aria-valuemin="0" aria-valuemax="100"></div>--%>
<%--                                    </div>--%>
<%--                                </li>--%>
<%--                            </ul>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--            </div>--%>
<%--        </div>--%>
        <!-- Table -->
        <!-- ============================================================== -->
        <div class="row">
            <div class="col-lg-12">
                <div class="card">
                    <div class="card-body">
                        <div class="d-flex align-items-center">
                            <div>
                                <h4 class="card-title">Khách hàng mới </h4>
                            </div>
                            <div class="ml-auto">
                                <div class="dl m-b-10">
                                    <select class="custom-select border-0 text-muted">
                                        <option value="0" selected="">
                                            <script>
                                                document.write(new Date().getFullYear() + '-' + (new Date().getMonth() + 1));
                                            </script>
                                        </option>
                                    </select>
                                </div>
                            </div>
                        </div>
                        <div class="table-responsive">
                            <table class="table  v-middle">
                                <thead class="bg-success text-white">
                                <tr class="" style="font-size: small;">
                                    <th class="border-0 ">Customer</th>
                                    <th class="border-0  text-center">Status</th>
                                    <th class="border-0 text-center">Request date</th>
                                    <th class="border-0  text-center">Demand</th>
                                    <th class="border-0 text-center">Action</th>
                                </tr>
                                </thead>
                                <tbody class="border border-success">
                                <c:forEach var="item" items="${customers}">
                                    <tr id="row_${item.id}">
                                        <td class="col-lg-2">
                                            <div class="d-flex no-block align-items-center">
                                                <div class="m-r-10" style="margin-right: 10px"><img
                                                        src="assets/images/users/fire-keeper.jpg" alt="user"
                                                        class="rounded-circle" width="45"/></div>
                                                <div class="">
                                                    <h5 class="m-b-0 font-16 font-medium" style="margin-bottom: 0">
                                                            ${item.fullName}</h5><span class="text-muted"
                                                                                       style="font-size: small; margin-bottom: 0">${item.email}</span>
                                                </div>
                                            </div>
                                        </td>
                                        <td class="text-center">
                                            <span class="label label-danger label-rounded">Chưa xử lý!</span>
                                        </td>
                                        <td class="text-center"> <fmt:formatDate value="${item.createdDate}" pattern="yyyy-MM-dd HH:mm" /></td>
                                        <td class="font-14 text-center"
                                            style="word-wrap: break-word; white-space: normal;">${item.demand}</td>
                                        <td class="text-center">
                                            <button onclick="assignmentCustomer(${item.id})" class="btn btn-dark waves-effect waves-light" type="button">
                                                <i class="fas fa-edit"></i>
                                            </button>
                                        </td>
                                    </tr>

                                </c:forEach>

                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- ============================================================== -->
        <!-- Table -->
    </div>
    <%--modal--%>

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

</div>

<script>
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
                window.location.href = '<c:url value="/admin/building-view?message=error"/>';
                console.log(response);
            }

        });
    }

    // click button Giao tòa nhà cho nv
    $('#btnAssignmentCustomer').click(function (e) {
        e.preventDefault();
        var data = {};
        var id = $('#customerId').val();
        data['customerId'] = id;
        var staffs = $('#staffList').find('tbody input[type = checkbox]:checked').map(function () {
            return $(this).val();
        }).get();
        data['staffs'] = staffs;
        if (data['staffs'] != '') {
            assignment(data,id);
        }
    });

    // ajax call api Giao toà nhà cho nhân viên
    function assignment(data, customerId) {
        $.ajax({
            type: "PUT",
            url: "/api/customer/assignment",
            data: JSON.stringify(data),
            contentType: "application/JSON",
            //dataType: "JSON",
            success: function (response) {
                toastr.success("Giao khách hàng cho nhân viên thành công!", "Success");
                $('#assignmentCustomerModal').modal('hide');
                $('#row_'+customerId).remove();
            },
            error: function (response) {
                console.info("Giao không thành công");
                console.log(response);
            }

        });
    }

</script>
</body>
</html>