<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <!-- <title>Trang chủ</title> -->
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
                                <h1 class="font-light text-right mb-0">23</h1>
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
                                <p class="font-16 m-b-5">Property</p>
                            </div>
                            <div class="col-5">
                                <h1 class="font-light text-right mb-0">274</h1>
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
                                <p class="font-16 m-b-5">Transaction</p>
                            </div>
                            <div class="col-5">
                                <h1 class="font-light text-right mb-0">157</h1>
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
                                <p class="font-16 m-b-5">Customer</p>
                            </div>
                            <div class="col-5">
                                <h1 class="font-light text-right mb-0">236</h1>
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
        <div class="row">
            <div class="col-lg-8 col-md-12">
                <div class="card">
                    <div class="card-body">
                        <div class="d-flex align-items-center">
                            <div>
                                <h4 class="card-title">Trading chart</h4>
                            </div>
                            <div class="ml-auto">
                                <div class="dl m-b-10">
                                    <select class="custom-select border-0 text-muted">
                                        <option value="0" selected="selected">August 2024</option>
                                        <option value="1">May 2024</option>
                                        <option value="2">March 2024</option>
                                        <option value="3">June 2024</option>
                                    </select>
                                </div>
                            </div>
                        </div>
                        <div class="sales5 ct-charts m-t-30"></div>
                        <ul class="list-inline m-t-30 text-center font-12">
                            <li class="list-inline-item text-muted"><i class="fa fa-circle text-info m-r-5"></i> Số lượng giao dịch</li>
                            <li class="list-inline-item text-muted"><i class="fa fa-circle text-success m-r-5"></i> MaterialPro Admin</li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 col-md-12">
                <div class="card bg-info">
                    <div class="card-body mb-0">
                        <h4 class="card-title text-white">Thursday
                            <span class="font-14 font-normal text-white op-5">
                                <script>
						            document.write(new Date().getFullYear()+'-'+(new Date().getMonth()+1)+'-'+  new Date().getDate());
					             </script>
                            </span>
                        </h4>
                        <div class="d-flex align-items-center flex-row m-t-30">
                            <h1 class="font-light text-white"><i class="wi wi-day-sleet"></i> <span>35<sup>°</sup></span></h1>
                        </div>
                    </div>
                    <div class="weather-report" style="height:78px; width:100%;"></div>
                </div>
                <div class="card bg-success">
                    <div class="card-body">
                        <div class="d-flex align-items-center">
                            <div>
                                <h4 class="card-title text-white">Users</h4>
                            </div>
                            <div class="ml-auto">
                                <h2 class="font-light text-white">23</h2>
                            </div>
                        </div>
                        <div class="m-t-20 m-b-10">
                            <ul class="list-style-none m-t-10">
                                <li>
                                    <div class="d-flex align-items-center">
                                        <div>
                                            <h4 class="mb-0 font-medium text-white">24% <span class="font-normal font-14 text-white op-5 m-l-5">Manager</span></h4>
                                        </div>
                                    </div>
                                    <div class="progress m-t-10 user-progress-bg">
                                        <div class="progress-bar bg-white" role="progressbar" style="width: 24%" aria-valuenow="58" aria-valuemin="0" aria-valuemax="100"></div>
                                    </div>
                                </li>
                                <li class="m-t-30">
                                    <div class="d-flex align-items-center">
                                        <div>
                                            <h4 class="mb-0 font-medium text-white">76% <span class="font-normal font-14 text-white op-5 m-l-5">Staff</span></h4>
                                        </div>
                                    </div>
                                    <div class="progress m-t-10 user-progress-bg">
                                        <div class="progress-bar bg-white" role="progressbar" style="width: 76%" aria-valuenow="16" aria-valuemin="0" aria-valuemax="100"></div>
                                    </div>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Table -->
        <!-- ============================================================== -->
        <div class="row">
            <div class="col-lg-12">
                <div class="card">
                    <div class="card-body">
                        <div class="d-flex align-items-center">
                            <div>
                                <h4 class="card-title">Transaction Status </h4>
                            </div>
                            <div class="ml-auto">
                                <div class="dl m-b-10">
                                    <select class="custom-select border-0 text-muted">
                                        <option value="0" selected="">
                                            <script>
                                                document.write(new Date().getFullYear()+'-'+(new Date().getMonth()+1));
                                            </script>
                                        </option>
                                        <option value="1">May 2018</option>
                                        <option value="2">March 2018</option>
                                        <option value="3">June 2018</option>
                                    </select>
                                </div>
                            </div>
                        </div>
                        <div class="table-responsive">
                            <table class="table no-wrap v-middle">
                                <thead>
                                <tr style="font-size: small">
                                    <th class="border-0 text-muted">Customer</th>
                                    <th class="border-0 text-muted">Building</th>
                                    <th class="border-0 text-muted">Implementers</th>
                                    <th class="border-0 text-muted text-center">Status</th>
                                    <th class="border-0 text-muted text-center">Request date</th>
                                    <th class="border-0 text-muted text-center">Note</th>
                                </tr>
                                </thead>
                                <tbody>
                                <tr>
                                    <td>
                                        <div class="d-flex no-block align-items-center">
                                            <div class="m-r-10" style="margin-right: 10px"><img src="assets/images/users/d2.jpg" alt="user" class="rounded-circle" width="45" /></div>
                                            <div class="">
                                                <h5 class="m-b-0 font-16 font-medium" style="margin-bottom: 0" >Nguyễn Tiến Duy</h5><span class="text-muted" style="font-size: small; margin-bottom: 0">lvthongsoai74@gmail.com</span></div>
                                        </div>
                                    </td>
                                    <td>WinterHold Building</td>
                                    <td>
                                        <div class="popover-icon">
                                            <a class="btn-circle btn btn-info" href="javascript:void(0)">SS</a>
                                            <a class="btn-circle btn btn-purple text-white popover-item" href="javascript:void(0)">DS</a>
                                            <a class="btn-circle btn btn-danger text-white popover-item" href="javascript:void(0)">RP</a>
                                            <a class="btn-circle btn btn-outline-secondary" href="javascript:void(0)">+</a>
                                        </div>
                                    </td>
                                    <td class="text-center"><i class="fa fa-circle text-danger" data-toggle="tooltip" data-placement="top" title="In Progress"></i></td>
                                    <td class="text-center">2024-12-01</td>
                                    <td class="font-medium text-center">Cần tư vấn tòa EAUT Building</td>
                                </tr>
                                <tr>
                                    <td>
                                        <div class="d-flex no-block align-items-center">
                                            <div class="m-r-10"><img src="assets/images/users/d1.jpg" alt="user" class="rounded-circle" width="45" /></div>
                                            <div class="">
                                                <h5 class="m-b-0 font-16 font-medium">Nguyễn Thị Thúy</h5><span class="text-muted">Kristeen@gmail.com</span></div>
                                        </div>
                                    </td>
                                    <td></td>
                                    <td>
                                        <div class="popover-icon">
                                            <a class="btn-circle btn btn-info" href="javascript:void(0)">SS</a>
                                            <a class="btn-circle btn btn-primary text-white popover-item" href="javascript:void(0)">DS</a>
                                            <a class="btn-circle btn btn-outline-secondary" href="javascript:void(0)">+</a>
                                        </div>
                                    </td>
                                    <td class="text-center"><i class="fa fa-circle text-success" data-toggle="tooltip" data-placement="top" title="Active"></i></td>
                                    <td class="text-center">2024-12-01</td>
                                    <td class="font-medium text-center">Yêu cầu tư liên hệ tư vấn</td>
                                </tr>

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
    <!-- ============================================================== -->
    <!-- End Container fluid  -->
    <!-- ============================================================== -->
    <!-- ============================================================== -->

</div>
</body>
</html>