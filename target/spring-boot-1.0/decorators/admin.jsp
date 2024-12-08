<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp" %>
<html>
<head>
	<!-- Tell the browser to be responsive to screen width -->
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="description" content="">
	<meta name="author" content="">
	<!-- Favicon icon -->
	<link rel="icon" type="image/png" sizes="16x16" href="assets/images/favicon.png">
	<title>Edit Building</title>
	<!-- Custom CSS -->
	<link href="assets/libs/chartist/dist/chartist.min.css" rel="stylesheet">
	<link href="assets/extra-libs/c3/c3.min.css" rel="stylesheet">
	<link href="assets/extra-libs/jvector/jquery-jvectormap-2.0.2.css" rel="stylesheet" />
	<!-- Custom CSS -->
	<link href="assets/libs/datatables.net-bs4/css/dataTables.bootstrap4.css" rel="stylesheet">
	<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
		  rel="stylesheet">
	<link href="dist/css/style.min.css" rel="stylesheet">
	<link href="assets/libs/toastr/build/toastr.min.css" rel="stylesheet">
	<!-- Custom CSS -->
	<link href="assets/libs/morris.js/morris.css" rel="stylesheet">
	<link href="assets/libs/chartist/dist/chartist.min.css" rel="stylesheet">
	<link href="assets/extra-libs/c3/c3.min.css" rel="stylesheet">
	<!-- Custom CSS -->
	<link href="dist/css/style.min.css" rel="stylesheet">
	<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->

	<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
	<!--[if lt IE 9]>

	<script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
	<script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>

	<![endif]-->
</head>
<body class="no-skin">
<div class="preloader">
	<div class="lds-ripple">
		<div class="lds-pos"></div>
		<div class="lds-pos"></div>
	</div>
</div>
<div id="main-wrapper">
<%@ include file="/common/admin/header.jsp" %>
<!-- header -->
    	<%@ include file="/common/admin/menu.jsp" %>
    	<!-- header -->
    	<script src="assets/libs/jquery/dist/jquery.min.js"></script>
    	<!-- Bootstrap tether Core JavaScript -->
	<script src="assets/libs/popper.js/dist/umd/popper.min.js"></script>
	<script src="assets/libs/bootstrap/dist/js/bootstrap.min.js"></script>
	<!-- apps -->
	<script src="dist/js/app.min.js"></script>
	<script src="dist/js/app.init.js"></script>
	<script src="dist/js/app-style-switcher.js"></script>
	<!-- slimscrollbar scrollbar JavaScript -->
	<script src="assets/libs/perfect-scrollbar/dist/perfect-scrollbar.jquery.min.js"></script>
	<script src="assets/extra-libs/sparkline/sparkline.js"></script>
	<!--Wave Effects -->
	<script src="dist/js/waves.js"></script>
	<!--Menu sidebar -->
	<script src="dist/js/sidebarmenu.js"></script>
	<!--Custom JavaScript -->
	<script src="dist/js/custom.js"></script>
	<script src="assets/libs/toastr/build/toastr.min.js"></script>
<script src="assets/extra-libs/toastr/toastr-init.js"></script>
	<!--This page plugins -->
		<dec:body/>

<%@ include file="/common/admin/footer.jsp" %>
</div>
	<!-- All Jquery -->
	<!-- ============================================================== -->






	<script src="assets/extra-libs/DataTables/datatables.min.js"></script>
	<!-- start - This is for export functionality only -->
	<script src="https://cdn.datatables.net/buttons/1.5.1/js/dataTables.buttons.min.js"></script>
	<script src="https://cdn.datatables.net/buttons/1.5.1/js/buttons.flash.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/jszip/3.1.3/jszip.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.32/pdfmake.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.32/vfs_fonts.js"></script>
	<script src="https://cdn.datatables.net/buttons/1.5.1/js/buttons.html5.min.js"></script>
	<script src="https://cdn.datatables.net/buttons/1.5.1/js/buttons.print.min.js"></script>
	<script src="dist/js/pages/datatable/datatable-advanced.init.js"></script>
<!--chartis chart-->
<script src="assets/libs/chartist/dist/chartist.min.js"></script>
<script src="assets/libs/chartist-plugin-tooltips/dist/chartist-plugin-tooltip.min.js"></script>
<!--c3 charts -->
<script src="assets/extra-libs/c3/d3.min.js"></script>
<script src="assets/extra-libs/c3/c3.min.js"></script>
<script src="dist/js/pages/dashboards/dashboard3.js"></script>

<!-- chartjs -->
<script src="assets/libs/raphael/raphael.min.js"></script>
<script src="assets/libs/morris.js/morris.min.js"></script>


</body>
</html>