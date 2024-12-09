<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@include file="/common/taglib.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Liên hệ</title>
</head>
<body>
<div
        class="hero page-inner overlay"
        style="background-image: url('web/images/hero_bg_1.jpg')"
>
    <div class="container">
        <div class="row justify-content-center align-items-center">
            <div class="col-lg-9 text-center mt-5">
                <h1 class="heading" data-aos="fade-up">Liên hệ với chúng tôi</h1>

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
                            Contact
                        </li>
                    </ol>
                </nav>
            </div>
        </div>
    </div>
</div>

<div class="section">
    <div class="container">
        <div class="row">
            <div
                    class="col-lg-4 mb-5 mb-lg-0"
                    data-aos="fade-up"
                    data-aos-delay="100"
            >
                <div class="contact-info">
                    <div class="address mt-2">
                        <i class="icon-room"></i>
                        <h4 class="mb-2">Location:</h4>
                        <p>
                            Phương Canh, Nam Từ Liêm,<br/>
                            Hà Nội
                        </p>
                    </div>

                    <div class="open-hours mt-4">
                        <i class="icon-clock-o"></i>
                        <h4 class="mb-2">Open Hours:</h4>
                        <p>
                            Thứ 2 - Thứ 7:<br/>
                            8:00 AM - 23:00 PM
                        </p>
                    </div>

                    <div class="email mt-4">
                        <i class="icon-envelope"></i>
                        <h4 class="mb-2">Email:</h4>
                        <p>info@Untree.co</p>
                    </div>

                    <div class="phone mt-4">
                        <i class="icon-phone"></i>
                        <h4 class="mb-2">Call:</h4>
                        <p>+84 359538704</p>
                    </div>
                </div>
            </div>
            <div class="col-lg-8" data-aos="fade-up" data-aos-delay="200">
                <form id="formAdd">
                    <div class="row">
                        <div class="col-6 mb-3">
                            <input id="fullName" name="fullName"
                                   type="text"
                                   class="form-control"
                                   placeholder="Your Name"
                            />
                        </div>
                        <div class="col-6 mb-3">
                            <input id="email" name="email" type="email"
                                   class="form-control"
                                   placeholder="Your Email"
                            />
                        </div>
                        <div class="col-12 mb-3">
                            <input id="phone" name="phone"
                                   type="text"
                                   class="form-control"
                                   placeholder="Phone Number"
                            />
                        </div>
                        <div class="col-12 mb-3">
                  <textarea
                          name="demand"
                          id="demand"
                          cols="30"
                          rows="7"
                          class="form-control"
                          placeholder="Message"
                  ></textarea>
                        </div>

                        <div class="col-12">
                            <button
                                    type="button"
                                    value="Send Request"
                                    class="btn btn-primary"
                                    id="btnAddCustomer"
                            >Send Request
                            </button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>

<script>
    //Thêm khách hàng
    $('#btnAddCustomer').click(function (event) {
        event.preventDefault();
        var formData = $("#formAdd").serializeArray();
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
            },
            error: function (respond) {
                console.log("Failed!");
                console.log(respond);
            }

        });
    }
</script>

<!-- /.untree_co-section --></body>

</html>
