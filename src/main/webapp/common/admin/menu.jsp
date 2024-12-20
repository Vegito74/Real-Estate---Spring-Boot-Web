<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<aside class="left-sidebar">
    <!-- Sidebar scroll-->
    <div class="scroll-sidebar">
        <!-- Sidebar navigation-->
        <nav class="sidebar-nav">
            <ul id="sidebarnav">
                <li class="nav-small-cap">
                    <i class="mdi mdi-dots-horizontal"></i>
                    <span class="hide-menu">Home</span>
                </li>
                <li class="sidebar-item">
                    <a class="sidebar-link waves-effect waves-dark" href="<c:url value='/admin/home'/>"
                       aria-expanded="false">
                        <i class="mdi mdi-av-timer"></i>
                        <span class="hide-menu">Dashboard </span>

                    </a>

                </li>

                <li class="nav-small-cap">
                    <i class="mdi mdi-dots-horizontal"></i>
                    <span class="hide-menu">Manager</span>
                </li>

                <li class="sidebar-item">
                    <a class="sidebar-link has-arrow waves-effect waves-dark" href="javascript:void(0)"
                       aria-expanded="false">
                        <i class="ti-bookmark"></i>
                        <span class="hide-menu">Building </span>
                    </a>
                    <ul aria-expanded="false" class="collapse  first-level">
                        <li class="sidebar-item">
                            <a href="<c:url value='/admin/building-view'/>" class="sidebar-link">
                                <i class="mdi mdi-book-multiple"></i>
                                <span class="hide-menu"> Building List </span>
                            </a>
                        </li>
                        <li class="sidebar-item">
                            <a href="<c:url value='/admin/building-edit'/>" class="sidebar-link">
                                <i class="mdi mdi-book-plus"></i>
                                <span class="hide-menu"> Add New </span>
                            </a>
                        </li>
                    </ul>
                </li>



                <li class="sidebar-item">
                    <a class="sidebar-link has-arrow waves-effect waves-dark" href="javascript:void(0)"
                       aria-expanded="false">
                        <i class="mdi mdi-contacts"></i>
                        <span class="hide-menu">Customer</span>
                    </a>
                    <ul aria-expanded="false" class="collapse first-level">
                        <li class="sidebar-item">
                            <a href="/admin/customer-list" class="sidebar-link">
                                <i class="mdi mdi-garage"></i>
                                <span class="hide-menu">Information</span>
                            </a>
                        </li>
                        <li class="sidebar-item">
                            <a href="/admin/customer-new" class="sidebar-link">
                                <i class="mdi mdi-plus"></i>
                                <span class="hide-menu">Add New Customer</span>
                            </a>
                        </li>
                    </ul>
                </li>

                <li class="sidebar-item">
                    <a class="sidebar-link has-arrow waves-effect waves-dark" href="javascript:void(0)"
                       aria-expanded="false">
                        <i class="mdi mdi-account-circle"></i>
                        <span class="hide-menu">User</span>
                    </a>
                    <ul aria-expanded="false" class="collapse first-level">
                        <li class="sidebar-item">
                            <a href="/admin/user-list" class="sidebar-link">
                                <i class="mdi mdi-account-key"></i>
                                <span class="hide-menu">User List</span>
                            </a>
                        </li>
                        <li class="sidebar-item">
                            <a href="authentication-login2.html" class="sidebar-link">
                                <i class="mdi mdi-account-key"></i>
                                <span class="hide-menu">Authorization</span>
                            </a>
                        </li>
                    </ul>
                </li>

                <li class="nav-small-cap">
                    <i class="mdi mdi-dots-horizontal"></i>
                    <span class="hide-menu">Configuration</span>
                </li>
                <li class="sidebar-item">
                    <a class="sidebar-link has-arrow waves-effect waves-dark sidebar-link"
                       href="../../docs/documentation.html" aria-expanded="false">
                        <i class="mdi mdi-content-paste"></i>
                        <span class="hide-menu">Account</span>
                    </a>
                    <ul aria-expanded="false" class="collapse first-level">
                        <li class="sidebar-item">
                            <a href="authentication-login1.html" class="sidebar-link">
                                <i class="mdi mdi-account-key"></i>
                                <span class="hide-menu">My Profile</span>
                            </a>
                        </li>
                        <li class="sidebar-item">
                            <a href="authentication-login2.html" class="sidebar-link">
                                <i class="mdi mdi-account-key"></i>
                                <span class="hide-menu">Change Password</span>
                            </a>
                        </li>
                    </ul>
                </li>
                <li class="nav-small-cap">
                    <i class="mdi mdi-dots-horizontal"></i>
                    <span class="hide-menu">System</span>
                </li>
                <li class="sidebar-item">
                    <a class="sidebar-link waves-effect waves-dark sidebar-link"
                       href="<c:url value='/logout'/>" aria-expanded="false">
                        <i class="mdi mdi-directions"></i>
                        <span class="hide-menu">Log Out</span>
                    </a>
                </li>
            </ul>
        </nav>
        <!-- End Sidebar navigation -->
    </div>
    <!-- End Sidebar scroll-->
</aside>
