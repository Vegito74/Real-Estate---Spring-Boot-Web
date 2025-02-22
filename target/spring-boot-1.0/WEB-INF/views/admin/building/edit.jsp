<%--
  Created by IntelliJ IDEA.
  User: Trọng Nguyễn
  Date: 11/6/2024
  Time: 7:09 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/common/taglib.jsp" %>
<c:url var="buildingAPI" value="/api/building"/>


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
                    <div class="card-header bg-dark v-middle">
                        <h4 class="m-b-0 text-white">Add New Building</h4>
                    </div>
                    <form:form modelAttribute="buildingEdit" id="form-edit" method="GET">
                        <!-- Dòng 1-->
                        <div class="form-body">
                            <form>
                                <div class="card-body">
                                    <div class="row ">
                                        <div class="col-md-1">
                                            <div class="form-group">
                                                <label class="control-label"> Tên tòa nhà:</label>
                                            </div>
                                        </div>
                                        <!--/span-->
                                        <div class="col-md-11">
                                            <div class="form-group has-danger">
                                                <form:input type="text" id="name" name="name"
                                                            class="form-control form-control-danger" path="name"/>

                                                <!-- <small class="form-control-feedback"> This field has error. </small> -->
                                            </div>
                                        </div>

                                    </div>


                                    <!--/Dòng 2-->
                                    <div class="row">
                                        <div class="col-md-1">
                                            <div class="form-group">
                                                <label class="control-label"> Quận:</label>
                                            </div>
                                        </div>
                                        <div class="col-md-3">
                                            <div class="form-group has-danger">
                                                <form:select path="district"
                                                             class="form-control custom-select"
                                                             tabindex="1" >
                                                    <form:option value="">-- Chọn Quận --</form:option>
                                                    <form:options items="${districts}"/>

                                                </form:select>
                                            </div>
                                        </div>
                                        <div class="col-md-1 ">
                                            <div class="form-group text-right">
                                                <label class="control-label  "> Phường:</label>
                                            </div>
                                        </div>
                                        <div class="col-md-3">
                                            <div class="form-group has-danger">
                                                <form:input type="text" id="ward" name="ward"
                                                            class="form-control form-control-danger" path="ward"/>
                                            </div>
                                        </div>

                                        <div class="col-md-1">
                                            <div class="form-group text-right">
                                                <label class="control-label"> Đường:</label>
                                            </div>
                                        </div>
                                        <div class="col-md-3">
                                            <div class="form-group has-danger">
                                                <form:input type="text" id="street" name="street"
                                                            class="form-control form-control-danger" path="street"/>
                                            </div>
                                        </div>

                                    </div>

                                    <!--/Dòng 3-->
                                    <div class="row">
                                        <div class="col-md-1">
                                            <div class="form-group">
                                                <label class="control-label"> Kết cấu:</label>
                                            </div>
                                        </div>
                                        <div class="col-md-3">
                                            <div class="form-group has-danger">
                                                <form:input type="text" id="structure" name="structure"
                                                            class="form-control form-control-danger" path="structure"/>
                                            </div>
                                        </div>
                                        <div class="col-md-1 ">
                                            <div class="form-group text-right">
                                                <label class="control-label  "> Hướng:</label>
                                            </div>
                                        </div>
                                        <div class="col-md-3">
                                            <div class="form-group has-danger">
                                                <input type="text" id="direction" name="direction"
                                                       class="form-control form-control-danger" placeholder="">
                                            </div>
                                        </div>


                                    </div>
                                    <!--/row-->
                                    <div class="row">
                                        <div class="col-md-1">
                                            <div class="form-group ">
                                                <label class="control-label"> Loại tòa nhà:</label>
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <fieldset class="checkbox">
                                                    <form:checkboxes items="${types}" path="typeCode"/>
                                                </fieldset>
                                            </div>
                                        </div>
                                        <!--/span-->
                                    </div>

                                    <!--/Dòng 4-->
                                    <div class="row">
                                        <div class="col-md-1">
                                            <div class="form-group">
                                            <label class="control-label">Diện tích sàn:</label>
                                            </div>
                                        </div>
                                        <div class="col-md-3">
                                            <div class="form-group has-danger">
                                                <form:input type="number" id="floorArea" name="floorArea"
                                                            class="form-control form-control-danger" path="floorArea"
                                                            htmlEscape="false" required="true"/>
                                            </div>
                                        </div>
<%--                                        <div class="col-md-1 ">--%>
<%--                                            <div class="form-group text-right">--%>
<%--                                                <label class="control-label  "> Diện tích thuê:</label>--%>
<%--                                            </div>--%>
<%--                                        </div>--%>
<%--                                        <div class="col-md-3">--%>
<%--                                            <div class="form-group has-danger">--%>
<%--                                                <form:input type="text" id="rentArea" name="rentArea"--%>
<%--                                                            class="form-control form-control-danger" path="rentArea"/>--%>
<%--                                            </div>--%>
<%--                                        </div>--%>
<div class="col-md-1">
                                            <div class="form-group text-right">
                                                <label class="control-label"> Số tầng:</label>
                                            </div>
                                        </div>
                                        <div class="col-md-3">
                                            <div class="form-group has-danger">
                                                <form:input type="number" id="level" name="level"
                                                            class="form-control form-control-danger" path="level"/>
                                            </div>
                                        </div>
                                        <div class="col-md-1">
                                            <div class="form-group text-right">
                                                <label class="control-label"> Số tầng hầm:</label>
                                            </div>
                                        </div>
                                        <div class="col-md-3">
                                            <div class="form-group has-danger">
                                                <form:input type="number" id="numberOfBasement" name="numberOfBasement"
                                                            class="form-control form-control-danger"
                                                            path="numberOfBasement"/>
                                            </div>
                                        </div>
                                    </div>

                                    <!--/Dòng 5-->
                                    <div class="row">
                                        <div class="col-md-1">
                                            <div class="form-group">
                                                <label class="control-label">Giá thuê:</label>
                                            </div>
                                        </div>
                                        <div class="col-md-5">
                                            <div class="form-group has-danger">
                                                <form:input type="number" id="rentPrice" name="rentPrice"
                                                            class="form-control form-control-danger" path="rentPrice"/>
                                            </div>
                                        </div>
                                        <div class="col-md-1 ">
                                            <div class="form-group text-right">
                                                <label class="control-label  "> Mô tả giá:</label>
                                            </div>
                                        </div>
                                        <div class="col-md-5">
                                            <div class="form-group has-danger">
                                                <form:input type="text" id="rentPriceDescription"
                                                            name="rentPriceDescription"
                                                            class="form-control form-control-danger"
                                                            path="rentPriceDescription"/>
                                            </div>
                                        </div>
                                    </div>

                                    <!--/Dòng 4-->
                                    <div class="row">
                                        <div class="col-md-1">
                                            <div class="form-group">
                                                <label class="control-label">Thanh toán:</label>
                                            </div>
                                        </div>
                                        <div class="col-md-5">
                                            <div class="form-group has-danger">
                                                <form:input type="text" id="payment" name="payment"
                                                            class="form-control form-control-danger" path="payment"/>
                                            </div>
                                        </div>
                                        <div class="col-md-1 ">
                                            <div class="form-group text-right">
                                                <label class="control-label  "> Đặt cọc:</label>
                                            </div>
                                        </div>
                                        <div class="col-md-5">
                                            <div class="form-group has-danger">
                                                <form:input type="number" id="deposit" name="deposit"
                                                            class="form-control form-control-danger" path="deposit"/>
                                            </div>
                                        </div>


                                    </div>

                                    <!--/Dòng 4-->
                                    <div class="row">
                                        <div class="col-md-1">
                                            <div class="form-group">
                                                <label class="control-label">Phí dịch vụ:</label>
                                            </div>
                                        </div>
                                        <div class="col-md-3">
                                            <div class="form-group has-danger">
                                                <form:input type="text" id="serviceFee" name="serviceFee"
                                                            class="form-control form-control-danger" path="serviceFee"/>
                                            </div>
                                        </div>

                                        <div class="col-md-1">
                                            <div class="form-group text-right">
                                                <label class="control-label"> Phí môi giới:</label>
                                            </div>
                                        </div>
                                        <div class="col-md-3">
                                            <div class="form-group has-danger">
                                                <form:input type="number" id="brokerageFee" name="brokerageFee"
                                                            class="form-control form-control-danger"
                                                            path="brokerageFee"/>
                                            </div>
                                        </div>
                                        <div class="col-md-1 ">
                                            <div class="form-group text-right">
                                                <label class="control-label  "> Phí Oto:</label>
                                            </div>
                                        </div>
                                        <div class="col-md-3">
                                            <div class="form-group has-danger">
                                                <form:input type="text" id="carFee" name="carFee"
                                                            class="form-control form-control-danger" path="carFee"/>
                                            </div>
                                        </div>


                                    </div>


                                    <!--/Dòng 4-->
                                    <div class="row">
                                        <div class="col-md-1">
                                            <div class="form-group">
                                                <label class="control-label">Phí ngoài giờ:</label>
                                            </div>
                                        </div>
                                        <div class="col-md-3">
                                            <div class="form-group has-danger">
                                                <form:input type="text" id="overtimeFee" name="overtimeFee"
                                                            class="form-control form-control-danger"
                                                            path="overtimeFee"/>
                                            </div>
                                        </div>

                                        <div class="col-md-1">
                                            <div class="form-group text-right">
                                                <label class="control-label"> Tiền điện:</label>
                                            </div>
                                        </div>
                                        <div class="col-md-3">
                                            <div class="form-group has-danger">
                                                <form:input type="text" id="electricityFee" name="electricityFee"
                                                            class="form-control form-control-danger"
                                                            path="electricityFee"/>
                                            </div>
                                        </div>
                                        <div class="col-md-1 ">
                                            <div class="form-group text-right">
                                                <label class="control-label  "> Phí Moto:</label>
                                            </div>
                                        </div>
                                        <div class="col-md-3">
                                            <div class="form-group has-danger">
                                                <form:input type="text" id="motoFee" name="motoFee"
                                                            class="form-control form-control-danger" path="motoFee"/>
                                            </div>
                                        </div>


                                    </div>


                                    <!--/Dòng 4-->
                                    <div class="row">
                                        <div class="col-md-1">
                                            <div class="form-group">
                                                <label class="control-label">Thời hạn thuê:</label>
                                            </div>
                                        </div>
                                        <div class="col-md-5">
                                            <div class="form-group has-danger">
                                                <form:input type="text" id="rentTime" name="rentTime"
                                                            class="form-control form-control-danger" path="rentTime"/>
                                            </div>
                                        </div>
                                        <div class="col-md-1 ">
                                            <div class="form-group text-right">
                                                <label class="control-label  "> Thời gian trang trí:</label>
                                            </div>
                                        </div>
                                        <div class="col-md-5">
                                            <div class="form-group has-danger">
                                                <form:input type="text" id="decorationTime" name="decorationTime"
                                                            class="form-control form-control-danger"
                                                            path="decorationTime"/>
                                            </div>
                                        </div>


                                    </div>

                                    <!--/Dòng 4-->
                                    <div class="row">
                                        <div class="col-md-1">
                                            <div class="form-group">
                                                <label class="control-label">Tên quản lý:</label>
                                            </div>
                                        </div>
                                        <div class="col-md-5">
                                            <div class="form-group has-danger">
                                                <form:input type="text" id="managerName" name="managerName"
                                                            class="form-control form-control-danger"
                                                            path="managerName"/>
                                            </div>
                                        </div>
                                        <div class="col-md-1 ">
                                            <div class="form-group text-right">
                                                <label class="control-label  ">SĐT Quản lý:</label>
                                            </div>
                                        </div>
                                        <div class="col-md-5">
                                            <div class="form-group has-danger">
                                                <form:input type="number" id="managerPhone" name="managerPhone"
                                                            class="form-control form-control-danger"
                                                            path="managerPhone"/>
                                            </div>
                                        </div>


                                    </div>

                                    <!--/Dòng 4-->
                                    <div class="row">
                                        <div class="col-md-1">
                                            <div class="form-group">
                                                <label class="control-label">Ghi chú:</label>
                                            </div>
                                        </div>
                                        <div class="col-md-11">
                                            <div class="form-group has-danger">
                                                <form:input type="textarea" id="note" name="note"
                                                            class="form-control form-control-danger" path="note"/>
                                            </div>
                                        </div>


                                    </div>
                                    <div class="row  d-flex justify-content-center">
                                        <c:if test="${not empty buildingEdit.id}">
                                            <button id="btnAddOrUpdateBuilding" type="button"
                                                    class="btn btn-success ms-auto">
                                                <i class="m-r-10 m-l-40 mdi mdi-content-save"></i>
                                                Update Building
                                            </button>

                                            <form:hidden path="id" id="buildingId"/>
                                        </c:if>
                                        <c:if test="${empty buildingEdit.id}">
                                            <button id="btnAddOrUpdateBuilding" type="button"
                                                    class="btn btn-success ms-auto">
                                                <i class="m-r-10 m-l-40 mdi mdi-content-save"></i>
                                                Add New Building
                                            </button>

                                        </c:if>

                                        <button id="btnCancel" type="button" class="  btn btn-dark ms-auto"
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

