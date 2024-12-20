<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@include file="/common/taglib.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Trang chủ</title>
</head>

<body>
<div class="hero">
    <div class="hero-slide">
        <div class="img overlay" style="background-image: url('web/images/hero_bg_3.jpg')"></div>
        <div class="img overlay" style="background-image: url('web/images/hero_bg_2.jpg')"></div>
        <div class="img overlay" style="background-image: url('web/images/hero_bg_1.jpg')"></div>
    </div>

    <div class="container">
        <div class="row justify-content-center align-items-center">
            <div class="col-lg-9 text-center">
                <h1 class="heading" data-aos="fade-up">
                    Dễ dàng tìm kiếm ngôi nhà mơ ước của bạn
                </h1>
                <form:form modelAttribute="modelSearch" action="#"
                           class="narrow-w form-search d-flex align-items-stretch mb-20" data-aos="fade-up"
                           data-aos-delay="200">
                    <form:select path="district"
                                 class="form-control custom-select"
                    >
                        <form:option value="">-- Chọn Quận --</form:option>
                        <form:options items="${districts}"/>

                    </form:select>
                    <button type="submit" class="btn btn-primary">Search</button>
                </form:form>
            </div>
        </div>
    </div>
</div>

<div class="section">
    <div class="container">
        <div class="row mb-5 align-items-center">
            <div class="col-lg-6">
                <h2 class="font-weight-bold text-primary heading">
                    -- Phổ biến --
                </h2>
            </div>
            <div class="col-lg-6 text-lg-end">
                <p>
                    <a href="#" target="_blank" class="btn btn-primary text-white py-3 px-4">View all properties</a
                    >
                </p>
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

                                        <a href="/property-single" class="btn btn-primary py-2 px-3">See details</a
                                        >
                                    </div>
                                </div>
                            </div>
                            <!-- .item -->
                        </c:forEach>

                        <div class="property-item">
                            <a href="/property-single" class="img">
                                <img src="web/images/img_1.jpg" alt="Image" class="img-fluid"/>
                            </a>

                            <div class="property-content">
                                <div class="price mb-2"><span>74tr/m<sup>2</sup></span></div>
                                <div>
                                                                                                <span class="d-block mb-2 text-black-50">35/41 Tu Hoàng, Phường Phương Canh</span
                                                                                                >
                                    <span class="city d-block mb-3">Quận Nam Từ Liêm, Hà Nội</span>

                                    <div class="specs d-flex mb-4">
                                                                                                    <span class="d-block d-flex align-items-center me-3">
                          <span class="icon-bed me-2"></span>
                                                                                                    <span class="caption">2 floors</span>
                                                                                                    </span>
                                        <span class="d-block d-flex align-items-center">
                          <span class="icon-bath me-2"></span>
                                                                                                    <span class="caption">2 baths</span>
                                                                                                    </span>
                                    </div>

                                    <a href="/property-single" class="btn btn-primary py-2 px-3">See details</a
                                    >
                                </div>
                            </div>
                        </div>
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

<section class="features-1">
    <div class="container">
        <div class="row">
            <div class="col-6 col-lg-3" data-aos="fade-up" data-aos-delay="300">
                <div class="box-feature">
                    <span class="flaticon-house"></span>
                    <h3 class="mb-3">Our Properties</h3>
                    <p>
                        Lorem ipsum dolor sit amet, consectetur adipisicing elit.
                        Voluptates, accusamus.
                    </p>
                    <p><a href="#" class="learn-more">Learn More</a></p>
                </div>
            </div>
            <div class="col-6 col-lg-3" data-aos="fade-up" data-aos-delay="500">
                <div class="box-feature">
                    <span class="flaticon-building"></span>
                    <h3 class="mb-3">Property for Sale</h3>
                    <p>
                        Lorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptates, accusamus.
                    </p>
                    <p><a href="#" class="learn-more">Learn More</a></p>
                </div>
            </div>
            <div class="col-6 col-lg-3" data-aos="fade-up" data-aos-delay="400">
                <div class="box-feature">
                    <span class="flaticon-house-3"></span>
                    <h3 class="mb-3">Real Estate Agent</h3>
                    <p>
                        Lorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptates, accusamus.
                    </p>
                    <p><a href="#" class="learn-more">Learn More</a></p>
                </div>
            </div>
            <div class="col-6 col-lg-3" data-aos="fade-up" data-aos-delay="600">
                <div class="box-feature">
                    <span class="flaticon-house-1"></span>
                    <h3 class="mb-3">House for Sale</h3>
                    <p>
                        Lorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptates, accusamus.
                    </p>
                    <p><a href="#" class="learn-more">Learn More</a></p>
                </div>
            </div>
        </div>
    </div>
</section>

<div class="section sec-testimonials">
    <div class="container">
        <div class="row mb-5 align-items-center">
            <div class="col-md-6">
                <h2 class="font-weight-bold heading text-primary mb-4 mb-md-0">
                    Đánh giá của khách hàng
                </h2>
            </div>
            <div class="col-md-6 text-md-end">
                <div id="testimonial-nav">
                    <span class="prev" data-controls="prev">Prev</span>

                    <span class="next" data-controls="next">Next</span>
                </div>
            </div>
        </div>

        <div class="row">
            <div class="col-lg-4"></div>
        </div>
        <div class="testimonial-slider-wrap">
            <div class="testimonial-slider">
                <div class="item">
                    <div class="testimonial">
                        <img src="web/images/person_1-min.jpg" alt="Image" class="img-fluid rounded-circle w-25 mb-4"/>
                        <div class="rate">
                            <span class="icon-star text-warning"></span>
                            <span class="icon-star text-warning"></span>
                            <span class="icon-star text-warning"></span>
                            <span class="icon-star text-warning"></span>
                            <span class="icon-star text-warning"></span>
                        </div>
                        <h3 class="h5 text-primary mb-4">Nguyễn Nhật Minh</h3>
                        <blockquote>
                            <p>
                                &ldquo;Far far away, behind the word mountains, far from the countries Vokalia and
                                Consonantia, there live the blind texts. Separated they live in Bookmarksgrove right at
                                the coast of the Semantics, a large language ocean.&rdquo;
                            </p>
                        </blockquote>
                        <p class="text-black-50">Designer, Co-founder</p>
                    </div>
                </div>

                <div class="item">
                    <div class="testimonial">
                        <img src="web/images/person_2-min.jpg" alt="Image" class="img-fluid rounded-circle w-25 mb-4"/>
                        <div class="rate">
                            <span class="icon-star text-warning"></span>
                            <span class="icon-star text-warning"></span>
                            <span class="icon-star text-warning"></span>
                            <span class="icon-star text-warning"></span>
                            <span class="icon-star text-warning"></span>
                        </div>
                        <h3 class="h5 text-primary mb-4">Bùi Khắc Trung</h3>
                        <blockquote>
                            <p>
                                &ldquo;Far far away, behind the word mountains, far from the countries Vokalia and
                                Consonantia, there live the blind texts. Separated they live in Bookmarksgrove right at
                                the coast of the Semantics, a large language ocean.&rdquo;
                            </p>
                        </blockquote>
                        <p class="text-black-50">Designer, Co-founder</p>
                    </div>
                </div>

                <div class="item">
                    <div class="testimonial">
                        <img src="web/images/person_3-min.jpg" alt="Image" class="img-fluid rounded-circle w-25 mb-4"/>
                        <div class="rate">
                            <span class="icon-star text-warning"></span>
                            <span class="icon-star text-warning"></span>
                            <span class="icon-star text-warning"></span>
                            <span class="icon-star text-warning"></span>
                            <span class="icon-star text-warning"></span>
                        </div>
                        <h3 class="h5 text-primary mb-4">Nguyễn Đan Huy</h3>
                        <blockquote>
                            <p>
                                &ldquo;Far far away, behind the word mountains, far from the countries Vokalia and
                                Consonantia, there live the blind texts. Separated they live in Bookmarksgrove right at
                                the coast of the Semantics, a large language ocean.&rdquo;
                            </p>
                        </blockquote>
                        <p class="text-black-50">Designer, Co-founder</p>
                    </div>
                </div>

                <div class="item">
                    <div class="testimonial">
                        <img src="web/images/person_4-min.jpg" alt="Image" class="img-fluid rounded-circle w-25 mb-4"/>
                        <div class="rate">
                            <span class="icon-star text-warning"></span>
                            <span class="icon-star text-warning"></span>
                            <span class="icon-star text-warning"></span>
                            <span class="icon-star text-warning"></span>
                            <span class="icon-star text-warning"></span>
                        </div>
                        <h3 class="h5 text-primary mb-4">Đỗ Lâm Đức Minh</h3>
                        <blockquote>
                            <p>
                                &ldquo;Far far away, behind the word mountains, far from the countries Vokalia and
                                Consonantia, there live the blind texts. Separated they live in Bookmarksgrove right at
                                the coast of the Semantics, a large language ocean.&rdquo;
                            </p>
                        </blockquote>
                        <p class="text-black-50">Designer, Co-founder</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<div class="section section-4 bg-light">
    <div class="container">
        <div class="row justify-content-center text-center mb-5">
            <div class="col-lg-5">
                <h2 class="font-weight-bold heading text-primary mb-4">
                    Hãy tìm kiếm ngôi nhà hoàn hảo của bạn
                </h2>
                <!-- <p class="text-black-50">
                    Lorem ipsum dolor sit amet consectetur adipisicing elit. Numquam enim pariatur similique debitis vel nisi qui reprehenderit.
                </p> -->
            </div>
        </div>
        <div class="row justify-content-between mb-5">
            <div class="col-lg-7 mb-5 mb-lg-0 order-lg-2">
                <div class="img-about dots">
                    <img src="web/images/hero_bg_3.jpg" alt="Image" class="img-fluid"/>
                </div>
            </div>
            <div class="col-lg-4">
                <div class="d-flex feature-h">
                                        <span class="wrap-icon me-3">
                <span class="icon-home2"></span>
                                        </span>
                    <div class="feature-text">
                        <h3 class="heading">Đa dạng Bất động sản</h3>
                        <p class="text-black-50">
                            Lorem ipsum dolor sit amet consectetur adipisicing elit. Nostrum iste.
                        </p>
                    </div>
                </div>

                <div class="d-flex feature-h">
                                        <span class="wrap-icon me-3">
                <span class="icon-person"></span>
                                        </span>
                    <div class="feature-text">
                        <h3 class="heading">Được xếp hạng hàng đầu</h3>
                        <p class="text-black-50">
                            Lorem ipsum dolor sit amet consectetur adipisicing elit. Nostrum iste.
                        </p>
                    </div>
                </div>

                <div class="d-flex feature-h">
                                        <span class="wrap-icon me-3">
                <span class="icon-security"></span>
                                        </span>
                    <div class="feature-text">
                        <h3 class="heading">Bất động sản hợp pháp</h3>
                        <p class="text-black-50">
                            Lorem ipsum dolor sit amet consectetur adipisicing elit. Nostrum iste.
                        </p>
                    </div>
                </div>
            </div>
        </div>
        <div class="row section-counter mt-5">
            <div class="col-6 col-sm-6 col-md-6 col-lg-3" data-aos="fade-up" data-aos-delay="300">
                <div class="counter-wrap mb-5 mb-lg-0">
                    <span class="number"><span class="countup text-primary">298</span></span>
                    <span class="caption text-black-50"># Số lượng cho thuê</span>
                </div>
            </div>
            <div class="col-6 col-sm-6 col-md-6 col-lg-3" data-aos="fade-up" data-aos-delay="400">
                <div class="counter-wrap mb-5 mb-lg-0">
                    <span class="number"><span class="countup text-primary">181</span></span>
                    <span class="caption text-black-50"># Đang tiến hành giao dịch ++</span>
                </div>
            </div>
            <div class="col-6 col-sm-6 col-md-6 col-lg-3" data-aos="fade-up" data-aos-delay="500">
                <div class="counter-wrap mb-5 mb-lg-0">
                    <span class="number"><span class="countup text-primary">916</span></span>
                    <span class="caption text-black-50"># Tổng số Bất động sản</span>
                </div>
            </div>
            <div class="col-6 col-sm-6 col-md-6 col-lg-3" data-aos="fade-up" data-aos-delay="600">
                <div class="counter-wrap mb-5 mb-lg-0">
                    <!-- <span class="number"><span class="countup text-primary">7191</span></span>
                    <span class="caption text-black-50"># of Agents</span> -->
                </div>
            </div>
        </div>
    </div>
</div>

<div class="section">
    <div class="row justify-content-center footer-cta" data-aos="fade-up">
        <div class="col-lg-8 mx-auto text-center">
            <h2 class="mb-4">Hãy liên hệ ngay với chúng tôi để nhận được ưu đãi đặc biệt</h2>
            <p>
                <a href="/contact" target="_blank" class="btn btn-primary text-white py-3 px-4">Liên hệ với chúng tôi</a>
            </p>
        </div>
        <!-- /.col-lg-7 -->
    </div>
    <!-- /.row -->
</div>

<div class="section section-5 bg-light">
    <div class="container">
        <div class="row justify-content-center text-center mb-5">
            <div class="col-lg-6 mb-5">
                <h2 class="font-weight-bold heading text-primary mb-4">
                    Người quản lý Bất động sản
                </h2>
                <p class="text-black-50">
                    Lorem ipsum dolor sit amet consectetur adipisicing elit. Numquam enim pariatur similique debitis vel
                    nisi qui reprehenderit totam? Quod maiores.
                </p>
            </div>
        </div>
        <div class="row">
            <div class="col-sm-6 col-md-6 col-lg-4 mb-5 mb-lg-0">
                <div class="h-100 person">
                    <img src="web/images/person_1-min.jpg" alt="Image" class="img-fluid"/>

                    <div class="person-contents">
                        <h2 class="mb-0"><a href="#">Nguyễn Nhật Minh</a></h2>
                        <span class="meta d-block mb-3">Nhân viên quản lý</span>
                        <p>
                            Lorem ipsum dolor sit amet consectetur adipisicing elit. Facere officiis inventore cumque
                            tenetur laboriosam, minus culpa doloremque odio, neque molestias?
                        </p>

                        <ul class="social list-unstyled list-inline dark-hover">
                            <li class="list-inline-item">
                                <a href="#"><span class="icon-twitter"></span></a>
                            </li>
                            <li class="list-inline-item">
                                <a href="#"><span class="icon-facebook"></span></a>
                            </li>
                            <li class="list-inline-item">
                                <a href="#"><span class="icon-linkedin"></span></a>
                            </li>
                            <li class="list-inline-item">
                                <a href="#"><span class="icon-instagram"></span></a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="col-sm-6 col-md-6 col-lg-4 mb-5 mb-lg-0">
                <div class="h-100 person">
                    <img src="web/images/person_3-min.jpg" alt="Image" class="img-fluid"/>

                    <div class="person-contents">
                        <h2 class="mb-0"><a href="#">Nguyễn Văn Trọng</a></h2>
                        <span class="meta d-block mb-3">CEO WinterHold</span>
                        <p>
                            Lorem ipsum dolor sit amet consectetur adipisicing elit. Facere officiis inventore cumque
                            tenetur laboriosam, minus culpa doloremque odio, neque molestias?
                        </p>

                        <ul class="social list-unstyled list-inline dark-hover">
                            <li class="list-inline-item">
                                <a href="#"><span class="icon-twitter"></span></a>
                            </li>
                            <li class="list-inline-item">
                                <a href="#"><span class="icon-facebook"></span></a>
                            </li>
                            <li class="list-inline-item">
                                <a href="#"><span class="icon-linkedin"></span></a>
                            </li>
                            <li class="list-inline-item">
                                <a href="#"><span class="icon-instagram"></span></a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="col-sm-6 col-md-6 col-lg-4 mb-5 mb-lg-0">
                <div class="h-100 person">
                    <img src="web/images/person_2-min.jpg" alt="Image" class="img-fluid"/>

                    <div class="person-contents">
                        <h2 class="mb-0"><a href="#">Bùi Khắc Trung</a></h2>
                        <span class="meta d-block mb-3">Nhân viên quản lý</span>
                        <p>
                            Lorem ipsum dolor sit amet consectetur adipisicing elit. Facere officiis inventore cumque
                            tenetur laboriosam, minus culpa doloremque odio, neque molestias?
                        </p>

                        <ul class="social list-unstyled list-inline dark-hover">
                            <li class="list-inline-item">
                                <a href="#"><span class="icon-twitter"></span></a>
                            </li>
                            <li class="list-inline-item">
                                <a href="#"><span class="icon-facebook"></span></a>
                            </li>
                            <li class="list-inline-item">
                                <a href="#"><span class="icon-linkedin"></span></a>
                            </li>
                            <li class="list-inline-item">
                                <a href="#"><span class="icon-instagram"></span></a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

</body>

</html>