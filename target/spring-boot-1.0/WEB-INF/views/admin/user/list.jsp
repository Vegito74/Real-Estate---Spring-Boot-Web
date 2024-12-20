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
<c:url var="formUrl" value="/admin/user-list"/>
<c:url var="formAjax" value="/api/user"/>


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
                <h4 class="page-title">Quản lý User</h4>
            </div>
            <div class="col-7 align-self-center">
                <div class="d-flex align-items-center justify-content-end">
                    <nav aria-label="breadcrumb">
                        <ol class="breadcrumb">
                            <li class="breadcrumb-item">
                                <a href="#">Home</a>
                            </li>
                            <li class="breadcrumb-item active" aria-current="page">Quản lý User</li>
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
                    <h4 class="card-title text-white">Danh sách User</h4>
                    <h6 class="card-subtitle text-white font-weight-light">Bảng danh sách thông tin các User trong hệ
                        thống
                    </h6>
                </div>
                <form:form modelAttribute="model" id="listFrom" action="${formUrl}" method="GET">
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
                                                <th>Username</th>
                                                <th>Fullname</th>
                                                <th>Role</th>
                                                <th>Create Date</th>
                                                <th>Action</th>
                                            </tr>
                                            </thead>
                                            <tbody style="font-size: smaller">
                                            <c:forEach var="item" items="${users}">
                                                <tr id="row_${item.id}">
                                                    <td>${item.userName}</td>
                                                    <td>${item.fullName}</td>
                                                    <td class="text-center">
                                                        <c:if test="${item.roleCode == 'MANAGER'}">
                                                            <span class="label label-danger label-rounded">${item.roleName}</span>
                                                        </c:if>
                                                        <c:if test="${item.roleCode == 'STAFF'}">
                                                            <span class="label label-success label-rounded">${item.roleName}</span>
                                                        </c:if>
                                                    </td>

                                                    <td>${item.createdDate}</td>

                                                    <td class="col-lg-2">
                                                        <div class="row d-flex justify-content-center">
                                                            <div class="row d-flex justify-content-center">
                                                                <div class="col-lg-4 d-flex justify-content-center">
                                                                    <a type="button" id="editRole" onclick="authorizationUser(${item.id})"
                                                                       class="btn btn-success "
                                                                       data-toggle="tooltip" data-placement="top"
                                                                       title=""
                                                                       data-original-title="Update Khách Hàng!">
                                                                        <i class="fas fa-edit text-white"> </i>
                                                                    </a></div>

                                                                <div class="col-lg-4 d-flex justify-content-center"
                                                                     style="margin-left: 5px">
                                                                    <a type="button"
                                                                       onclick="clickDeleteUser(${item.id} )"
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

                                                <th>Username</th>
                                                <th>Fullname</th>
                                                <th>Role</th>
                                                <th>Ngày khởi tạo</th>
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
                        <h4 class="m-b-0 text-white">Thêm nhân viên mới</h4>
                    </div>
                    <form:form modelAttribute="users" id="form-add" method="GET">
                        <!-- Dòng 1-->
                        <div class="form-body ">

                            <div class="card-body  ">
                                <div class="row ">
                                    <div class="col-md-1"></div>
                                    <div class="col-md-4">
                                        <div class="form-group text-right">
                                            <label class="control-label">Username:</label>
                                        </div>
                                    </div>
                                    <!--/span-->
                                    <div class="col-md-6">
                                        <div class="form-group has-danger">
                                            <input type="text" id="userName" name="userName"
                                                   class="form-control form-control-danger" required/>
                                        </div>
                                    </div>
                                    <div class="col-md-1"></div>
                                </div>
                                <div class="row ">
                                    <div class="col-md-1"></div>
                                    <div class="col-md-4">
                                        <div class="form-group  text-right">
                                            <label class="control-label">Full Name:</label>
                                        </div>
                                    </div>
                                    <!--/span-->
                                    <div class="col-md-6">
                                        <div class="form-group has-danger">
                                            <input type="text" id="fullName" name="fullName"
                                                   class="form-control form-control-danger" required="required"/>
                                        </div>
                                    </div>
                                    <div class="col-md-1"></div>
                                </div>
                                <div class="row ">
                                    <div class="col-md-1"></div>
                                    <div class="col-md-4">
                                        <div class="form-group  text-right">
                                            <label class="control-label">Email:</label>
                                        </div>
                                    </div>
                                    <!--/span-->
                                    <div class="col-md-6">
                                        <div class="form-group has-danger">
                                            <input type="email" id="email" name="email"
                                                   class="form-control form-control-danger"/>
                                        </div>
                                    </div>
                                    <div class="col-md-1"></div>
                                </div>
                                <div class="row ">
                                    <div class="col-md-1"></div>
                                    <div class="col-md-4">
                                        <div class="form-group text-right">
                                            <label class="control-label"> Phone:</label>
                                        </div>
                                    </div>
                                    <!--/span-->
                                    <div class="col-md-6">
                                        <div class="form-group has-danger">
                                            <input type="number" id="phone" name="phone"
                                                   class="form-control form-control-danger"/>
                                        </div>
                                    </div>
                                    <div class="col-md-1"></div>
                                </div>
                                <div class="row ">
                                    <div class="col-md-1"></div>
                                    <div class="col-md-4">
                                        <div class="form-group text-right">
                                            <label class="control-label"> Role:</label>
                                        </div>
                                    </div>
                                    <!--/span-->
                                    <div class="col-md-6">
                                        <div class="form-group has-danger">
                                            <select name="roleCode" class="form-control custom-select">
                                                <option value="">---Chọn Role---</option>
                                                <option value="STAFF">Nhân viên</option>
                                                <option value="MANAGER">Quản lý</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-md-1"></div>
                                </div>

                                <div class="row d-flex justify-content-center">
                                    <button id="btnAddUser" type="button"
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

    <%--    modal--%>
    <div class="modal fade" id="editModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel1">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h4 class="modal-title" id="label1">Thay đổi chức vụ</h4>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
                            aria-hidden="true">&times;</span></button>
                </div>
                <div class="modal-body">
                    <form id="formAuthorization">
                        <input class="hide" id="userId" name="userId" value="">
                        <div class="form-group">
                            <label class="control-label">Roles:</label>
                            <select id="roleCode" name="roleCode" class="form-control custom-select"
                                    data-placeholder="Choose a Category" tabindex="1">
                                <option value="">--Chọn Role--</option>
                                <c:forEach items="${roles}" var="items">
                                    <option value="${items.key}">
                                    ${items.value}
                                    </option>
                                </c:forEach>

                            </select>
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
    $('#btnAddUser').click(function () {// Xử lý dữ liệu chưa nhập
        var data = {};
        var formData = $('#form-add').serializeArray();
        $.each(formData, function (index, value) {
            data["" + value.name + ""] = value.value;
        });

        if (data['userName'] === "") {
            toastr.warning('Username không được bỏ trống!', 'Thông báo');
        } else if (data['fullName'] === "") {
            toastr.warning('Full Name không được bỏ trống!', 'Thông báo');
        } else if (data['roleCode'] === "") {
            toastr.warning('Vui lòng lựa chọn Role!', 'Thông báo');
        } else {
            saveUser(data);// Gọi Ajax call API
        }

    });


    // Hiển thị from phân quyền
    function authorizationUser(userId) {
        $('#editModal').modal();
        $('#userId').val(userId);//set giá trị cho input hidden của id user
    }

    $('#btnUpdate').click(function () {// Update thông tin khách hàng
        var data = {};
        var formData = $('#formAuthorization').serializeArray();
        $.each(formData, function (index, value) {
            data["" + value.name + ""] = value.value;
        });
        if(data['roleCode'] !== ''){
          editUser(data);// Gọi Ajax call API
        }
        else{
            toastr.warning('Chưa chọn Role!', 'Warning')
        }


    });

    function editUser(data) {
        //Call api
        $.ajax({
            type: "PUT",
            url: "/api/user/" + $('#userId').val() ,
            data: JSON.stringify(data) ,
            contentType: "application/JSON",
            //dataType: "JSON",
            success: function () {
                toastr.success('Thay đổi chức vụ thành công!', 'Success');
                 setTimeout(function () {// load lại trang sau khi save thành công
                    window.location.reload();
                }, 1200); //
            },
            error: function () {
                toastr.warning('Xảy ra lỗi khi thực hiện thao tác!', 'Cảnh báo');
            }

        });
    }


    function saveUser(data) {
        //Call api
        $.ajax({
            type: "POST",
            url: "/api/user",
            data: JSON.stringify(data),
            contentType: "application/JSON",
            //dataType: "JSON",
            success: function () {
                toastr.success('Thêm nhân viên thành công!', 'Success');
                setTimeout(function () {// load lại trang sau khi save thành công
                    window.location.reload();
                }, 1200); //
            },
            error: function () {
                toastr.error('Xảy ra lỗi khi thực hiện thao tác!', 'Cảnh báo');
            }

        });
    }

    function clickDeleteUser(id) {
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
                deleteUsers(customerId, row);
            }
        });


    }

    function deleteUsers(customerId, row) {//Xóa tòa nhà
        $.ajax({
            type: "DELETE",
            url: "/api/user",
            data: JSON.stringify(customerId),
            contentType: "application/JSON",
            //dataType: "JSON",
            success: function (respond) {
                $('#multi_control').DataTable().row(row).remove().draw();
                toastr.success('Xóa khách hàng thành công!', 'Success');
            },
            error: function (respond) {
                console.log("Failed!");
                console.log(respond);

            }
        });
    }

    $(document).ready(function () {
        var someJsVar = "<c:out value='${addOrEditNews}'/>";
        $('#btnSearch').click(function () {
            $('#listForm').submit();
        });
    });

    function warningBeforeDelete() {
        showAlertBeforeDelete(function () {
            event.preventDefault();
            var dataArray = $('tbody input[type=checkbox]:checked').map(function () {
                return $(this).val();
            }).get();
            deleteUser(dataArray);
        });
    }

    function deleteUser(data) {
        $.ajax({
            url: '${formAjax}/',
            type: 'DELETE',
            dataType: 'json',
            contentType: 'application/json',
            data: JSON.stringify(data),
            success: function (res) {
                window.location.href = "<c:url value='/admin/user-list?message=delete_success'/>";
            },
            error: function (res) {
                console.log(res);
                window.location.href = "<c:url value='/admin/user-list?message=error_system'/>";
            }
        });
    }


</script>
