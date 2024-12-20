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
                <h4 class="page-title">Management Customer</h4>
            </div>
            <div class="col-7 align-self-center">
                <div class="d-flex align-items-center justify-content-end">
                    <nav aria-label="breadcrumb">
                        <ol class="breadcrumb">
                            <li class="breadcrumb-item">
                                <a href="#">Home</a>
                            </li>
                            <li class="breadcrumb-item active" aria-current="page">Management Customer</li>
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
                        <h4 class="m-b-0 text-white">Update Customer</h4>
                    </div>
                    <form:form modelAttribute="customer" action="${customer}" id="form-edit" method="GET">
                        <!-- Dòng 1-->
                        <div class="form-body">
                            <form>
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
                                                <form:input type="text" id="fullName" name="fullName"
                                                            class="form-control form-control-danger" path="fullName"/>
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
                                                <form:input type="text" id="phone" name="phone"
                                                            class="form-control form-control-danger" path="phone"/>
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
                                                <form:input type="email" id="email" name="email"
                                                            class="form-control form-control-danger" path="email"/>
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
                                                <form:input type="text" id="companyName" name="companyName"
                                                            class="form-control form-control-danger"
                                                            path="companyName"/>
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
                                                <form:input type="text" id="demand" name="demand"
                                                            class="form-control form-control-danger" path="demand"/>
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
                                                <form:select path="status" class="form-control custom-select"
                                                             data-placeholder="Choose a Category" tabindex="1">
                                                    <form:options items="${transactionStatus}"/>
                                                </form:select>
                                            </div>
                                        </div>
                                        <div class="col-md-3"></div>
                                    </div>
                                    <form:input type="hidden" id="id" name="id"
                                                class="form-control form-control-danger" path="id"/>
                                    <div class="row  d-flex justify-content-center">
                                        <button id="btnUpdateCustomer" type="button"
                                                class="btn btn-dark ms-auto">
                                            <i class="m-r-10 m-l-40 mdi mdi-content-save"></i>
                                            Update Customer
                                        </button>

                                        <button id="btnCancel" type="button" class="  btn btn-success ms-auto"
                                                style="margin-left: 5px">
                                            <i class="mdi mdi-backspace"></i>
                                            Hủy thao tác
                                        </button>
                                    </div>
                                </div>

                            </form>
                        </div>
                    </form:form>

                </div>

                <%--                ////////////////////////////////////////////////////
                //////////////////////////////////
                /////////////////////////////////--%>
                <div class="row">
                    <div class="col-lg-8">
                        <c:forEach var="item" items="${transactionType}">
                            <div class="card">
                                <div class="card-header bg-dark">
                                <h4 class="text-white">#${item.value}</h4>
                                 <c:if test="${item.key == 'CSKH'}">
                                 <h6 class="card-subtitle">Tư vấn, hỗ trợ, giải đáp thắc mắc cho khách hàng </h6>
                                 </c:if>
                                 <c:if test="${item.key == 'GDTT'}">
                                 <h6 class="card-subtitle">Các hợp đồng mua bán đã thực hiện</h6>
                                 </c:if>

                                </div>
                                <form method="GET">
                                    <!-- Dòng 1-->
                                    <div class="form-body">
                                        <div class="col-lg-12">
                                            <div class="card">
                                                <div class="card-body">
                                                    <c:if test="${item.key == 'CSKH'}">
                                                        <div class="row">
                                                            <h4 class="card-title col-lg-6"></h4>

                                                            <div class="col-lg-6 d-flex justify-content-end text-white">
                                                                <a type="button" class="btn btn-success"
                                                                   onclick="addCustomer('${item.key}', ${customer.id})"
                                                                   id="btnAddCSKH" style="margin-bottom: 10px"
                                                                ><i class="fa fas fa-pallet"></i> New</a>
                                                            </div>
                                                        </div>
                                                    </c:if>
                                                    <c:if test="${item.key == 'GDTT'}">
                                                        <div class="row">
                                                            <h4 class="card-title col-lg-6 "></h4>
                                                            <div class="col-lg-6 d-flex justify-content-end text-white">
                                                                <a type="button" class="btn btn-success" id="btnAddGDTT"
                                                                style="margin-bottom: 10px"
                                                                   onclick="addCustomer('${item.key}', ${customer.id})"><i
                                                                        class="fa fas fa-pallet"></i>
                                                                    New</a>
                                                            </div>
                                                        </div>
                                                    </c:if>


                                                    <div class="table-responsive">
                                                        <table id="form-${item.key}" class="table">
                                                            <thead class="bg-success text-white">
                                                            <tr class="text-center">
                                                                <th>Created Date</th>
                                                                <th>Created By</th>
                                                                <th>Transaction Details</th>
                                                                <th>Action</th>

                                                            </tr>
                                                            </thead>
                                                            <tbody class="border border-success">
                                                            <c:forEach var="list"
                                                                       items="${item.key == 'CSKH' ? CSKH :GDTT}">
                                                                <tr id="row_${list.id}" class="text-center">
                                                                    <td><fmt:formatDate value="${list.createdDate}"
                                                                                        pattern="yyyy-MM-dd HH:mm"/></td>
                                                                    <td>${list.createdBy}</td>
                                                                    <td>${list.note}</td>
                                                                    <td class="text-center">
                                                                        <div class="row d-flex justify-content-center">
                                                                            <div class="col-lg-4 d-flex justify-content-center">
                                                                                <a type="button"
                                                                                   onclick="updateCustomer(${list.id},'${item.key}')"
                                                                                   class="btn btn-success "
                                                                                   data-toggle="tooltip"
                                                                                   data-placement="top"
                                                                                   title=""
                                                                                   data-original-title="Sửa giao dịch!">
                                                                                    <i class="fas fa-edit"> </i>
                                                                                </a></div>
                                                                            <div class="col-lg-4 d-flex justify-content-center">
                                                                                <a type="button"
                                                                                   onclick="deleteObject(${list.id},'${item.key}')"
                                                                                   class="btn btn-dark "
                                                                                   data-toggle="tooltip"
                                                                                   data-placement="top"
                                                                                   title=""
                                                                                   data-original-title="Delete!">
                                                                                    <i class="far fa-trash-alt "
                                                                                       style="color: white;"></i>
                                                                                </a>
                                                                            </div>

                                                                        </div>
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
                                </form>

                            </div>
                        </c:forEach>
                    </div>
                    <div class="col-lg-4">
                        <div class="card-header bg-dark">
                            <h4 class="card-title text-white">Đã thuê</h4>
                            <h6 class="card-subtitle text-white font-weight-light">Bảng danh sách các diện tích khách hàng đã thuê
                                trong hệ
                                thống
                            </h6>
                        </div>
                        <form:form modelAttribute="rentalCustomers" id="listFrom" action="" method="GET">
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
                                                        <th>Building</th>
                                                        <th>Tầng</th>
                                                        <th>Diện tích(m<sup>2</sup>)</th>
                                                    </tr>
                                                    </thead>
                                                    <tbody style="font-size: smaller">
                                                    <c:forEach var="item" items="${rentalCustomers}">
                                                        <tr id="row_${item.id}">
                                                            <td>${item.buildingName}</td>
                                                            <td>Tầng ${item.floor}</td>
                                                            <td>${item.value}</td>
                                                        </tr>
                                                    </c:forEach>
                                                    </tbody>
                                                    <tfoot class="bg-dark text-white">
                                                    <tr>
                                                       <th>Building</th>
                                                        <th>Tầng</th>
                                                        <th>Diện tích(m<sup>2</sup>)</th>
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
                </div>
            </div>
        </div>
    </div>
    <%--modal--%>

    <div class="modal fade" id="editModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel1">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h4 class="modal-title" id="label1">New Transaction</h4>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
                            aria-hidden="true">&times;</span></button>
                </div>
                <div class="modal-body">
                    <form id="formTransactionEdit">
                        <input class="hide" id="customerId" name="customerId" value="">
                        <input class="hide" id="code" name="code" value="">
                        <input class="hide" id="id" name="id" value="">

                        <div class="form-group">
                            <label class="control-label">Transaction Detail:</label>
                            <input type="text" name="note" class="form-control" id="note">
                        </div>
                    </form>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-dark" data-dismiss="modal">Close</button>
                    <button type="submit" id="btnSaveTransaction" class="btn btn-success">Save</button>
                </div>
            </div>
        </div>
    </div>
</div>

<script>
    $('#btnCancel').click(function () {//Quay về trang danh sách
        window.location.href = '<c:url value ="/admin/customer-list"/>'; //Quay về trang list
    });

    function addCustomer(code, customerId) {// Thêm mới khách hàng
        $('#editModal').modal();
        $('#code').val(code);
        $('#customerId').val(customerId);

    }

    function updateCustomer(transactionId, code) {
        $('#editModal').modal();
        $('#code').val(code);
        $('#id').val(transactionId);
        $('#customerId').val(${customer.id})
        loadTransaction(transactionId);

    }

    function deleteObject(id, type) {

        var transactionId = [id];
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
                deleteTransaction(transactionId, type);
            }
        });
    }

    function deleteTransaction(transactionId, type) {//Xóa tòa nhà
        $.ajax({
            type: "DELETE",
            url: "/api/transaction/" + transactionId,
            data: JSON.stringify(transactionId),
            contentType: "application/JSON",
            //dataType: "JSON",
            success: function (respond) {
                console.log("Success!");
                $("#row_" + transactionId).remove();
                toastr.success('Xóa giao dịch thành công!', 'Success');
            },
            error: function (respond) {
                console.log("Failed!");
                console.log(respond);

            }
        });
    }

    // load transaction
    function loadTransaction(transactionId) {
        $.ajax({
            type: "GET",
            url: "/api/transaction/" + transactionId + "/detail",
            contentType: "application/JSON",
            dataType: "JSON",
            success: function (response) {
                $('#note').val(response.note);
            },
            error: function (response) {
                console.log("Failed!");
                window.location.href = '<c:url value="/admin/building-view?message=error"/>';
                console.log(response);
            }

        });
    }


    $('#btnUpdateCustomer').click(function () {// Update thông tin khách hàng
        var data = {};
        var formData = $('#form-edit').serializeArray();
        $.each(formData, function (index, value) {
            data["" + value.name + ""] = value.value;
        });
        editCustomer(data);// Gọi Ajax call API

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
                window.location.href = '<c:url value="/admin/customer-list?message=success-edit"/>';
            },
            error: function () {
                toastr.warning('Xảy ra lỗi khi thực hiện thao tác!', 'Cảnh báo');
            }

        });
    }

    $('#btnSaveTransaction').click(function () {
        var data = {};
        var formData = $('#formTransactionEdit').serializeArray();
        $.each(formData, function (index, value) {
            data["" + value.name + ""] = value.value;
        });
        saveTransaction(data);

    });

    function saveTransaction(data) {
        //Call api
        $.ajax({
            type: "POST",
            url: "/api/transaction",
            data: JSON.stringify(data),
            contentType: "application/JSON",
            //dataType: "JSON",
            success: function () {
                $('#editModal').modal('hide');
                toastr.success('Thao tác thành công!', 'Success');

            },
            error: function () {
                toastr.error('Xảy ra lỗi khi thao tác!', 'Cảnh báo');
            }

        });
        setTimeout(function () {// load lại trang sau khi save thành công
            window.location.reload();
        }, 1200); //
    }


</script>
</body>
</html>
