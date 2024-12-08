<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="com.javaweb.security.utils.SecurityUtils" %>
<div class="site-mobile-menu site-navbar-target">
    <div class="site-mobile-menu-header">
        <div class="site-mobile-menu-close">
            <span class="icofont-close js-menu-toggle"></span>
        </div>
    </div>
    <div class="site-mobile-menu-body"></div>
</div>

<nav class="site-nav">
    <div class="container">
        <div class="menu-bg-wrap">
            <div class="site-navigation">
                <a href="trang-chu" class="logo m-0 float-start">WinterHold</a>

                <ul class="js-clone-nav d-none d-lg-inline-block text-start site-menu float-end">
                    <li class="active"><a href="trang-chu">Trang chủ</a></li>
                    <li class="has-children">
                        <a href="properties">Properties</a>
                        <ul class="dropdown">
                            <li><a href="#">Buy Property</a></li>
                            <li><a href="#">Sell Property</a></li>
                            <li class="has-children">
                                <a href="#">Dropdown</a>
                                <ul class="dropdown">
                                    <li><a href="#">Sub Menu One</a></li>
                                    <li><a href="#">Sub Menu Two</a></li>
                                    <li><a href="#">Sub Menu Three</a></li>
                                </ul>
                            </li>
                        </ul>
                    </li>
                    <li><a href="services">Dịch vụ</a></li>
                    <li><a href="about">Giới thiệu</a></li>
                    <li><a href="contact">Liên hệ</a></li>
                    <%-- Authorize--%>
                    <security:authorize access="isAnonymous()">
                        <li class="has-children">
                            <a class="nav-link" href="<c:url value='/login'/>">Đăng nhập</a>
                            <ul class="dropdown" style="border-radius: inherit">
                                <li><a class="nav-link" href="#">Đăng ký</a></li>

                            </ul>
                        </li>
                    </security:authorize>
                    <security:authorize access="isAuthenticated()">
                        <li class="has-children">
                            <a class="nav-link" href="#"> Hello, <%=SecurityUtils.getPrincipal().getFullName()%>
                            </a>
                            <ul class="dropdown">
                            <li><a href="/admin/home">Management Page</a></li>
                                <li><a class="nav-link" href="<c:url value='/logout'/>">Logout</a></li>
                            </ul>
                        </li>
                    </security:authorize>

                    <%--<li class="nav-item active"><a class="nav-link" href="/trang-chu#">Trang chủ--%>
                    <%--<span class="sr-only">(current)</span>--%>
                    <%--</a></li>--%>

                </ul>
                <a href="#"
                   class="burger light me-auto float-end mt-1 site-menu-toggle js-menu-toggle d-inline-block d-lg-none"
                   data-toggle="collapse" data-target="#main-navbar">
                    <span></span>
                </a>
            </div>
        </div>
    </div>

</nav>
