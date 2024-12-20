<%--
  Created by IntelliJ IDEA.
  User: baruk
  Date: 12/2/2024
  Time: 1:04 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@include file="/common/taglib.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">


<html>
<head>
    <title>Title</title>
</head>
<body>
<div
        class="hero page-inner overlay"
        style="background-image: url('web/images/hero_bg_1.jpg')"
>
    <div class="container">
        <div class="row justify-content-center align-items-center">
            <div class="col-lg-9 text-center mt-5">
                <h1 class="heading" data-aos="fade-up">Properties</h1>

                <nav
                        aria-label="breadcrumb"
                        data-aos="fade-up"
                        data-aos-delay="200"
                >
                    <ol class="breadcrumb text-center justify-content-center">
                        <li class="breadcrumb-item"><a href="index.html">Home</a></li>
                        <li
                                class="breadcrumb-item active text-white-50"
                                aria-current="page"
                        >
                            Properties
                        </li>
                    </ol>
                </nav>
            </div>
        </div>
    </div>
</div>

<div class="section">
    <div class="container">
        <div class="row mb-5 align-items-center">
            <div class="col-lg-6 text-center mx-auto">
                <h2 class="font-weight-bold text-primary heading">
                    Nổi bật
                </h2>
            </div>
        </div>
        <div class="row">
            <div class="col-12">
                <div class="property-slider-wrap">
                    <div class="property-slider">

                        <!-- .item -->
                        <c:forEach items="${buildingTop5}" var="items">
                            <div class="property-item">
                                <a href="/property-single" class="img">
                                    <img src="web/images/img_2.jpg" alt="Image" class="img-fluid"/>
                                </a>

                                <div class="property-content">
                                    <div class="price mb-2"><span>${items.rentPrice}tr/m<sup>2</sup></span></div>
                                    <div>
                                        <span class="d-block mb-2 text-black-50">${items.address}</span>
                                        <span class="city d-block mb-3">${items.name}</span>

                                        <div class="specs d-flex mb-4">
                                            <span class="d-block d-flex align-items-center me-3">
                                            <span class="icon-home2 me-2"></span>
                                            <span class="caption">Hướng ${items.direction} </span>
                                            </span>
                                            <span class="d-block d-flex align-items-center">
                                            <span class="icon-cube me-2"></span>
                                            <span class="caption">${items.level} Tầng</span>
                                            </span>
                                        </div>

                                        <a type="button" id="btnSet" onclick="setInfo(${items.id}, '${items.name}')" data-bs-toggle="modal" data-bs-target="#exampleModal"  class="btn btn-primary py-2 px-3">Liên hệ</a>
                                    </div>
                                </div>
                            </div>
                            <!-- .item -->
                        </c:forEach>


                        <!-- .item -->
                    </div>

                    <div
                            id="property-nav"
                            class="controls"
                            tabindex="0"
                            aria-label="Carousel Navigation"
                    >
                <span
                        class="prev"
                        data-controls="prev"
                        aria-controls="property"
                        tabindex="-1"
                >Prev</span
                >
                        <span
                                class="next"
                                data-controls="next"
                                aria-controls="property"
                                tabindex="-1"
                        >Next</span
                        >
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<div class="section section-properties">
    <div class="container">
        <div class="row">

            <c:forEach items="${buildings}" var="items">
                <div class="col-xs-12 col-sm-6 col-md-6 col-lg-4">
                    <div class="property-item mb-30">
                        <a href="/property-single" class="img">
                            <img src="web/images/img_2.jpg" alt="Image" class="img-fluid"/>
                        </a>

                        <div class="property-content">
                            <div class="price mb-2"><span>${items.rentPrice}tr/m<sup>2</sup></span></div>
                            <div>
                                <span class="d-block mb-2 text-black-50">${items.address}</span>
                                <span class="city d-block mb-3">${items.name}</span>

                                <div class="specs d-flex mb-4">
                                            <span class="d-block d-flex align-items-center me-3">
                                            <span class="icon-home2 me-2"></span>
                                            <span class="caption">Hướng ${items.direction} </span>
                                            </span>
                                    <span class="d-block d-flex align-items-center">
                                            <span class="icon-cube me-2"></span>
                                            <span class="caption">${items.level} Tầng</span>
                                            </span>
                                </div>
                                <a type="button" id="btnSetInfo" onclick="setInfo(${items.id}, '${items.name}')" data-bs-toggle="modal" data-bs-target="#exampleModal"  class="btn btn-primary py-2 px-3">Liên hệ</a
                                >
                            </div>
                        </div>
                    </div>
                    <!-- .item -->
                </div>
            </c:forEach>


            <div class="col-xs-12 col-sm-6 col-md-6 col-lg-4">
                <div class="property-item mb-30">
                    <a href="property-single.html" class="img">
                        <img src="web/images/img_7.jpg" alt="Image" class="img-fluid"/>
                    </a>

                    <div class="property-content">
                        <div class="price mb-2"><span>$1,291,000</span></div>
                        <div>
                  <span class="d-block mb-2 text-black-50"
                  >5232 California Fake, Ave. 21BC</span
                  >
                            <span class="city d-block mb-3">California, USA</span>

                            <div class="specs d-flex mb-4">
                    <span class="d-block d-flex align-items-center me-3">
                      <span class="icon-bed me-2"></span>
                      <span class="caption">2 beds</span>
                    </span>
                                <span class="d-block d-flex align-items-center">
                      <span class="icon-bath me-2"></span>
                      <span class="caption">2 baths</span>
                    </span>
                            </div>

                            <a
                                    href="property-single.html"
                                    class="btn btn-primary py-2 px-3"
                            >See details</a
                            >
                        </div>
                    </div>
                </div>
                <!-- .item -->
            </div>
            <div class="col-xs-12 col-sm-6 col-md-6 col-lg-4">
                <div class="property-item mb-30">
                    <a href="property-single.html" class="img">
                        <img src="web/images/img_8.jpg" alt="Image" class="img-fluid"/>
                    </a>

                    <div class="property-content">
                        <div class="price mb-2"><span>$1,291,000</span></div>
                        <div>
                  <span class="d-block mb-2 text-black-50"
                  >5232 California Fake, Ave. 21BC</span
                  >
                            <span class="city d-block mb-3">California, USA</span>

                            <div class="specs d-flex mb-4">
                    <span class="d-block d-flex align-items-center me-3">
                      <span class="icon-bed me-2"></span>
                      <span class="caption">2 beds</span>
                    </span>
                                <span class="d-block d-flex align-items-center">
                      <span class="icon-bath me-2"></span>
                      <span class="caption">2 baths</span>
                    </span>
                            </div>

                            <a
                                    href="property-single.html"
                                    class="btn btn-primary py-2 px-3"
                            >See details</a
                            >
                        </div>
                    </div>
                </div>
                <!-- .item -->
            </div>
            <div class="col-xs-12 col-sm-6 col-md-6 col-lg-4">
                <div class="property-item mb-30">
                    <a href="property-single.html" class="img">
                        <img src="web/images/img_1.jpg" alt="Image" class="img-fluid"/>
                    </a>

                    <div class="property-content">
                        <div class="price mb-2"><span>$1,291,000</span></div>
                        <div>
                  <span class="d-block mb-2 text-black-50"
                  >5232 California Fake, Ave. 21BC</span
                  >
                            <span class="city d-block mb-3">California, USA</span>

                            <div class="specs d-flex mb-4">
                    <span class="d-block d-flex align-items-center me-3">
                      <span class="icon-bed me-2"></span>
                      <span class="caption">2 beds</span>
                    </span>
                                <span class="d-block d-flex align-items-center">
                      <span class="icon-bath me-2"></span>
                      <span class="caption">2 baths</span>
                    </span>
                            </div>

                            <a
                                    href="property-single.html"
                                    class="btn btn-primary py-2 px-3"
                            >See details</a
                            >
                        </div>
                    </div>
                </div>
                <!-- .item -->
            </div>
        </div>
        <div class="row align-items-center py-5">
            <div class="col-lg-3">Pagination (1 of 10)</div>
            <div class="col-lg-6 text-center">
                <div class="custom-pagination">
                    <a href="#" class="active">1</a>
                    <a href="#">2</a>
                    <a href="#">3</a>
                    <a href="#">4</a>
                    <a href="#">5</a>
                </div>
            </div>
        </div>
    </div>
    <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel" ></h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <form id="formContact">
                        <div class="mb-3">
                            <label class="col-form-label">Your Name:</label>
                            <input type="text" class="form-control" id="fullName" name="fullName">
                        </div>
                        <div class="mb-3">
                            <label  class="col-form-label">Your Email:</label>
                            <input type="text" class="form-control" id="email" name="email">
                        </div>
                        <div class="mb-3">
                            <label  class="col-form-label">Phone Number:</label>
                            <input type="text" class="form-control" id="phone" name="phone">
                        </div>
                        <div class="mb-3">
                            <label class="col-form-label">Message:</label>
                            <textarea class="form-control" id="demand" name="demand"></textarea>
                        </div>
                    </form>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                    <button type="button" id="btnAddCustomer" class="btn btn-primary">Gửi yêu cầu</button>
                </div>
            </div>
        </div>
    </div>
</div>
<script>
       function setInfo(id, name){
            $('#exampleModalLabel').text(name);
            $('#demand').val("Tôi muốn được tư vấn về tòa nhà "+ name);
        }

       //Thêm khách hàng
       $('#btnAddCustomer').click(function (event) {
           event.preventDefault();
           var formData = $("#formContact").serializeArray();
           var dataArray = {};
           $.each(formData, function (i, v) {
               dataArray["" + v.name + ""] = v.value;
           });
           if (dataArray["name"] === '') {
               toastr.error('Không được để trống Tên!', 'Warning', {"progressBar": true});
           } else if (dataArray["customerPhone"] === '') {
               toastr.error('Không được để trống Số điện thoại!', 'Warning', {"progressBar": true});
           } else if (dataArray["email"] === '') {
               toastr.error('Không được để trống Email!', 'Warning', {"progressBar": true});
           } else {
               addCustomer(dataArray);
           }
       });

       function addCustomer(data) {
           $.ajax({
               type: "PUT",
               url: "api/contract/customer",
               data: JSON.stringify(data),
               contentType: "application/JSON",
               //dataType: "JSON",
               success: function (respond) {
                   toastr.success('Gửi yêu cầu thành công!', 'Success', {"progressBar": true});
                   $('#fullName').val('');
                   $('#phone').val('');
                   $('#email').val('');
                   $('#demand').val('');
               },
               error: function (respond) {
                   toastr.error('Gửi yêu cầu không thành công!', 'Success', {"progressBar": true});
                   console.log(respond);
               }

           });
       }
</script>
</body>

</html>
