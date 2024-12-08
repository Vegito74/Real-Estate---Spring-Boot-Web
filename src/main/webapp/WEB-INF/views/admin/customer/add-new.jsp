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
                <h4 class="page-title">Building Action</h4>
            </div>
            <div class="col-7 align-self-center">
                <div class="d-flex align-items-center justify-content-end">
                    <nav aria-label="breadcrumb">
                        <ol class="breadcrumb">
                            <li class="breadcrumb-item">
                                <a href="#">Home</a>
                            </li>
                            <li class="breadcrumb-item active" aria-current="page">Building Action</li>
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
                        <h4 class="m-b-0 text-white">Add New Customer</h4>
                    </div>
                    <form id="form-edit" method="GET">
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
                                                <input type="text" id="name" name="name"
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
                                                <input type="text" id="customerPhone" name="name"
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
                                                <input type="text" id="status" name="status"
                                                       class="form-control form-control-danger"/>
                                            </div>
                                        </div>
                                        <div class="col-md-3"></div>
                                    </div>

                                    <div class="row  d-flex justify-content-center">
                                        <button id="btnAddOrUpdateBuilding" type="button"
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

                            </form>
                        </div>
                    </form>

                </div>


            </div>
        </div>
    </div>
</div>

<script>
    $('#btnCancel').click(function () {
        window.location.href = '<c:url value ="/admin/building-view"/>'; //Quay về trang list
    })

    var imageBase64 = '';
    var imageName = '';


    $('#btnAddOrUpdateBuilding').click(function () {

        var data = {};
        var typeCode = [];
        var formData = $('#form-edit').serializeArray();


        $.each(formData, function (index, value) {
            if (value.name != 'typeCode') {
                data["" + value.name + ""] = value.value;
            } else {
                typeCode.push(value.value);
            }

            if ('' != imageBase64) {
                data['imageBase64'] = imageBase64;
                data['imageName'] = imageName;
            }
        });
        data['typeCode'] = typeCode;
        if (typeCode != '') {
            addOrUpdateBuilding(data);
        } else {
            toastr.info('Chưa có thông tin loại tòa nhà!', 'Thông báo');
        }

    });

    function openImage(input, imageView) {
        if (input.files && input.files[0]) {
            var reader = new FileReader();
            reader.onload = function (e) {
                $('#' + imageView).attr('src', reader.result);
            }
        }
    }


    $('#uploadImage').change(function (event) {
        var reader = new FileReader();
        var file = $(this)[0].files[0];
        reader.onload = function (e) {
            imageBase64 = e.target.result;
            imageName = file.name;
        }
    });


    function addOrUpdateBuilding(data) {
        //Call api
        $.ajax({
            type: "POST",
            url: "${buildingAPI}",
            data: JSON.stringify(data),
            contentType: "application/JSON",
            dataType: "JSON",
            success: function (respond) {
                window.location.href = '<c:url value="/admin/building-view?message=success"/>';
            },
            error: function (respond) {
                console.log("Failed!");
                console.log(respond);
                toastr.warning('Tên, Quận, Phường, Đường, Diện tích thuê, Số tầng hầm, diện tích sàn không được để trống!', 'Cảnh báo');
            }

        });
    }
</script>
</body>
</html>
