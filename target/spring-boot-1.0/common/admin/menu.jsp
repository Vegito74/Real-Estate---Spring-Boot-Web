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
                    <span class="hide-menu">Personal</span>
                </li>
                <li class="sidebar-item">
                    <a class="sidebar-link has-arrow waves-effect waves-dark" href="javascript:void(0)"
                       aria-expanded="false">
                        <i class="mdi mdi-av-timer"></i>
                        <span class="hide-menu">Dashboard </span>
                        <span class="badge badge-pill badge-info ml-auto m-r-15">3</span>
                    </a>
                    <ul aria-expanded="false" class="collapse  first-level">
                        <li class="sidebar-item">
                            <a href="index3.html" class="sidebar-link">
                                <i class="mdi mdi-adjust"></i>
                                <span class="hide-menu"> Modern </span>
                            </a>
                        </li>
                    </ul>
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
                        <i class="mdi mdi-account-circle"></i>
                        <span class="hide-menu">Authentication</span>
                    </a>
                    <ul aria-expanded="false" class="collapse first-level">
                        <li class="sidebar-item">
                            <a href="authentication-login1.html" class="sidebar-link">
                                <i class="mdi mdi-account-key"></i>
                                <span class="hide-menu"> Login </span>
                            </a>
                        </li>
                        <li class="sidebar-item">
                            <a href="authentication-login2.html" class="sidebar-link">
                                <i class="mdi mdi-account-key"></i>
                                <span class="hide-menu"> Login 2 </span>
                            </a>
                        </li>
                        <li class="sidebar-item">
                            <a href="authentication-register1.html" class="sidebar-link">
                                <i class="mdi mdi-account-plus"></i>
                                <span class="hide-menu"> Register</span>
                            </a>
                        </li>
                        <li class="sidebar-item">
                            <a href="authentication-register2.html" class="sidebar-link">
                                <i class="mdi mdi-account-plus"></i>
                                <span class="hide-menu"> Register 2</span>
                            </a>
                        </li>
                        <li class="sidebar-item">
                            <a href="authentication-lockscreen.html" class="sidebar-link">
                                <i class="mdi mdi-account-off"></i>
                                <span class="hide-menu"> Lockscreen</span>
                            </a>
                        </li>
                        <li class="sidebar-item">
                            <a href="authentication-recover-password.html" class="sidebar-link">
                                <i class="mdi mdi-account-convert"></i>
                                <span class="hide-menu"> Recover password</span>
                            </a>
                        </li>
                    </ul>
                </li>

                <li class="nav-small-cap">
                    <i class="mdi mdi-dots-horizontal"></i>
                    <span class="hide-menu">Extra</span>
                </li>
                <li class="sidebar-item">
                    <a class="sidebar-link waves-effect waves-dark sidebar-link"
                       href="../../docs/documentation.html" aria-expanded="false">
                        <i class="mdi mdi-content-paste"></i>
                        <span class="hide-menu">Documentation</span>
                    </a>
                </li>
                <li class="sidebar-item">
                    <a class="sidebar-link waves-effect waves-dark sidebar-link"
                       href="authentication-login1.html" aria-expanded="false">
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
