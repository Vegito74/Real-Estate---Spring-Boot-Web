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
            <div class="col-lg-12">
                <form:form modelAttribute="model" id="listFrom" action="${formUrl}" method="GET">
<%--                    <div class="card">--%>
<%--                        <div class="card-header bg-primary">--%>
<%--                            <h4 class="m-b-0 text-white">Danh mục tìm kiếm</h4>--%>
<%--                        </div>--%>


<%--                        <div class="form-body" style="font-size: small">--%>
<%--                            <div class="card-body">--%>
<%--                                <div class="row ">--%>
<%--                                    <div class="col-md-12">--%>
<%--                                        <div class="form-group">--%>
<%--                                            <label class="control-label">Giá trị cần tìm</label>--%>
<%--                                            <form:input path="searchValue" cssClass="form-control input-sm"/>--%>
<%--                                        </div>--%>
<%--                                    </div>--%>

<%--                                </div>--%>
<%--                                <!--/row-->--%>

<%--                                <div class="row d-flex justify-content-center">--%>

<%--                                    <button id="btnSearchBuilding" type="button"--%>
<%--                                            class="btn btn-success ms-auto">--%>
<%--                                        <i class="fas fa-search"></i>--%>
<%--                                        Tìm kiếm--%>
<%--                                    </button>--%>


<%--                                </div>--%>
<%--                            </div>--%>


<%--                        </div>--%>
<%--                    </div>--%>
                    <!-- Multiple table control element -->
                    <div class="row">
                        <div class="col-12">
                            <div class="card">
                                <div class="card-body">
                                    <div class="row">
                                        <h4 class="card-title col-lg-6">Danh sách User</h4>
                                        <div class="col-lg-6 d-flex justify-content-end">
                                            <a type="button" class="btn btn-success" id="addBuilding"
                                               href="/admin/building-edit"><i class="fa fa-user"></i> Add User</a>
                                        </div>
                                    </div>
                                    <h6 class="card-subtitle">Bảng danh sách thông tin các User trong hệ thống
                                    </h6>
                                    <div class="table-responsive" style="font-family:'Times New Roman'">
                                        <table id="multi_control" class="table table-striped table-bordered display"
                                               style="width:100%">
                                            <thead style="font-size: medium">
                                            <tr role="row">
                                                <th>Username</th>
                                                <th>Fullname</th>
                                                <th>Email</th>
                                                <th>Ngày khởi tạo</th>
                                                <th>Action</th>
                                            </tr>
                                            </thead>
                                            <tbody style="font-size: smaller">
                                            <c:forEach var="item" items="${users}">
                                                <tr id="row_${item.id}">
                                                    <td>${item.userName}</td>
                                                    <td>${item.fullName}</td>
                                                    <td>${item.email}</td>
                                                    <td>${item.createdDate}</td>

                                                    <td class="col-lg-2">
                                                        <div class="row d-flex justify-content-center">
                                                            <a type="button" href="<c:url value="/admin/user-edit-${item.id}"/>"
                                                                    class="btn btn-secondary dropdown-toggle "
                                                                    >
                                                                <i class="ti-settings">  Update</i>
                                                            </a>
                                                        </div>


                                                    </td>

                                                </tr>
                                            </c:forEach>
                                            </tbody>
                                            <tfoot>
                                            <tr>

                                               <th>Username</th>
                                                <th>Fullname</th>
                                                <th>Email</th>
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


<script type="text/javascript">
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
