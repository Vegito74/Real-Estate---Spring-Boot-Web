<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<%@ page import="com.javaweb.security.utils.SecurityUtils" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<header class="topbar">
    <nav class="navbar top-navbar navbar-expand-md navbar-dark">
        <div class="navbar-header">
            <!-- This is for the sidebar toggle which is visible on mobile only -->
            <a class="nav-toggler waves-effect waves-light d-block d-md-none" href="javascript:void(0)">
                <i class="ti-menu ti-close"></i>
            </a>
            <!-- ============================================================== -->
            <!-- Logo -->
            <!-- ============================================================== -->
            <div class="navbar-brand">
                <a href="/admin/home" class="logo">
                    <!-- Logo icon -->
                    <b class="logo-icon">
                        <!--You can put here icon as well // <i class="wi wi-sunset"></i> //-->
                        <!-- Dark Logo icon -->
                        <img src="assets/images/logo-icon.png" alt="homepage" class="dark-logo" />
                        <!-- Light Logo icon -->
                        <img src="assets/images/logo-light-icon.png" alt="homepage" class="light-logo" />

                    </b>
                    <!--End Logo icon -->
                    <!-- Logo text -->
                    <span class="logo-text">
                                <!-- dark Logo text -->
                                <img src="assets/images/logo-text.png" alt="homepage" class="dark-logo" />

                        <!-- Light Logo text -->
                                <img src="assets/images/winterhold1.png"  style="margin-left:-5px; margin-top: 7px" width="150" class="light-logo" alt="homepage" />
                            </span>
                </a>
                <a class="sidebartoggler d-none d-md-block" href="javascript:void(0)"
                   data-sidebartype="mini-sidebar">
                    <i class="mdi mdi-toggle-switch mdi-toggle-switch-off font-20"></i>
                </a>
            </div>
            <!-- ============================================================== -->
            <!-- End Logo -->
            <!-- ============================================================== -->
            <!-- ============================================================== -->
            <!-- Toggle which is visible on mobile only -->
            <!-- ============================================================== -->
            <a class="topbartoggler d-block d-md-none waves-effect waves-light" href="javascript:void(0)"
               data-toggle="collapse" data-target="#navbarSupportedContent"
               aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <i class="ti-more"></i>
            </a>
        </div>
        <!-- ============================================================== -->
        <!-- End Logo -->
        <!-- ============================================================== -->
        <div class="navbar-collapse collapse" id="navbarSupportedContent">
            <!-- ============================================================== -->
            <!-- toggle and nav items -->
            <!-- ============================================================== -->
            <ul class="navbar-nav float-left mr-auto">
                <!-- Search -->
                <!-- ============================================================== -->
                <li class="nav-item search-box">
                    <a class="nav-link waves-effect waves-dark" href="/trang-chu">
                        <div class="d-flex align-items-center" style="color: black">
                            <i class=" fas fa-home font-20 mr-1" ></i>
                            <div class="ml-1 d-none d-sm-block">
                                <span>Trang chủ</span>
                            </div>
                        </div>
                    </a>

                </li>
            </ul>
            <!-- ============================================================== -->
            <!-- Right side toggle and nav items -->
            <!-- ============================================================== -->
            <ul class="navbar-nav float-right">
                <!-- Comment -->
                <!-- ============================================================== -->
                <li class="nav-item dropdown border-right">
                    <a class="nav-link dropdown-toggle waves-effect waves-dark" href="" data-toggle="dropdown"
                       aria-haspopup="true" aria-expanded="false">
                        <i class="mdi mdi-bell-outline font-22"></i>
                        <span class="badge badge-pill badge-info noti">3</span>
                    </a>
                    <div class="dropdown-menu dropdown-menu-right mailbox ">
                                <span class="with-arrow">
                                    <span class="bg-primary"></span>
                                </span>
                        <ul class="list-style-none">
                            <li>
                                <div class="drop-title bg-primary text-white">
                                    <h4 class="mb-0 m-t-5">4 New</h4>
                                    <span class="font-light">Thông báo</span>
                                </div>
                            </li>
                            <li>
                                <div class="message-center notifications">
                                    <!-- Message -->
                                    <a href="javascript:void(0)" class="message-item">
                                                <span class="btn btn-danger btn-circle">
                                                    <i class="fa fa-link"></i>
                                                </span>
                                        <div class="mail-contnet">
                                            <h5 class="message-title">Luanch Admin</h5>
                                            <span class="mail-desc">Just see the my new admin!</span>
                                            <span class="time">9:30 AM</span>
                                        </div>
                                    </a>

                                </div>
                            </li>
                            <li>
                                <a class="nav-link text-center m-b-5" href="javascript:void(0);">
                                    <strong>Check all notifications</strong>
                                    <i class="fa fa-angle-right"></i>
                                </a>
                            </li>
                        </ul>
                    </div>
                </li>
                <!-- ============================================================== -->
                <!-- End Comment -->
                <!-- ============================================================== -->
                <!-- ============================================================== -->
                <!-- User profile and search -->
                <!-- ============================================================== -->
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle waves-effect waves-dark pro-pic" href=""
                       data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        <img src="assets/images/users/fire-keeper.jpg" alt="user" class="rounded-circle" width="40">
                        <span class="m-l-5 font-medium d-none d-sm-inline-block"><%=SecurityUtils.getPrincipal().getFullName()%> <i
                                class="mdi mdi-chevron-down"></i></span>
                    </a>
                    <div class="dropdown-menu text-center dropdown-menu-right user-dd ">
                                <span class="with-arrow">
                                    <span class="bg-success"></span>
                                </span>
                        <div class="d-flex no-block align-items-center text-center p-13 bg-success text-white">
                            <div style="margin: 10px">
                                <img src="assets/images/users/fire-keeper.jpg" alt="user"  class="rounded-circle"
                                     width="60">
                            </div>

                            <div style="margin-left: 10px">
                                <p> </p>
                                <h4 class="mb-0">  <%=SecurityUtils.getPrincipal().getFullName()%> </h4>
                                <p class=" mb-0">  <%=SecurityUtils.getPrincipal().getAuthorities()%></p>
                                <p> </p>
                            </div>
                        </div>
                        <a class="dropdown-item" href="/admin/profile-<%=SecurityUtils.getPrincipal().getUsername()%>">
                            <i class="ti-user m-r-5 m-l-5"></i> My Profile</a>

                        <div class="dropdown-divider"></div>
                        <a class="dropdown-item" href="<c:url value="/admin/profile-password"/>">
                            <i class="ti-settings m-r-5 m-l-5"></i> Account Setting</a>
                        <div class="dropdown-divider"></div>
                        <a class="dropdown-item" href="<c:url value='/logout'/>">
                            <i class="fa fa-power-off m-r-5 m-l-5"></i> Logout</a>
                        <div class="dropdown-divider"></div>
                                <a href="" class="btn btn-sm btn-success btn-rounded" >View
                                    Profile</a>
                    </div>
                </li>
                <!-- ============================================================== -->
                <!-- User profile and search -->
                <!-- ============================================================== -->
            </ul>
        </div>
    </nav>
</header>
