<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html dir="ltr" lang="vi"><!--<![endif]-->
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="theme-color" content="#FFFFFF">
    <title>Freshfood - Hệ thống cửa hàng thực phẩm sạch VietGAP</title> <!--<base href="http://ggffg.myzozo.net/">-->
    <base href=".">
    <link rel="dns-prefetch" href="http://fonts.googleapis.com/"> <!-- START STYLE -->
    <link rel="stylesheet" type="text/css"
          href="<c:url value='/resources/css/stylesheet.min.css'/>" >


    <script type="text/javascript"
            src="<c:url value='/resources/js/jquery-3.3.1.min.js.js'/>"></script>

    <link href="http://ggffg.myzozo.net/image/catalog/logo/fav.png" rel="icon">
    <link rel="stylesheet" type="text/css"
          href="<c:url value='/resources/css/stylesheet.css'/>" >
    <link rel="stylesheet" type="text/css"
          href="<c:url value='/resources/vendor/fontawesome-5.8.1-web/css/fontawesome.min.css'/>" >

    <style type="text/css">.fb_hidden {
        position: absolute;
        top: -10000px;
        z-index: 10001
    }

    .fb_reposition {
        overflow: hidden;
        position: relative
    }

    .fb_invisible {
        display: none
    }

    .fb_reset {
        background: none;
        border: 0;
        border-spacing: 0;
        color: #000;
        cursor: auto;
        direction: ltr;
        font-family: "lucida grande", tahoma, verdana, arial, sans-serif;
        font-size: 11px;
        font-style: normal;
        font-variant: normal;
        font-weight: normal;
        letter-spacing: normal;
        line-height: 1;
        margin: 0;
        overflow: visible;
        padding: 0;
        text-align: left;
        text-decoration: none;
        text-indent: 0;
        text-shadow: none;
        text-transform: none;
        visibility: visible;
        white-space: normal;
        word-spacing: normal
    }

    .fb_reset > div {
        overflow: hidden
    }

    @keyframes fb_transform {
        from {
            opacity: 0;
            transform: scale(.95)
        }
        to {
            opacity: 1;
            transform: scale(1)
        }
    }

    .fb_animate {
        animation: fb_transform .3s forwards
    }

    .fb_dialog {
        background: rgba(82, 82, 82, .7);
        position: absolute;
        top: -10000px;
        z-index: 10001
    }

    .fb_dialog_advanced {
        border-radius: 8px;
        padding: 10px
    }

    .fb_dialog_content {
        background: #fff;
        color: #373737
    }

    .fb_dialog_close_icon {
        background: url(<c:url value="/resources/images/IE9JII6Z1Ys.png"/>) no-repeat scroll 0 0 transparent;
        cursor: pointer;
        display: block;
        height: 15px;
        position: absolute;
        right: 18px;
        top: 17px;
        width: 15px
    }

    .fb_dialog_mobile .fb_dialog_close_icon {
        left: 5px;
        right: auto;
        top: 5px
    }

    .fb_dialog_padding {
        background-color: transparent;
        position: absolute;
        width: 1px;
        z-index: -1
    }

    .fb_dialog_close_icon:hover {
        background: url(<c:url value="/resources/images/IE9JII6Z1Ys.png"/>) no-repeat scroll 0 -15px transparent
    }

    .fb_dialog_close_icon:active {
        background: url(<c:url value="/resources/images/IE9JII6Z1Ys.png"/>) no-repeat scroll 0 -30px transparent
    }

    .fb_dialog_iframe {
        line-height: 0
    }

    .fb_dialog_content .dialog_title {
        background: #6d84b4;
        border: 1px solid #365899;
        color: #fff;
        font-size: 14px;
        font-weight: bold;
        margin: 0
    }

    .fb_dialog_content .dialog_title > span {
        background: url(<c:url value="/resources/images/Cou7n-nqK52.gif"/>) no-repeat 5px 50%;
        float: left;
        padding: 5px 0 7px 26px
    }

    body.fb_hidden {
        height: 100%;
        left: 0;
        margin: 0;
        overflow: visible;
        position: absolute;
        top: -10000px;
        transform: none;
        width: 100%
    }

    .fb_dialog.fb_dialog_mobile.loading {
        background: url(<c:url value="/resources/images/3rhSv5V8j3o.gif"/>) white no-repeat 50% 50%;
        min-height: 100%;
        min-width: 100%;
        overflow: hidden;
        position: absolute;
        top: 0;
        z-index: 10001
    }

    .fb_dialog.fb_dialog_mobile.loading.centered {
        background: none;
        height: auto;
        min-height: initial;
        min-width: initial;
        width: auto
    }

    .fb_dialog.fb_dialog_mobile.loading.centered #fb_dialog_loader_spinner {
        width: 100%
    }

    .fb_dialog.fb_dialog_mobile.loading.centered .fb_dialog_content {
        background: none
    }

    .loading.centered #fb_dialog_loader_close {
        clear: both;
        color: #fff;
        display: block;
        font-size: 18px;
        padding-top: 20px
    }

    #fb-root #fb_dialog_ipad_overlay {
        background: rgba(0, 0, 0, .4);
        bottom: 0;
        left: 0;
        min-height: 100%;
        position: absolute;
        right: 0;
        top: 0;
        width: 100%;
        z-index: 10000
    }

    #fb-root #fb_dialog_ipad_overlay.hidden {
        display: none
    }

    .fb_dialog.fb_dialog_mobile.loading iframe {
        visibility: hidden
    }

    .fb_dialog_mobile .fb_dialog_iframe {
        position: sticky;
        top: 0
    }

    .fb_dialog_content .dialog_header {
        background: linear-gradient(from(#738aba), to(#2c4987));
        border-bottom: 1px solid;
        border-color: #1d3c78;
        box-shadow: white 0 1px 1px -1px inset;
        color: #fff;
        font: bold 14px Helvetica, sans-serif;
        text-overflow: ellipsis;
        text-shadow: rgba(0, 30, 84, .296875) 0 -1px 0;
        vertical-align: middle;
        white-space: nowrap
    }

    .fb_dialog_content .dialog_header table {
        height: 43px;
        width: 100%
    }

    .fb_dialog_content .dialog_header td.header_left {
        font-size: 12px;
        padding-left: 5px;
        vertical-align: middle;
        width: 60px
    }

    .fb_dialog_content .dialog_header td.header_right {
        font-size: 12px;
        padding-right: 5px;
        vertical-align: middle;
        width: 60px
    }

    .fb_dialog_content .touchable_button {
        background: linear-gradient(from(#4267B2), to(#2a4887));
        background-clip: padding-box;
        border: 1px solid #29487d;
        border-radius: 3px;
        display: inline-block;
        line-height: 18px;
        margin-top: 3px;
        max-width: 85px;
        padding: 4px 12px;
        position: relative
    }

    .fb_dialog_content .dialog_header .touchable_button input {
        background: none;
        border: none;
        color: #fff;
        font: bold 12px Helvetica, sans-serif;
        margin: 2px -12px;
        padding: 2px 6px 3px 6px;
        text-shadow: rgba(0, 30, 84, .296875) 0 -1px 0
    }

    .fb_dialog_content .dialog_header .header_center {
        color: #fff;
        font-size: 16px;
        font-weight: bold;
        line-height: 18px;
        text-align: center;
        vertical-align: middle
    }

    .fb_dialog_content .dialog_content {
        background: url(<c:url value="/resources/images/jKEcVPZFk-2.gif"/>) no-repeat 50% 50%;
        border: 1px solid #4a4a4a;
        border-bottom: 0;
        border-top: 0;
        height: 150px
    }

    .fb_dialog_content .dialog_footer {
        background: #f5f6f7;
        border: 1px solid #4a4a4a;
        border-top-color: #ccc;
        height: 40px
    }

    #fb_dialog_loader_close {
        float: left
    }

    .fb_dialog.fb_dialog_mobile .fb_dialog_close_button {
        text-shadow: rgba(0, 30, 84, .296875) 0 -1px 0
    }

    .fb_dialog.fb_dialog_mobile .fb_dialog_close_icon {
        visibility: hidden
    }

    #fb_dialog_loader_spinner {
        animation: rotateSpinner 1.2s linear infinite;
        background-color: transparent;
        background-image: url(<c:url value="/resources/images/t-wz8gw1xG1.png"/>);
        background-position: 50% 50%;
        background-repeat: no-repeat;
        height: 24px;
        width: 24px
    }

    @keyframes rotateSpinner {
        0% {
            transform: rotate(0deg)
        }
        100% {
            transform: rotate(360deg)
        }
    }

    .fb_iframe_widget {
        display: inline-block;
        position: relative
    }

    .fb_iframe_widget span {
        display: inline-block;
        position: relative;
        text-align: justify
    }

    .fb_iframe_widget iframe {
        position: absolute
    }

    .fb_iframe_widget_fluid_desktop, .fb_iframe_widget_fluid_desktop span, .fb_iframe_widget_fluid_desktop iframe {
        max-width: 100%
    }

    .fb_iframe_widget_fluid_desktop iframe {
        min-width: 220px;
        position: relative
    }

    .fb_iframe_widget_lift {
        z-index: 1
    }

    .fb_iframe_widget_fluid {
        display: inline
    }

    .fb_iframe_widget_fluid span {
        width: 100%
    }</style>
</head>
<body class="common-home">
<header class="header">
    <div class="topbar-mobile hidden-lg hidden-md text-center text-md-left">
        <div class="container"><span class="language mobi_lang_curr"></span> <span class="currency mobi_lang_curr"> <a
                class="dropdown-toggle" data-toggle="dropdown" href="javascript:void(0)"> <strong>đ</strong> <span> - VND</span> <i
                class="fa fa-caret-down"></i> </a> <ul class="dropdown-menu"> <li> <a class="currency-select"
                                                                                      href="javascript:void(0)"
                                                                                      name="EUR"> € - Euro </a> </li> <li> <a
                class="currency-select" href="javascript:void(0)" name="GBP"> £ - Pound Sterling </a> </li> <li> <a
                class="currency-select" href="javascript:void(0)" name="USD"> $ - US Dollar </a> </li> <li> <a
                class="currency-select" href="javascript:void(0)" name="VND"> đ - VND </a> </li> </ul> <form
                action="http://ggffg.myzozo.net/common/currency/currency" method="post" enctype="multipart/form-data"
                class="form-currency"> <input type="hidden" name="code" value=""> <input type="hidden" name="redirect"
                                                                                         value="http://ggffg.myzozo.net/"> </form> </span>
        </div>
    </div>
    <div class="topbar hidden-sm hidden-xs">
        <div class="container">
            <div>
                <div class="row">
                    <div class="col-sm-6 col-md-6 a-left">
                        <ul class="list-inline f-left info-header">
                            <li><i class="fa fa-mobile"></i> <b>Điện thoại:</b> <span> <a href="tell:0123456789"> 0123456789</a> </span>
                            </li>
                            <li class="margin-left-20"><i class="fa fa-envelope"></i> <b>Email:</b> <span> <a
                                    href="mailto:abc@gmail.com">abc@gmail.com</a> </span></li>
                        </ul>
                    </div>
                    <div class="col-sm-6 col-md-6">
                        <ul class="list-inline f-right">
                            <li class="language desk_lang_curr"></li>
                            <li class="currency desk_lang_curr"><a class="dropdown-toggle" data-toggle="dropdown"
                                                                   href="javascript:void(0)"> <strong>đ</strong> <span> - VND</span>
                                <i class="fa fa-caret-down"></i> </a>
                                <ul class="dropdown-menu">
                                    <li><a class="currency-select" href="javascript:void(0)" name="EUR"> € - Euro </a>
                                    </li>
                                    <li><a class="currency-select" href="javascript:void(0)" name="GBP"> £ - Pound
                                        Sterling </a></li>
                                    <li><a class="currency-select" href="javascript:void(0)" name="USD"> $ - US
                                        Dollar </a></li>
                                    <li><a class="currency-select" href="javascript:void(0)" name="VND"> đ - VND </a>
                                    </li>
                                </ul>
                                <form action="http://ggffg.myzozo.net/common/currency/currency" method="post"
                                      enctype="multipart/form-data" class="form-currency"><input type="hidden"
                                                                                                 name="code" value="">
                                    <input type="hidden" name="redirect" value="http://ggffg.myzozo.net/"></form>
                            </li>
                            <li><a href="http://ggffg.myzozo.net/account/login"><i class="fa fa-user"></i> Đăng nhập</a>
                            </li>
                            <li><span> -</span></li>
                            <li><a href="http://ggffg.myzozo.net/account/register">Đăng ký</a></li>
                            <li class="li-search hidden"><a href="javascript:void(0)"><i class="fa fa-search"></i></a>
                                <div class="dropdown topbar-dropdown hidden-md hidden-sm hidden-xs">
                                    <div class="content a-center">
                                        <div class="header_search search_form">
                                            <div class="form input-group search-bar search_form"><input type="search"
                                                                                                        name="search"
                                                                                                        value=""
                                                                                                        placeholder="Tìm kiếm"
                                                                                                        class="input-group-field st-default-search-input search-text"
                                                                                                        autocomplete="off">
                                                <span class="input-group-btn"> <button
                                                        class="btn icon-fallback-text"> <i
                                                        class="fa fa-search"></i> </button> </span></div>
                                        </div>
                                    </div>
                                </div>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="container">
        <div class="header-content clearfix a-center">
            <div class="row">
                <div class="col-xs-12 col-md-3 text-lg-left">
                    <div class="logo inline-block" id="logo"><a href="http://ggffg.myzozo.net/" class="logo-wrapper">
                        <img src="<c:url value='/resources/images/logo_small-1.png'/>"
                             alt="Fresh Food"> </a></div>
                </div>
                <div class="col-xs-12 col-md-8 col-lg-7 hidden-xs header_services">
                    <div class="policy d-flex justify-content-around " id="header_services-0"
                         style="background-image: none;">
                        <div class="item-policy d-flex align-items-center" ><a href="javascript:void(0)">
                            <img src="<c:url value='/resources/images/policy1-0x0.png'/>"
                                 alt="Miễn phí vận chuyển" class="fa"> </a>
                            <div class="info a-left"><a href="javascript:void(0)"> Miễn phí vận chuyển</a>
                                <p></p>
                                <p>Bán kính 100 km</p>
                                <p></p></div>
                        </div>
                        <div class="item-policy d-flex align-items-center" ><a href="javascript:void(0)">
                            <img src="<c:url value='/resources/images/policy2-0x0.png'/>"
                                 alt=" Hỗ trợ 24/7" class="fa"> </a>
                            <div class="info a-left"><a href="javascript:void(0)"> Hỗ trợ 24/7</a>
                                <p></p>
                                <p>Hotline:&nbsp;<a href="callto:19001009">0123456789</a></p>
                                <p></p></div>
                        </div>
                        <div class="item-policy d-flex align-items-center" ><a href="javascript:void(0)">
                            <img src="<c:url value='/resources/images/policy3-0x0.png'/>"
                                 alt="Giờ làm việc" class="fa"> </a>
                            <div class="info a-left"><a href="javascript:void(0)"> Giờ làm việc</a>
                                <p></p>
                                <p>T2 - T7 Giờ hành chính</p>
                                <p></p></div>
                        </div>
                    </div>
                </div>
                <div class="col-xs-12 col-md-1 col-lg-2 hidden-sm hidden-xs">
                    <div class="top-cart-contain f-right ">
                        <div id="cart" class="mini-cart text-xs-center">
                            <div class="heading-cart"><a href="http://ggffg.myzozo.net/checkout/cart">
                                <div class="icon f-left relative"><i class="fa fa-shopping-bag"></i> <span
                                        class="cartCount count_item_pr hidden-lg" id="cart-total">1</span></div>
                                <div class="right-content hidden-md"><span class="label">Giỏ hàng</span> <span
                                        class="cartCount2">(1)</span></div>
                            </a></div>
                            <div class="top-cart-content">
                                <ul id="cart-sidebar" class="mini-products-list count_li">
                                    <li class="list-item-cart">
                                        <ul>
                                            <li class="item productid-17898181">
                                                <div class="border_list"><a class="product-image"
                                                                            href="http://ggffg.myzozo.net/cam-my"
                                                                            title="Cam Mỹ"> <img alt="Cam Mỹ"
                                                                                                 src="./Freshfood - Hệ thống cửa hàng thực phẩm sạch VietGAP_files/Cam-200x200.jpg"
                                                                                                 width="100"></a>
                                                    <div class="detail-item">
                                                        <div class="product-details"><p class="product-name"><a
                                                                href="http://ggffg.myzozo.net/cam-my" title="Cam Mỹ">Cam
                                                            Mỹ</a></p></div>
                                                        <div class="product-details-bottom"><span
                                                                class="price">156,000đ</span> <a
                                                                href="javascript:void(0);"
                                                                onclick="cart.remove(&#39;932&#39;);" title="Xóa"
                                                                class="remove-item-cart fa fa-remove">&nbsp; </a>
                                                            <div class="quantity-select qty_drop_cart"><span
                                                                    class="input-text number-sidebar">X 1</span></div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </li>
                                        </ul>
                                    </li>
                                    <li class="pd">
                                        <div class="top-subtotal">
                                            <div class="clearfix"> Thành tiền: <span class="price">156,000đ</span></div>
                                            <div class="clearfix"> Phí vận chuyển Toàn Quốc: <span
                                                    class="price">35,000đ</span></div>
                                            <div class="clearfix"> Tổng số: <span class="price">191,000đ</span></div>
                                        </div>
                                    </li>
                                    <li class="pd right_ct"><a href="http://ggffg.myzozo.net/checkout/cart"
                                                               class="btn btn-primary"> <span>Giỏ hàng</span> </a> <a
                                            href="http://ggffg.myzozo.net/checkout/state" class="btn btn-primary">
                                        <span>Thanh toán</span> </a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="menu-bar hidden-md hidden-lg"><img
                src="./Freshfood - Hệ thống cửa hàng thực phẩm sạch VietGAP_files/menu-bar.png" alt="menu bar"></div>
        <div class="icon-cart-mobile hidden-md hidden-lg f-left absolute"
             onclick="window.location.href=&#39;http://ggffg.myzozo.net/checkout/cart&#39;">
            <div class="icon relative"><i class="fa fa-shopping-bag"></i> <span class="cartCount count_item_pr">1</span>
            </div>
        </div>
    </div>
    <nav class="sticky">
        <div class="container">
            <div class="hidden-sm hidden-xs">
                <ul class="nav nav-left">
                    <li class="nav-item nav-item-lv1"><a class="nav-link" href="http://ggffg.myzozo.net/">Trang chủ</a>
                    </li>
                    <li class="nav-item nav-item-lv1"><a class="nav-link" href="http://ggffg.myzozo.net/gioi-thieu">Giới
                        thiệu</a></li>
                    <li class="nav-item nav-item-lv1"><a class="nav-link" href="http://ggffg.myzozo.net/san-pham">Sản
                        phẩm</a></li>
                    <li class="nav-item nav-item-lv1"><a class="nav-link" href="http://ggffg.myzozo.net/tin-tuc">Tin
                        tức</a></li>
                    <li class="nav-item nav-item-lv1"><a class="nav-link" href="http://ggffg.myzozo.net/lien-he">Liên
                        hệ</a></li>
                </ul>
                <div class="menu-search f-right bbbbb">
                    <div class="header_search search_form">
                        <div class="form input-group search-bar search_form"><input type="search" name="search" value=""
                                                                                    placeholder="Tìm kiếm"
                                                                                    class="input-group-field st-default-search-input search-text"
                                                                                    autocomplete="off"> <span
                                class="input-group-btn"> <button class="btn icon-fallback-text"> <i
                                class="fa fa-search"></i> </button> </span></div>
                    </div>
                </div>
            </div>
            <div class="hidden-lg hidden-md menu-offcanvas">
                <div class="head-menu clearfix">
                    <ul class="list-inline">
                        <li><a href="http://ggffg.myzozo.net/account/login"><i class="fa fa-user"></i> Đăng nhập</a>
                        </li>
                        <li><span> -</span></li>
                        <li><a href="http://ggffg.myzozo.net/account/register">Đăng ký</a></li>
                        <li class="li-search">
                            <div class="header_search search_form">
                                <div class="form input-group search-bar search_form"><input type="search" name="search"
                                                                                            value=""
                                                                                            placeholder="Tìm kiếm"
                                                                                            class="input-group-field st-default-search-input search-text"
                                                                                            autocomplete="off"> <span
                                        class="input-group-btn"> <button class="btn icon-fallback-text"> <i
                                        class="fa fa-search"></i> </button> </span></div>
                            </div>
                        </li>
                    </ul>
                    <div class="menuclose"><i class="fa fa-close"></i></div>
                </div>
                <ul id="nav-mobile" class="nav hidden-md hidden-lg">
                    <li class="nav-item"><a class="nav-link" href="http://ggffg.myzozo.net/">Trang chủ</a></li>
                    <li class="nav-item"><a class="nav-link" href="http://ggffg.myzozo.net/gioi-thieu">Giới thiệu</a>
                    </li>
                    <li class="nav-item"><a class="nav-link" href="http://ggffg.myzozo.net/san-pham">Sản phẩm</a></li>
                    <li class="nav-item"><a class="nav-link" href="http://ggffg.myzozo.net/tin-tuc">Tin tức</a></li>
                    <li class="nav-item"><a class="nav-link" href="http://ggffg.myzozo.net/lien-he">Liên hệ</a></li>
                </ul>
            </div>
        </div>
    </nav>
</header>
<section class="awe-section-1" id="awe-section-1">
    <div class="section_category_slider mt-md-5">
        <div class="container">
            <div class="row">
                <div class="col-sm-12 col-xs-12 col-md-9 col-md-push-3 px-md-4 px-0 mb-5">
                    <script type="text/javascript"> $('.header .header-content .header_services').append($('#header_services-0')); </script>
                    <div class="home-slider owl-carousel owl-loaded owl-drag" id="gallery-0" data-margin="0"
                         data-nav="true" data-lg-items="1" data-md-items="1" data-sm-items="1" data-xs-items="1">
                        <div class="owl-stage-outer">
                            <div class="owl-stage"
                                 style="transform: translate3d(0px, 0px, 0px); transition: all 0s ease 0s; width: 1695px;">
                                <div class="owl-item active" style="width: 847.5px;">
                                    <div class="item"><a href="http://ggffg.myzozo.net/#" class="clearfix"> <img
                                            src="<c:url value='/resources/images/banner/banner 1-1360x577.png'/>"
                                            alt="Banner #1"> </a></div>
                                </div>
                                <div class="owl-item" style="width: 847.5px;">
                                    <div class="item"><a href="http://ggffg.myzozo.net/#" class="clearfix"> <img
                                            src="<c:url value='/resources/images/banner/banner 2-1360x577.png'/>"
                                            alt="Banner #2"> </a></div>
                                </div>
                            </div>
                        </div>
                        <div class="owl-nav">
                            <button type="button" role="presentation" class="owl-prev disabled"><i
                                    class="fa fa-angle-left"></i></button>
                            <button type="button" role="presentation" class="owl-next"><i class="fa fa-angle-right"></i>
                            </button>
                        </div>
                        <div class="owl-dots disabled"></div>
                    </div>
                </div>
                <div class="col-sm-12 col-xs-12 col-md-3 sidebar col-left clearfix col-md-pull-9">
                    <aside id="column-left" class="left-column compliance aside-vetical-menu">
                        <aside class="blog-aside aside-item sidebar-category module_category category_custom"
                               id="category_custom-1">
                            <div class="aside-title text-center text-xl-left"><h2 class="title-head"><span>Danh mục sản phẩm</span>
                            </h2></div>
                            <div class="aside-content">
                                <div class="nav-category navbar-toggleable-md">
                                    <ul class="nav navbar-pills">
                                        <li class="nav-item"><i class="fa fa-arrow-circle-right" aria-hidden="true"></i>
                                            <a href="http://ggffg.myzozo.net/hai-san-nhap-khau" class="nav-link">Hải sản
                                                nhập khẩu</a></li>
                                        <li class="nav-item"><i class="fa fa-arrow-circle-right" aria-hidden="true"></i>
                                            <a href="http://ggffg.myzozo.net/hai-san-tuoi" class="nav-link">Hải sản
                                                tươi</a></li>
                                        <li class="nav-item"><i class="fa fa-arrow-circle-right" aria-hidden="true"></i>
                                            <a href="http://ggffg.myzozo.net/hoa-qua-nhap-khau" class="nav-link">Hoa quả
                                                nhập khẩu</a></li>
                                        <li class="nav-item"><i class="fa fa-arrow-circle-right" aria-hidden="true"></i>
                                            <a href="http://ggffg.myzozo.net/rau-cu-sach" class="nav-link">Rau, củ
                                                sạch</a></li>
                                        <li class="nav-item"><i class="fa fa-arrow-circle-right" aria-hidden="true"></i>
                                            <a href="http://ggffg.myzozo.net/product/category?path=68" class="nav-link">Thịt
                                                tươi</a></li>
                                        <li class="nav-item"><i class="fa fa-arrow-circle-right" aria-hidden="true"></i>
                                            <a href="http://ggffg.myzozo.net/thuc-pham-dong-lanh" class="nav-link">Thực
                                                phẩm đông lạnh</a></li>
                                        <li class="nav-item"><i class="fa fa-arrow-circle-right" aria-hidden="true"></i>
                                            <a href="http://ggffg.myzozo.net/trai-cay-tuoi" class="nav-link">Trái cây
                                                tươi</a></li>
                                        <li class="nav-item"><i class="fa fa-arrow-circle-right" aria-hidden="true"></i>
                                            <a href="http://ggffg.myzozo.net/do-uong" class="nav-link">Đồ uống</a></li>
                                    </ul>
                                </div>
                            </div>
                        </aside>
                    </aside>
                </div>
            </div>
        </div>
    </div>
</section>
<div class="container-fluid">
    <div class="row">
        <div id="content" class="main">
            <section class="awe-section-2 " id="service_gallery-1">
                <div class="section_banner">
                    <div class="container"><h2 class="hidden"></h2>
                        <div class="banner-slider owl-carousel owl-loaded owl-drag" data-nav="true" data-lg-items="3"
                             data-md-items="3" data-sm-items="2" data-xs-items="2">
                            <div class="owl-stage-outer">
                                <div class="owl-stage"
                                     style="transform: translate3d(0px, 0px, 0px); transition: all 0s ease 0s; width: 1170px;">
                                    <div class="owl-item active" style="width: 360px; margin-right: 30px;">
                                        <div class="item"><a href="javascript:void(0)" class="clearfix"> <img
                                                src="./Freshfood - Hệ thống cửa hàng thực phẩm sạch VietGAP_files/banner-1-0x0.png"
                                                alt=""> </a></div>
                                    </div>
                                    <div class="owl-item active" style="width: 360px; margin-right: 30px;">
                                        <div class="item"><a href="javascript:void(0)" class="clearfix"> <img
                                                src="./Freshfood - Hệ thống cửa hàng thực phẩm sạch VietGAP_files/banner-2-0x0.png"
                                                alt=""> </a></div>
                                    </div>
                                    <div class="owl-item active" style="width: 360px; margin-right: 30px;">
                                        <div class="item"><a href="javascript:void(0)" class="clearfix"> <img
                                                src="./Freshfood - Hệ thống cửa hàng thực phẩm sạch VietGAP_files/banner-3-0x0.png"
                                                alt=""> </a></div>
                                    </div>
                                </div>
                            </div>
                            <div class="owl-nav disabled">
                                <button type="button" role="presentation" class="owl-prev disabled"><i
                                        class="fa fa-angle-left"></i></button>
                                <button type="button" role="presentation" class="owl-next disabled"><i
                                        class="fa fa-angle-right"></i></button>
                            </div>
                            <div class="owl-dots disabled"></div>
                        </div>
                    </div>
                </div>
            </section>
            <section class="awe-section-3 module_category category_custom" id="category_custom-2">
                <div class="section section-collection section-collection-1">
                    <div class="container">
                        <div class="collection-border">
                            <div class="collection-main">
                                <div class="row ">
                                    <div class="col-lg-12 col-sm-12">
                                        <div class="e-tabs not-dqtab ajax-tab-1" data-section="ajax-tab-1">
                                            <div class="row row-noGutter">
                                                <div class="col-sm-12">
                                                    <div class="content">
                                                        <div class="section-title"><h2>Trái cây nhập khẩu</h2></div>
                                                        <div>
                                                            <ul class="tabs tabs-title ajax clearfix">
                                                                <li class="tab-link has-content active current"
                                                                    data-tab="category_custom20"
                                                                    href="#category_custom20" data-toggle="tab"><span>Hoa quả nhập khẩu</span>
                                                                </li>
                                                                <li class="tab-link has-content "
                                                                    data-tab="category_custom21"
                                                                    href="#category_custom21" data-toggle="tab"><span>Rau, củ sạch</span>
                                                                </li>
                                                                <li class="tab-link has-content "
                                                                    data-tab="category_custom22"
                                                                    href="#category_custom22" data-toggle="tab"><span>Trái cây tươi</span>
                                                                </li>
                                                            </ul>
                                                            <div class="category_custom20 tab-content active current"
                                                                 id="category_custom20">
                                                                <div class="products products-view-grid owl-carousel owl-loaded owl-drag"
                                                                     data-nav="true" data-lgg-items="4"
                                                                     data-lg-items="4" data-md-items="4"
                                                                     data-sm-items="3" data-xs-items="2"
                                                                     data-xss-items="2">
                                                                    <div class="owl-stage-outer">
                                                                        <div class="owl-stage"
                                                                             style="transform: translate3d(0px, 0px, 0px); transition: all 0s ease 0s; width: 2340px;">
                                                                            <div class="owl-item active"
                                                                                 style="width: 262.5px; margin-right: 30px;">
                                                                                <div class="item">
                                                                                    <div class="product-box"
                                                                                         itemscope=""
                                                                                         itemtype="http://schema.org/Product">
                                                                                        <div class="product-thumbnail flexbox-grid">
                                                                                            <a href="http://ggffg.myzozo.net/kiwi-xanh"
                                                                                               title="Kiwi xanh"> <img
                                                                                                    src="<c:url value='/resources/images/kiwi1-228x228.jpg'/>"
                                                                                                    alt="Kiwi xanh"
                                                                                                    itemprop="image">
                                                                                            </a>
                                                                                            <div class="product-action hidden-md hidden-sm hidden-xs clearfix">
                                                                                                <form class="form variants form-nut-grid margin-bottom-0">
                                                                                                    <div>
                                                                                                        <a class="btn-buy btn-cart btn btn-primary left-to add_to_cart"
                                                                                                           data-toggle="tooltip"
                                                                                                           title=""
                                                                                                           href="http://ggffg.myzozo.net/checkout/cart/add?product_id=86&amp;redirect=true"
                                                                                                           data-original-title="Mua ngay">
                                                                                                            <i class="fa fa-shopping-bag"></i>
                                                                                                        </a> <a
                                                                                                            href="http://ggffg.myzozo.net/kiwi-xanh"
                                                                                                            data-toggle="tooltip"
                                                                                                            title=""
                                                                                                            class="btn-gray btn_view btn right-to"
                                                                                                            data-original-title="Xem"><i
                                                                                                            class="fa fa-eye"></i></a>
                                                                                                    </div>
                                                                                                </form>
                                                                                            </div>
                                                                                        </div>
                                                                                        <div class="product-info a-center">
                                                                                            <h3 class="product-name"><a
                                                                                                    href="http://ggffg.myzozo.net/kiwi-xanh"
                                                                                                    title="Kiwi xanh"
                                                                                                    itemprop="url">
                                                                                                <span itemprop="name">Kiwi xanh</span>
                                                                                            </a></h3>
                                                                                            <div class="price-box clearfix"
                                                                                                 itemprop="offers"
                                                                                                 itemscope=""
                                                                                                 itemtype="http://schema.org/Offer">
                                                                                                <div class="special-price">
                                                                                                    <span class="price product-price">119,000đ</span>
                                                                                                </div>
                                                                                                <meta itemprop="price"
                                                                                                      content="119000">
                                                                                            </div>
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                    <div class="owl-nav">
                                                                        <button type="button" role="presentation"
                                                                                class="owl-prev disabled"><i
                                                                                class="fa fa-angle-left"></i></button>
                                                                        <button type="button" role="presentation"
                                                                                class="owl-next"><i
                                                                                class="fa fa-angle-right"></i></button>
                                                                    </div>
                                                                    <div class="owl-dots disabled"></div>
                                                                </div>
                                                            </div>
                                                            <div class="category_custom21 tab-content "
                                                                 id="category_custom21">
                                                                <div class="products products-view-grid owl-carousel owl-loaded owl-drag"
                                                                     data-nav="true" data-lgg-items="4"
                                                                     data-lg-items="4" data-md-items="4"
                                                                     data-sm-items="3" data-xs-items="2"
                                                                     data-xss-items="2">
                                                                    <div class="owl-stage-outer">
                                                                        <div class="owl-stage"
                                                                             style="transform: translate3d(0px, 0px, 0px); transition: all 0s ease 0s; width: 2340px;">
                                                                            <div class="owl-item active"
                                                                                 style="width: 262.5px; margin-right: 30px;">
                                                                                <div class="item">
                                                                                    <div class="product-box"
                                                                                         itemscope=""
                                                                                         itemtype="http://schema.org/Product">
                                                                                        <div class="product-thumbnail flexbox-grid">
                                                                                            <a href="http://ggffg.myzozo.net/kiwi-xanh"
                                                                                               title="Kiwi xanh"> <img
                                                                                                    src="./Freshfood - Hệ thống cửa hàng thực phẩm sạch VietGAP_files/cach-giam-can-thanh-mat-tu-qua-kiwi1-228x228.jpg"
                                                                                                    alt="Kiwi xanh"
                                                                                                    itemprop="image">
                                                                                            </a>
                                                                                            <div class="product-action hidden-md hidden-sm hidden-xs clearfix">
                                                                                                <form class="form variants form-nut-grid margin-bottom-0">
                                                                                                    <div>
                                                                                                        <a class="btn-buy btn-cart btn btn-primary left-to add_to_cart"
                                                                                                           data-toggle="tooltip"
                                                                                                           title=""
                                                                                                           href="http://ggffg.myzozo.net/checkout/cart/add?product_id=86&amp;redirect=true"
                                                                                                           data-original-title="Mua ngay">
                                                                                                            <i class="fa fa-shopping-bag"></i>
                                                                                                        </a> <a
                                                                                                            href="http://ggffg.myzozo.net/kiwi-xanh"
                                                                                                            data-toggle="tooltip"
                                                                                                            title=""
                                                                                                            class="btn-gray btn_view btn right-to"
                                                                                                            data-original-title="Xem"><i
                                                                                                            class="fa fa-eye"></i></a>
                                                                                                    </div>
                                                                                                </form>
                                                                                            </div>
                                                                                        </div>
                                                                                        <div class="product-info a-center">
                                                                                            <h3 class="product-name"><a
                                                                                                    href="http://ggffg.myzozo.net/kiwi-xanh"
                                                                                                    title="Kiwi xanh"
                                                                                                    itemprop="url">
                                                                                                <span itemprop="name">Kiwi xanh</span>
                                                                                            </a></h3>
                                                                                            <div class="price-box clearfix"
                                                                                                 itemprop="offers"
                                                                                                 itemscope=""
                                                                                                 itemtype="http://schema.org/Offer">
                                                                                                <div class="special-price">
                                                                                                    <span class="price product-price">119,000đ</span>
                                                                                                </div>
                                                                                                <meta itemprop="price"
                                                                                                      content="119000">
                                                                                            </div>
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                    <div class="owl-nav">
                                                                        <button type="button" role="presentation"
                                                                                class="owl-prev disabled"><i
                                                                                class="fa fa-angle-left"></i></button>
                                                                        <button type="button" role="presentation"
                                                                                class="owl-next"><i
                                                                                class="fa fa-angle-right"></i></button>
                                                                    </div>
                                                                    <div class="owl-dots disabled"></div>
                                                                </div>
                                                            </div>
                                                            <div class="category_custom22 tab-content "
                                                                 id="category_custom22">
                                                                <div class="products products-view-grid owl-carousel owl-loaded owl-drag"
                                                                     data-nav="true" data-lgg-items="4"
                                                                     data-lg-items="4" data-md-items="4"
                                                                     data-sm-items="3" data-xs-items="2"
                                                                     data-xss-items="2">
                                                                    <div class="owl-stage-outer">
                                                                        <div class="owl-stage"
                                                                             style="transform: translate3d(0px, 0px, 0px); transition: all 0s ease 0s; width: 2340px;">
                                                                            <div class="owl-item active"
                                                                                 style="width: 262.5px; margin-right: 30px;">
                                                                                <div class="item">
                                                                                    <div class="product-box"
                                                                                         itemscope=""
                                                                                         itemtype="http://schema.org/Product">
                                                                                        <div class="product-thumbnail flexbox-grid">
                                                                                            <a href="http://ggffg.myzozo.net/kiwi-xanh"
                                                                                               title="Kiwi xanh"> <img
                                                                                                    src="./Freshfood - Hệ thống cửa hàng thực phẩm sạch VietGAP_files/cach-giam-can-thanh-mat-tu-qua-kiwi1-228x228.jpg"
                                                                                                    alt="Kiwi xanh"
                                                                                                    itemprop="image">
                                                                                            </a>
                                                                                            <div class="product-action hidden-md hidden-sm hidden-xs clearfix">
                                                                                                <form class="form variants form-nut-grid margin-bottom-0">
                                                                                                    <div>
                                                                                                        <a class="btn-buy btn-cart btn btn-primary left-to add_to_cart"
                                                                                                           data-toggle="tooltip"
                                                                                                           title=""
                                                                                                           href="http://ggffg.myzozo.net/checkout/cart/add?product_id=86&amp;redirect=true"
                                                                                                           data-original-title="Mua ngay">
                                                                                                            <i class="fa fa-shopping-bag"></i>
                                                                                                        </a> <a
                                                                                                            href="http://ggffg.myzozo.net/kiwi-xanh"
                                                                                                            data-toggle="tooltip"
                                                                                                            title=""
                                                                                                            class="btn-gray btn_view btn right-to"
                                                                                                            data-original-title="Xem"><i
                                                                                                            class="fa fa-eye"></i></a>
                                                                                                    </div>
                                                                                                </form>
                                                                                            </div>
                                                                                        </div>
                                                                                        <div class="product-info a-center">
                                                                                            <h3 class="product-name"><a
                                                                                                    href="http://ggffg.myzozo.net/kiwi-xanh"
                                                                                                    title="Kiwi xanh"
                                                                                                    itemprop="url">
                                                                                                <span itemprop="name">Kiwi xanh</span>
                                                                                            </a></h3>
                                                                                            <div class="price-box clearfix"
                                                                                                 itemprop="offers"
                                                                                                 itemscope=""
                                                                                                 itemtype="http://schema.org/Offer">
                                                                                                <div class="special-price">
                                                                                                    <span class="price product-price">119,000đ</span>
                                                                                                </div>
                                                                                                <meta itemprop="price"
                                                                                                      content="119000">
                                                                                            </div>
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                    <div class="owl-nav">
                                                                        <button type="button" role="presentation"
                                                                                class="owl-prev disabled"><i
                                                                                class="fa fa-angle-left"></i></button>
                                                                        <button type="button" role="presentation"
                                                                                class="owl-next"><i
                                                                                class="fa fa-angle-right"></i></button>
                                                                    </div>
                                                                    <div class="owl-dots disabled"></div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <section class="awe-section-3 module_category category_custom" id="category_custom-3">
                <div class="section section-collection section-collection-1">
                    <div class="container">
                        <div class="collection-border">
                            <div class="collection-main">
                                <div class="row ">
                                    <div class="col-lg-12 col-sm-12">
                                        <div class="e-tabs not-dqtab ajax-tab-1" data-section="ajax-tab-1">
                                            <div class="row row-noGutter">
                                                <div class="col-sm-12">
                                                    <div class="content">
                                                        <div class="section-title"><h2>Thực phẩm sạch</h2></div>
                                                        <div>
                                                            <ul class="tabs tabs-title ajax clearfix">
                                                                <li class="tab-link has-content active current"
                                                                    data-tab="category_custom30"
                                                                    href="#category_custom30" data-toggle="tab"><span>Hải sản tươi</span>
                                                                </li>
                                                                <li class="tab-link has-content "
                                                                    data-tab="category_custom31"
                                                                    href="#category_custom31" data-toggle="tab"><span>Thịt tươi</span>
                                                                </li>
                                                                <li class="tab-link has-content "
                                                                    data-tab="category_custom32"
                                                                    href="#category_custom32" data-toggle="tab"><span>Đồ uống</span>
                                                                </li>
                                                            </ul>
                                                            <div class="category_custom30 tab-content active current"
                                                                 id="category_custom30">
                                                                <div class="products products-view-grid owl-carousel owl-loaded owl-drag"
                                                                     data-nav="true" data-lgg-items="4"
                                                                     data-lg-items="4" data-md-items="4"
                                                                     data-sm-items="3" data-xs-items="2"
                                                                     data-xss-items="2">
                                                                    <div class="owl-stage-outer">
                                                                        <div class="owl-stage"
                                                                             style="transform: translate3d(0px, 0px, 0px); transition: all 0s ease 0s; width: 2340px;">
                                                                            <div class="owl-item active"
                                                                                 style="width: 262.5px; margin-right: 30px;">
                                                                                <div class="item">
                                                                                    <div class="product-box"
                                                                                         itemscope=""
                                                                                         itemtype="http://schema.org/Product">
                                                                                        <div class="product-thumbnail flexbox-grid">
                                                                                            <a href="http://ggffg.myzozo.net/man-sapa"
                                                                                               title="Mận Sapa"> <img
                                                                                                    src="./Freshfood - Hệ thống cửa hàng thực phẩm sạch VietGAP_files/product-6-228x228.jpg"
                                                                                                    alt="Mận Sapa"
                                                                                                    itemprop="image">
                                                                                            </a>
                                                                                            <div class="sale-flash">
                                                                                                <div class="before"></div>
                                                                                                -50%
                                                                                            </div>
                                                                                            <div class="product-action hidden-md hidden-sm hidden-xs clearfix">
                                                                                                <form class="form variants form-nut-grid margin-bottom-0">
                                                                                                    <div>
                                                                                                        <a class="btn-buy btn-cart btn btn-primary left-to add_to_cart"
                                                                                                           data-toggle="tooltip"
                                                                                                           title=""
                                                                                                           href="http://ggffg.myzozo.net/checkout/cart/add?product_id=82&amp;redirect=true"
                                                                                                           data-original-title="Mua ngay">
                                                                                                            <i class="fa fa-shopping-bag"></i>
                                                                                                        </a> <a
                                                                                                            href="http://ggffg.myzozo.net/man-sapa"
                                                                                                            data-toggle="tooltip"
                                                                                                            title=""
                                                                                                            class="btn-gray btn_view btn right-to"
                                                                                                            data-original-title="Xem"><i
                                                                                                            class="fa fa-eye"></i></a>
                                                                                                    </div>
                                                                                                </form>
                                                                                            </div>
                                                                                        </div>
                                                                                        <div class="product-info a-center">
                                                                                            <h3 class="product-name"><a
                                                                                                    href="http://ggffg.myzozo.net/man-sapa"
                                                                                                    title="Mận Sapa"
                                                                                                    itemprop="url">
                                                                                                <span itemprop="name">Mận Sapa</span>
                                                                                            </a></h3>
                                                                                            <div class="price-box clearfix"
                                                                                                 itemprop="offers"
                                                                                                 itemscope=""
                                                                                                 itemtype="http://schema.org/Offer">
                                                                                                <div class="special-price">
                                                                                                    <span class="price product-price">45,000đ</span>
                                                                                                </div>
                                                                                                <div class="old-price">
                                                                                                    <span class="price product-price-old">90,000đ</span>
                                                                                                </div>
                                                                                                <meta itemprop="price"
                                                                                                      content="45000">
                                                                                            </div>
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                    <div class="owl-nav">
                                                                        <button type="button" role="presentation"
                                                                                class="owl-prev disabled"><i
                                                                                class="fa fa-angle-left"></i></button>
                                                                        <button type="button" role="presentation"
                                                                                class="owl-next"><i
                                                                                class="fa fa-angle-right"></i></button>
                                                                    </div>
                                                                    <div class="owl-dots disabled"></div>
                                                                </div>
                                                            </div>
                                                            <div class="category_custom31 tab-content "
                                                                 id="category_custom31">
                                                                <div class="products products-view-grid owl-carousel owl-loaded owl-drag"
                                                                     data-nav="true" data-lgg-items="4"
                                                                     data-lg-items="4" data-md-items="4"
                                                                     data-sm-items="3" data-xs-items="2"
                                                                     data-xss-items="2">
                                                                    <div class="owl-stage-outer">
                                                                        <div class="owl-stage"
                                                                             style="transform: translate3d(0px, 0px, 0px); transition: all 0s ease 0s; width: 2340px;">
                                                                            <div class="owl-item active"
                                                                                 style="width: 262.5px; margin-right: 30px;">
                                                                                <div class="item">
                                                                                    <div class="product-box"
                                                                                         itemscope=""
                                                                                         itemtype="http://schema.org/Product">
                                                                                        <div class="product-thumbnail flexbox-grid">
                                                                                            <a href="http://ggffg.myzozo.net/man-sapa"
                                                                                               title="Mận Sapa"> <img
                                                                                                    src="./Freshfood - Hệ thống cửa hàng thực phẩm sạch VietGAP_files/product-6-228x228.jpg"
                                                                                                    alt="Mận Sapa"
                                                                                                    itemprop="image">
                                                                                            </a>
                                                                                            <div class="sale-flash">
                                                                                                <div class="before"></div>
                                                                                                -50%
                                                                                            </div>
                                                                                            <div class="product-action hidden-md hidden-sm hidden-xs clearfix">
                                                                                                <form class="form variants form-nut-grid margin-bottom-0">
                                                                                                    <div>
                                                                                                        <a class="btn-buy btn-cart btn btn-primary left-to add_to_cart"
                                                                                                           data-toggle="tooltip"
                                                                                                           title=""
                                                                                                           href="http://ggffg.myzozo.net/checkout/cart/add?product_id=82&amp;redirect=true"
                                                                                                           data-original-title="Mua ngay">
                                                                                                            <i class="fa fa-shopping-bag"></i>
                                                                                                        </a> <a
                                                                                                            href="http://ggffg.myzozo.net/man-sapa"
                                                                                                            data-toggle="tooltip"
                                                                                                            title=""
                                                                                                            class="btn-gray btn_view btn right-to"
                                                                                                            data-original-title="Xem"><i
                                                                                                            class="fa fa-eye"></i></a>
                                                                                                    </div>
                                                                                                </form>
                                                                                            </div>
                                                                                        </div>
                                                                                        <div class="product-info a-center">
                                                                                            <h3 class="product-name"><a
                                                                                                    href="http://ggffg.myzozo.net/man-sapa"
                                                                                                    title="Mận Sapa"
                                                                                                    itemprop="url">
                                                                                                <span itemprop="name">Mận Sapa</span>
                                                                                            </a></h3>
                                                                                            <div class="price-box clearfix"
                                                                                                 itemprop="offers"
                                                                                                 itemscope=""
                                                                                                 itemtype="http://schema.org/Offer">
                                                                                                <div class="special-price">
                                                                                                    <span class="price product-price">45,000đ</span>
                                                                                                </div>
                                                                                                <div class="old-price">
                                                                                                    <span class="price product-price-old">90,000đ</span>
                                                                                                </div>
                                                                                                <meta itemprop="price"
                                                                                                      content="45000">
                                                                                            </div>
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                    <div class="owl-nav">
                                                                        <button type="button" role="presentation"
                                                                                class="owl-prev disabled"><i
                                                                                class="fa fa-angle-left"></i></button>
                                                                        <button type="button" role="presentation"
                                                                                class="owl-next"><i
                                                                                class="fa fa-angle-right"></i></button>
                                                                    </div>
                                                                    <div class="owl-dots disabled"></div>
                                                                </div>
                                                            </div>
                                                            <div class="category_custom32 tab-content "
                                                                 id="category_custom32">
                                                                <div class="products products-view-grid owl-carousel owl-loaded owl-drag"
                                                                     data-nav="true" data-lgg-items="4"
                                                                     data-lg-items="4" data-md-items="4"
                                                                     data-sm-items="3" data-xs-items="2"
                                                                     data-xss-items="2">
                                                                    <div class="owl-stage-outer">
                                                                        <div class="owl-stage"
                                                                             style="transform: translate3d(0px, 0px, 0px); transition: all 0s ease 0s; width: 2340px;">
                                                                            <div class="owl-item active"
                                                                                 style="width: 262.5px; margin-right: 30px;">
                                                                                <div class="item">
                                                                                    <div class="product-box"
                                                                                         itemscope=""
                                                                                         itemtype="http://schema.org/Product">
                                                                                        <div class="product-thumbnail flexbox-grid">
                                                                                            <a href="http://ggffg.myzozo.net/kiwi-xanh"
                                                                                               title="Kiwi xanh"> <img
                                                                                                    src="./Freshfood - Hệ thống cửa hàng thực phẩm sạch VietGAP_files/cach-giam-can-thanh-mat-tu-qua-kiwi1-228x228.jpg"
                                                                                                    alt="Kiwi xanh"
                                                                                                    itemprop="image">
                                                                                            </a>
                                                                                            <div class="product-action hidden-md hidden-sm hidden-xs clearfix">
                                                                                                <form class="form variants form-nut-grid margin-bottom-0">
                                                                                                    <div>
                                                                                                        <a class="btn-buy btn-cart btn btn-primary left-to add_to_cart"
                                                                                                           data-toggle="tooltip"
                                                                                                           title=""
                                                                                                           href="http://ggffg.myzozo.net/checkout/cart/add?product_id=86&amp;redirect=true"
                                                                                                           data-original-title="Mua ngay">
                                                                                                            <i class="fa fa-shopping-bag"></i>
                                                                                                        </a> <a
                                                                                                            href="http://ggffg.myzozo.net/kiwi-xanh"
                                                                                                            data-toggle="tooltip"
                                                                                                            title=""
                                                                                                            class="btn-gray btn_view btn right-to"
                                                                                                            data-original-title="Xem"><i
                                                                                                            class="fa fa-eye"></i></a>
                                                                                                    </div>
                                                                                                </form>
                                                                                            </div>
                                                                                        </div>
                                                                                        <div class="product-info a-center">
                                                                                            <h3 class="product-name"><a
                                                                                                    href="http://ggffg.myzozo.net/kiwi-xanh"
                                                                                                    title="Kiwi xanh"
                                                                                                    itemprop="url">
                                                                                                <span itemprop="name">Kiwi xanh</span>
                                                                                            </a></h3>
                                                                                            <div class="price-box clearfix"
                                                                                                 itemprop="offers"
                                                                                                 itemscope=""
                                                                                                 itemtype="http://schema.org/Offer">
                                                                                                <div class="special-price">
                                                                                                    <span class="price product-price">119,000đ</span>
                                                                                                </div>
                                                                                                <meta itemprop="price"
                                                                                                      content="119000">
                                                                                            </div>
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                    <div class="owl-nav">
                                                                        <button type="button" role="presentation"
                                                                                class="owl-prev disabled"><i
                                                                                class="fa fa-angle-left"></i></button>
                                                                        <button type="button" role="presentation"
                                                                                class="owl-next"><i
                                                                                class="fa fa-angle-right"></i></button>
                                                                    </div>
                                                                    <div class="owl-dots disabled"></div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <section class="awe-section-2 " id="service_gallery-2">
                <div class="section_banner">
                    <div class="container"><h2 class="hidden"></h2>
                        <div class="banner-slider owl-carousel owl-loaded owl-drag" data-nav="true" data-lg-items="2"
                             data-md-items="2" data-sm-items="2" data-xs-items="2">
                            <div class="owl-stage-outer">
                                <div class="owl-stage"
                                     style="transform: translate3d(0px, 0px, 0px); transition: all 0s ease 0s; width: 1170px;">
                                    <div class="owl-item active" style="width: 555px; margin-right: 30px;">
                                        <div class="item"><a href="javascript:void(0)" class="clearfix"> <img
                                                src="./Freshfood - Hệ thống cửa hàng thực phẩm sạch VietGAP_files/bn1-0x0.png"
                                                alt=""> </a></div>
                                    </div>
                                    <div class="owl-item active" style="width: 555px; margin-right: 30px;">
                                        <div class="item"><a href="javascript:void(0)" class="clearfix"> <img
                                                src="./Freshfood - Hệ thống cửa hàng thực phẩm sạch VietGAP_files/bn2-0x0.jpg"
                                                alt=""> </a></div>
                                    </div>
                                </div>
                            </div>
                            <div class="owl-nav disabled">
                                <button type="button" role="presentation" class="owl-prev disabled"><i
                                        class="fa fa-angle-left"></i></button>
                                <button type="button" role="presentation" class="owl-next disabled"><i
                                        class="fa fa-angle-right"></i></button>
                            </div>
                            <div class="owl-dots disabled"></div>
                        </div>
                    </div>
                </div>
            </section>
            <section class="awe-section-10 news_module news_custom " id="news_custom-0">
                <div class="section section_blog">
                    <div class="container">
                        <div class="section-title a-center"><h2><a href="javascript:void(0)">Tin tức</a></h2>
                            <p></p></div>
                        <div class="section-content">
                            <div class="blog-slider owl-carousel owl-loaded owl-drag" data-nav="true" data-lg-items="3"
                                 data-md-items="3" data-sm-items="2" data-xs-items="2">
                                <div class="owl-stage-outer">
                                    <div class="owl-stage"
                                         style="transform: translate3d(0px, 0px, 0px); transition: all 0s ease 0s; width: 1170px;">
                                        <div class="owl-item active" style="width: 360px; margin-right: 30px;">
                                            <article class="blog-item text-center" itemscope=""
                                                     itemtype="http://schema.org/Article">
                                                <div>
                                                    <div class="blog-item-thumbnail"><a
                                                            href="http://ggffg.myzozo.net/bi-mat-dinh-duong-thu-vi-tu-mau-sac-rau-qua-ban-nen-biet">
                                                        <img src="./Freshfood - Hệ thống cửa hàng thực phẩm sạch VietGAP_files/rau-huu-co-480x274.jpg"
                                                             alt="Bí mật dinh dưỡng thú vị từ màu sắc rau quả bạn nên biết"
                                                             itemprop="image"> </a></div>
                                                    <div class="blog-item-info m-4"><h3 class="blog-item-name"
                                                                                        itemprop="headline"><a
                                                            href="http://ggffg.myzozo.net/bi-mat-dinh-duong-thu-vi-tu-mau-sac-rau-qua-ban-nen-biet"
                                                            itemprop="url"> <span itemprop="name">Bí mật dinh dưỡng thú vị từ màu sắc rau quả bạn nên biết</span>
                                                    </a></h3>
                                                        <meta itemprop="author" content="Admin">
                                                        <span itemprop="publisher" itemscope=""
                                                              itemtype="https://schema.org/Organization"> <meta
                                                                itemprop="name" content="Admin"> </span>
                                                        <meta itemprop="datePublished" content="11/03/2017">
                                                        <p class="blog-item-summary" itemprop="description">Mỗi loại
                                                            thực vật có một màu sắc đặc trưng và cũng có các chất dinh
                                                            dưỡng đặc trưng khác nhau. Những loại rau, củ quả, có màu
                                                            sắc càng mạnh thì dinh dưỡng…</p> <a class="btn"
                                                                                                 href="http://ggffg.myzozo.net/bi-mat-dinh-duong-thu-vi-tu-mau-sac-rau-qua-ban-nen-biet">Xem
                                                            thêm</a></div>
                                                </div>
                                            </article>
                                        </div>
                                        <div class="owl-item active" style="width: 360px; margin-right: 30px;">
                                            <article class="blog-item text-center" itemscope=""
                                                     itemtype="http://schema.org/Article">
                                                <div>
                                                    <div class="blog-item-thumbnail"><a
                                                            href="http://ggffg.myzozo.net/phan-biet-thuc-pham-huu-co-va-thuc-pham-tu-nhien">
                                                        <img src="./Freshfood - Hệ thống cửa hàng thực phẩm sạch VietGAP_files/organic-produce-480x274.jpg"
                                                             alt="Phân biệt Thực phẩm Hữu cơ và thực phẩm Tự nhiên"
                                                             itemprop="image"> </a></div>
                                                    <div class="blog-item-info m-4"><h3 class="blog-item-name"
                                                                                        itemprop="headline"><a
                                                            href="http://ggffg.myzozo.net/phan-biet-thuc-pham-huu-co-va-thuc-pham-tu-nhien"
                                                            itemprop="url"> <span itemprop="name">Phân biệt Thực phẩm Hữu cơ và thực phẩm Tự nhiên</span>
                                                    </a></h3>
                                                        <meta itemprop="author" content="Admin">
                                                        <span itemprop="publisher" itemscope=""
                                                              itemtype="https://schema.org/Organization"> <meta
                                                                itemprop="name" content="Admin"> </span>
                                                        <meta itemprop="datePublished" content="15/03/2017">
                                                        <p class="blog-item-summary" itemprop="description">Với việc
                                                            xuất hiện ngày càng nhiều chuỗi cửa hàng thực phẩm hữu cơ
                                                            (Organic Foods) ở Việt Nam nói chung và Thành phố Hồ Chí
                                                            Minh nói riêng, mọi người…</p> <a class="btn"
                                                                                              href="http://ggffg.myzozo.net/phan-biet-thuc-pham-huu-co-va-thuc-pham-tu-nhien">Xem
                                                            thêm</a></div>
                                                </div>
                                            </article>
                                        </div>
                                        <div class="owl-item active" style="width: 360px; margin-right: 30px;">
                                            <article class="blog-item text-center" itemscope=""
                                                     itemtype="http://schema.org/Article">
                                                <div>
                                                    <div class="blog-item-thumbnail"><a
                                                            href="http://ggffg.myzozo.net/nhung-loai-trai-cay-nhat-dat-nhu-vang-rong-do-bo-ve-viet-nam">
                                                        <img src="./Freshfood - Hệ thống cửa hàng thực phẩm sạch VietGAP_files/blog1-480x274.jpg"
                                                             alt="Những loại trái cây Nhật đắt như vàng ròng đổ bộ về Việt Nam"
                                                             itemprop="image"> </a></div>
                                                    <div class="blog-item-info m-4"><h3 class="blog-item-name"
                                                                                        itemprop="headline"><a
                                                            href="http://ggffg.myzozo.net/nhung-loai-trai-cay-nhat-dat-nhu-vang-rong-do-bo-ve-viet-nam"
                                                            itemprop="url"> <span itemprop="name">Những loại trái cây Nhật đắt như vàng ròng đổ bộ về Việt Nam</span>
                                                    </a></h3>
                                                        <meta itemprop="author" content="Admin">
                                                        <span itemprop="publisher" itemscope=""
                                                              itemtype="https://schema.org/Organization"> <meta
                                                                itemprop="name" content="Admin"> </span>
                                                        <meta itemprop="datePublished" content="02/06/2017">
                                                        <p class="blog-item-summary" itemprop="description">Nhật Bản là
                                                            đất nước có nhiều loại hoa quả có chất lượng thuộc hàng ngon
                                                            nhất thế giới nhưng cũng vô cùng đắt đỏ. Đáng chú ý, nhiều
                                                            loại quả do nông dân…</p> <a class="btn"
                                                                                         href="http://ggffg.myzozo.net/nhung-loai-trai-cay-nhat-dat-nhu-vang-rong-do-bo-ve-viet-nam">Xem
                                                            thêm</a></div>
                                                </div>
                                            </article>
                                        </div>
                                    </div>
                                </div>
                                <div class="owl-nav disabled">
                                    <button type="button" role="presentation" class="owl-prev disabled"><i
                                            class="fa fa-angle-left"></i></button>
                                    <button type="button" role="presentation" class="owl-next disabled"><i
                                            class="fa fa-angle-right"></i></button>
                                </div>
                                <div class="owl-dots disabled"></div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <section class="awe-section-11 feedback" id="feedback-0">
                <div class="section section_testimonial">
                    <div class="container">
                        <div class="section-title a-center"><h2><a href="javascript:void(0)">Phản hồi của khách hàng</a>
                        </h2>
                            <p>Phản hồi của những khách hàng đã và đang sử dụng sản phẩm trong suốt những năm qua</p>
                        </div>
                        <div class="section-content">
                            <div class="testimonial-slider owl-carousel owl-loaded owl-drag" data-nav="true"
                                 data-lg-items="3" data-md-items="3" data-sm-items="2" data-xs-items="2">
                                <div class="owl-stage-outer">
                                    <div class="owl-stage"
                                         style="transform: translate3d(0px, 0px, 0px); transition: all 0s ease 0s; width: 1170px;">
                                        <div class="owl-item active" style="width: 360px; margin-right: 30px;">
                                            <div class="testimonial-item text-center p-4 mb-5">
                                                <div class="image-avata"><img
                                                        src="./Freshfood - Hệ thống cửa hàng thực phẩm sạch VietGAP_files/kh4-250x250.png"
                                                        alt="Mr. Thành"></div>
                                                <h4 class="name">Nhân viên văn phòng - Mr. Thành</h4>
                                                <div class="designation m-0">Là một người khá kỹ tính, tôi luôn luôn lựa
                                                    chọn những thực phẩm sạch nhất. Và đây là nơi tôi đặt trọng niềm tin
                                                </div>
                                            </div>
                                        </div>
                                        <div class="owl-item active" style="width: 360px; margin-right: 30px;">
                                            <div class="testimonial-item text-center p-4 mb-5">
                                                <div class="image-avata"><img
                                                        src="./Freshfood - Hệ thống cửa hàng thực phẩm sạch VietGAP_files/kh5-250x250.jpg"
                                                        alt="Thu Phương"></div>
                                                <h4 class="name">Nhân viên - Thu Phương</h4>
                                                <div class="designation m-0">Tôi rất tin tưởng mua thực phẩm ở
                                                    FreshFood, mỗi lần công ty có liên hoan tôi lại đặt hoa quả ở đây,
                                                    sẽ luôn ủng hộ FreshFood dài dài
                                                </div>
                                            </div>
                                        </div>
                                        <div class="owl-item active" style="width: 360px; margin-right: 30px;">
                                            <div class="testimonial-item text-center p-4 mb-5">
                                                <div class="image-avata"><img
                                                        src="./Freshfood - Hệ thống cửa hàng thực phẩm sạch VietGAP_files/kh2-250x250.jpg"
                                                        alt="Hoàng Yến"></div>
                                                <h4 class="name">Nội trợ - Hoàng Yến</h4>
                                                <div class="designation m-0">Đối với người làm nội trợ tôi thì việc thực
                                                    phẩm xuất xứ rõ nguồn gốc, đảm bảo an toàn thực phẩm rất quan trọng
                                                    vì vậy tôi rất tin tưởng ở FreshFood
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="owl-nav disabled">
                                    <button type="button" role="presentation" class="owl-prev disabled"><i
                                            class="fa fa-angle-left"></i></button>
                                    <button type="button" role="presentation" class="owl-next disabled"><i
                                            class="fa fa-angle-right"></i></button>
                                </div>
                                <div class="owl-dots disabled"></div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <section class="awe-section-12 carousel_partner module_carousel " id="carousel-0">
                <div class="section section-brand mb-5">
                    <div class="container"><h2 class="hidden">Partner</h2>
                        <div class="owl-carousel owl-theme owl-loaded owl-drag" data-nav="true" data-lg-items="6"
                             data-md-items="6" data-sm-items="2" data-xs-items="2">
                            <div class="owl-stage-outer">
                                <div class="owl-stage"
                                     style="transform: translate3d(0px, 0px, 0px); transition: all 0s ease 0s; width: 1170px;">
                                    <div class="owl-item active" style="width: 165px; margin-right: 30px;">
                                        <div class="brand-item"><a href="javascript:void(0)" class="img25"> <img
                                                src="./Freshfood - Hệ thống cửa hàng thực phẩm sạch VietGAP_files/brand1-165x80.png"
                                                alt="brand 1"> </a></div>
                                    </div>
                                    <div class="owl-item active" style="width: 165px; margin-right: 30px;">
                                        <div class="brand-item"><a href="javascript:void(0)" class="img25"> <img
                                                src="./Freshfood - Hệ thống cửa hàng thực phẩm sạch VietGAP_files/brand2-165x80.png"
                                                alt="brand 2"> </a></div>
                                    </div>
                                    <div class="owl-item active" style="width: 165px; margin-right: 30px;">
                                        <div class="brand-item"><a href="javascript:void(0)" class="img25"> <img
                                                src="./Freshfood - Hệ thống cửa hàng thực phẩm sạch VietGAP_files/brand3-165x80.png"
                                                alt="brand 3"> </a></div>
                                    </div>
                                    <div class="owl-item active" style="width: 165px; margin-right: 30px;">
                                        <div class="brand-item"><a href="javascript:void(0)" class="img25"> <img
                                                src="./Freshfood - Hệ thống cửa hàng thực phẩm sạch VietGAP_files/brand4-165x80.png"
                                                alt="brand 4"> </a></div>
                                    </div>
                                    <div class="owl-item active" style="width: 165px; margin-right: 30px;">
                                        <div class="brand-item"><a href="javascript:void(0)" class="img25"> <img
                                                src="./Freshfood - Hệ thống cửa hàng thực phẩm sạch VietGAP_files/brand5-165x80.png"
                                                alt="brand 5"> </a></div>
                                    </div>
                                    <div class="owl-item active" style="width: 165px; margin-right: 30px;">
                                        <div class="brand-item"><a href="javascript:void(0)" class="img25"> <img
                                                src="./Freshfood - Hệ thống cửa hàng thực phẩm sạch VietGAP_files/brand6-165x80.png"
                                                alt="brand 6"> </a></div>
                                    </div>
                                </div>
                            </div>
                            <div class="owl-nav disabled">
                                <button type="button" role="presentation" class="owl-prev disabled"><i
                                        class="fa fa-angle-left"></i></button>
                                <button type="button" role="presentation" class="owl-next disabled"><i
                                        class="fa fa-angle-right"></i></button>
                            </div>
                            <div class="owl-dots disabled"></div>
                        </div>
                    </div>
                </div>
            </section>
        </div>
    </div>
</div>
<footer class="footer">
    <div class="content">
        <div class="site-footer">
            <div class="footer-inner padding-top-35 pb-lg-5">
                <div class="container">
                    <div class="row">
                        <div class="col-xs-12 col-sm-6 col-lg-5">
                            <div class="footer-widget"><h3 class="hastog"><span>Liên hệ</span></h3>
                                <ul class="list-menu list-showroom">
                                    <li class="clearfix"><i class="block_icon fa fa-map-marker"></i>
                                        <p>A12, Đinh Tiên Hoàng, Q. Hoàn Kiếm, Hà Nội</p></li>
                                    <li class="clearfix"><i class="block_icon fa fa-phone"></i> <a
                                            href="tel:0123456789">0123456789</a></li>
                                    <li class="clearfix"><i class="block_icon fa fa-envelope"></i> <a
                                            href="mailto:abc@gmail.com">abc@gmail.com</a></li>
                                </ul>
                            </div>
                        </div>
                        <div class="col-xs-12 col-sm-6 col-lg-2">
                            <div class="footer-widget"><h3 class="hastog"><span>Thông tin</span></h3>
                                <ul class="list-menu list-blogs">
                                    <li><a href="http://ggffg.myzozo.net/gioi-thieu">Giới thiệu</a></li>
                                    <li><a href="http://ggffg.myzozo.net/thong-tin-van-chuyen">Thông tin vận chuyển</a>
                                    </li>
                                    <li><a href="http://ggffg.myzozo.net/quy-dinh-va-dieu-khoan">Quy định và Điều
                                        khoản</a></li>
                                    <li><a href="http://ggffg.myzozo.net/chinh-sach-bao-mat">Chính sách bảo mật</a></li>
                                </ul>
                            </div>
                        </div>
                        <div class="col-xs-12 col-sm-6 col-lg-2">
                            <div class="footer-widget"></div>
                        </div>
                        <div class="col-xs-12 col-sm-6 col-lg-3">
                            <div class="footer-widget"><h3 class="margin-bottom-20 hastog"><span>Facebook</span></h3>
                                <div class="list-menu">
                                    <div class="footerText">
                                        <div class="fb-page fb_iframe_widget"
                                             data-href="https://www.facebook.com/FacebookVietNam"
                                             data-small-header="false" data-adapt-container-width="true"
                                             data-hide-cover="false" data-show-facepile="false"
                                             fb-xfbml-state="rendered"
                                             fb-iframe-plugin-query="adapt_container_width=true&amp;app_id=829732533863539&amp;container_width=262&amp;hide_cover=false&amp;href=https%3A%2F%2Fwww.facebook.com%2FFacebookVietNam&amp;locale=vi_VN&amp;sdk=joey&amp;show_facepile=false&amp;small_header=false">
                                            <span style="vertical-align: bottom; width: 262px; height: 130px;"><iframe
                                                    name="fad6e53b9c90a4" width="1000px" height="1000px" frameborder="0"
                                                    allowtransparency="true" allowfullscreen="true" scrolling="no"
                                                    allow="encrypted-media" title="fb:page Facebook Social Plugin"
                                                    src="./Freshfood - Hệ thống cửa hàng thực phẩm sạch VietGAP_files/page.html"
                                                    style="border: none; visibility: visible; width: 262px; height: 130px;"
                                                    class=""></iframe></span></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="copyright clearfix">
                <div class="container">
                    <div class="inner clearfix">
                        <div class="row">
                            <div class="col-md-6 text-center text-lg-left"><span>© Copyright 2019 Fresh Food. Thiết kế bởi <a
                                    target="_blank"
                                    href="https://www.zozo.vn/?utm_source=ggffg.myzozo.net&amp;utm_medium=referral&amp;utm_campaign=copyrightwebdesign&amp;utm_term=footerurl&amp;utm_content=footer">Zozo</a></span>
                            </div>
                            <div class="col-md-6 text-center text-lg-right hidden-xs">
                                <ul class="list-menu-footer"></ul>
                            </div>
                        </div>
                    </div>
                    <div class="back-to-top show"><i class="fa fa-angle-up"></i></div>
                    <a href="tel:0123456789" class="suntory-alo-phone bottom-left suntory-alo-green"
                       id="suntory-alo-phoneIcon">
                        <div class="suntory-alo-ph-img-circle"><i class="fa fa-phone"></i></div>
                    </a></div>
            </div>
        </div>
    </div>
</footer>
<script type="text/javascript"
        src="<c:url value='/resources/js/zozo-main.min.js'/>"></script>
<link rel="stylesheet" href="<c:url value='/resources/css/social_login_button.css'/>">
<!-- Facebook Login --> <!-- Google Login --> <!-- Facebook script -->
<div id="fb-root" class=" fb_reset">
    <div style="position: absolute; top: -10000px; width: 0px; height: 0px;">
        <div></div>
        <div>
            <iframe name="fb_xdm_frame_https" frameborder="0" allowtransparency="true" allowfullscreen="true"
                    scrolling="no" allow="encrypted-media" id="fb_xdm_frame_https" aria-hidden="true"
                    title="Facebook Cross Domain Communication Frame" tabindex="-1"
                    src="./Freshfood - Hệ thống cửa hàng thực phẩm sạch VietGAP_files/d_vbiawPdxB.html"
                    style="border: none;"></iframe>
        </div>
    </div>
</div>
<script type="text/javascript"> (function (d, s, id) {
    var js, fjs = d.getElementsByTagName(s)[0];
    if (d.getElementById(id)) return;
    js = d.createElement(s);
    js.id = id;
    js.src = "//connect.facebook.net/vi_VN/sdk.js#xfbml=1&version=v2.10&appId=829732533863539";
    fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk')); </script> <!-- Show Popup Cart -->
<button id="btn_show_cart" type="button" class="btn btn-primary" data-toggle="modal"
        data-target=".bs-popupcart-modal-lg" style="display: none;"></button>
<div class="modal fade bs-popupcart-modal-lg" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel">
    <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
                        aria-hidden="true">× </span></button>
                <h4 class="modal-title" id="myModalLabel"><i class="fa fa-shopping-cart" aria-hidden="true"></i> Giỏ
                    hàng </h4></div>
            <div class="modal-body" id="load_info_cart"></div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">Tiếp tục mua hàng</button>
                <a href="http://ggffg.myzozo.net/checkout/checkout" class="btn btn-primary">Tiến hành thanh toán</a>
            </div>
        </div>
    </div>
</div>
<script type="text/javascript"> /* Sau khi tat khung popup cart, cap nhat lai gio hang tren header */
$('.bs-popupcart-modal-lg').on('hidden.bs.modal', function (e) {
    $.ajax({
        url: '/checkout/cart/getTotalProductInCart', type: 'post', dataType: 'json', beforeSend: function () {
        }, complete: function () {
        }, success: function (json) {
            var out = json['total'].substr(0, json['total'].indexOf(' '));
            $('#cart-total').html(out);
            $('#cart > ul').load('/common/cart/info ul li');
        }
    });
}); </script>
</body>
</html>