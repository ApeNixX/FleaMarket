<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!doctype html>
<html class="no-js" lang="zxx">

<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Home</title>
    <meta name="robots" content="noindex, follow" />
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- Favicon -->


    <!-- CSS
	============================================ -->

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="<%=basePath%>assets/css/vendor/bootstrap.min.css">
    <!-- Fontawesome -->
    <link rel="stylesheet" href="<%=basePath%>assets/css/vendor/font-awesome.css">
    <!-- Fontawesome Star -->
    <link rel="stylesheet" href="<%=basePath%>assets/css/vendor/fontawesome-stars.css">
    <!-- Ion Icon -->
    <link rel="stylesheet" href="<%=basePath%>assets/css/vendor/ion-fonts.css">
    <!-- Slick CSS -->
    <link rel="stylesheet" href="<%=basePath%>assets/css/plugins/slick.css">
    <!-- Animation -->
    <link rel="stylesheet" href="<%=basePath%>assets/css/plugins/animate.css">
    <!-- jQuery Ui -->
    <link rel="stylesheet" href="<%=basePath%>assets/css/plugins/jquery-ui.min.css">
    <!-- Venobox.css -->
    <link rel="stylesheet" href="<%=basePath%>assets/css/plugins/venobox.css">
    <!-- Nice Select -->
    <link rel="stylesheet" href="<%=basePath%>assets/css/plugins/nice-select.css">

    <!-- Vendor & Plugins CSS (Please remove the comment from below vendor.min.css & plugins.min.css for better website load performance and remove css files from the above) -->
    <!--
    <link rel="stylesheet" href="<%=basePath%>assets/css/vendor/vendor.min.css">
    <link rel="stylesheet" href="<%=basePath%>assets/css/plugins/plugins.min.css">
    -->

    <!-- Main Style CSS (Please use minify version for better website load performance) -->
    <link rel="stylesheet" href="<%=basePath%>assets/css/style.css">
    <!--<link rel="stylesheet" href="<%=basePath%>assets/css/style.min.css">-->

</head>

<body class="template-color-1">

<div class="main-wrapper">

    <!-- Begin Loading Area -->
    <div class="loading">
        <div class="text-center middle">
                <span class="loader">
            <span class="loader-inner"></span>
                </span>
        </div>
    </div>
    <!-- Loading Area End Here -->



    <!--页眉START-->
    <!-- Begin Umino's Header Main Area -->
    <header class="header-main_area">
        <div class="header-top_area">
            <div class="container">
                <div class="row">
                    <div class="col-xl-5 col-lg-5">
                        <div class="ht-left_area">
                            <div class="header-shipping_area">

                            </div>
                        </div>
                    </div>
                    <div class="col-xl-7 col-lg-7">
                        <div class="ht-right_area">
                            <div class="ht-menu">
                                <ul>
                                    <c:if test="${!empty cur_user}">
                                    <li><a>你好，${cur_user.username}！</a></li>
                                    <li><a href="<%=basePath%>orders/myOrders">我的账户</a></li>
                                    <li><a href="<%=basePath%>user/allFocus">我的关注</a></li>
                                    <li><a href="<%=basePath%>goods/publishGoods">发布商品</a></li>
                                    <li><a href="<%=basePath%>user/logout">退出登录</a></li>
                                    </c:if>
                                    <c:if test="${empty cur_user}">
                                        <li><a href="<%=basePath%>user/login1">登录</a></li>
                                        <li><a href="<%=basePath%>user/register1">注册</a></li>
                                    </c:if>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="header-middle_area">
            <div class="container">
                <div class="row">
                    <div class="col-xl-3 col-lg-2">
                        <div class="header-logo">
                            <a href="index.html">
                                <img src="<%=basePath%>assets/images/menu/logo/1.png" alt="Umino's Header Logo">
                            </a>
                        </div>
                    </div>
                    <div class="col-lg-3 d-none d-lg-block">
                        <div class="contact-info">
                            <div class="contact-info_icon">
                                <i class="ion-android-call"></i>
                            </div>
                            <div class="contact-info_content">
                                <span>Need help?</span>
                                <a href="tel://+123123321345/">(+123) 123 321 345</a>
                            </div>
                        </div>
                    </div>
                    <!--搜索start-->
                    <div class="col-lg-4 d-none d-lg-block">
                        <div class="hm-form_area">
                            <form action="<%=basePath%>goods/search" class="hm-searchbox">
                                <input type="text" name="str" placeholder="搜点什么吧...">
                                <button class="umino-search_btn" type="submit"><i class="ion-android-search"></i></button>
                            </form>
                        </div>
                    </div>
                    <!--搜索end-->

                    <!--爱心和购物袋start-->
                    <div class="col-xl-2 col-lg-3 d-none d-lg-block">
                        <div class="hm-minicart_area">
                            <ul>
                                <!--我的关注-->
                                <li>
                                    <a href="cart.html">
                                        <div class="minicart-icon wishlist-icon">
                                            <i class="ion-ios-heart-outline"></i>
                                            <span class="item-count">2</span>
                                        </div>
                                    </a>
                                </li>

                                <!--购物袋start-->
                                <li>
                                    <a href="cart.html">
                                        <div class="minicart-icon">
                                            <i class="ion-bag"></i>
                                            <span class="item-count">2</span>
                                        </div>
                                        <div class="minicart-title">
                                            <span class="item_total">$54.90</span>
                                        </div>
                                    </a>
                                    <ul class="minicart-body">
                                        <li class="minicart-item_area">
                                            <div class="minicart-single_item">
                                                <div class="product-item_remove">
                                                    <span class="ion-android-close" title="Remove This Item"></span>
                                                </div>
                                                <div class="minicart-img">
                                                    <a href="single-product.html">
                                                        <img src="<%=basePath%>assets/images/product/small-size/6.jpg" alt="Umino's Product Image">
                                                    </a>
                                                </div>
                                                <div class="minicart-content">
                                                    <div class="product-name">
                                                        <h6>
                                                            <a href="single-product.html">
                                                                柜子
                                                            </a>
                                                        </h6>
                                                    </div>
                                                    <span class="product-quantity">数量 1</span>
                                                    <div class="price-box">
                                                        <span class="new-price">$90.00</span>
                                                    </div>
                                                </div>
                                            </div>
                                        </li>
                                        <li class="minicart-item_area">
                                            <div class="minicart-single_item">
                                                <div class="product-item_remove">
                                                    <span class="ion-android-close" title="Remove This Item"></span>
                                                </div>
                                                <div class="minicart-img">
                                                    <a href="single-product.html">
                                                        <img src="<%=basePath%>assets/images/product/small-size/8.jpg" alt="Umino's Product Image">
                                                    </a>
                                                </div>
                                                <div class="minicart-content">
                                                    <div class="product-name">
                                                        <h6>
                                                            <a href="single-product.html">
                                                                椅子
                                                            </a>
                                                        </h6>
                                                    </div>
                                                    <span class="product-quantity">数量 1</span>
                                                    <div class="price-box">
                                                        <span class="new-price">$55.00</span>
                                                    </div>
                                                </div>
                                            </div>
                                        </li>
                                        <li>
                                            <div class="price_content">
                                                <div class="cart-subtotals">
                                                    <div class="products subtotal-list">
                                                        <span class="label">小计</span>
                                                        <span class="value">$145.00</span>
                                                    </div>
                                                    <div class="shipping subtotal-list">
                                                        <span class="label">运费</span>
                                                        <span class="value">$7.00</span>
                                                    </div>
                                                    <div class="tax subtotal-list">
                                                        <span class="label">税金</span>
                                                        <span class="value">$0.00</span>
                                                    </div>
                                                    <div class="cart-total subtotal-list">
                                                        <span class="label">总计</span>
                                                        <span class="value">$152.00</span>
                                                    </div>
                                                </div>
                                                <div class="minicart-button">
                                                    <a class="umino-btn umino-btn_fullwidth" href="#">查看</a>
                                                </div>
                                            </div>
                                        </li>
                                    </ul>
                                </li>
                                <!--购物袋end-->

                            </ul>
                        </div>
                    </div>
                    <!--爱心和购物袋end-->

                </div>
            </div>
        </div>

        <!--黄条start-->
        <div class="header-bottom_area bg--tangerine_yellow">
            <div class="container">
                <div class="row">
                    <!--导航条start-->
                    <div class="col-lg-3 col-md-9 col-sm-7">
                        <div class="category-menu">
                            <div class="category-heading">
                                <h2 class="categories-toggle"><span>所有分类</span></h2>
                            </div>
                            <div id="cate-toggle" class="category-menu-list">
                                <ul>
                                    <li class="right-menu"><a href="<%=basePath%>goods/catelog/1">闲置数码</a>
                                        <ul class="cat-mega-menu">
                                            <li class="right-menu cat-mega-title">
                                                <a href="shop-left-sidebar.html">Habitant Morbi</a>
                                                <ul>
                                                    <li><a href="shop-left-sidebar.html">Habitant Morbi</a></li>
                                                    <li><a href="shop-left-sidebar.html">Office chair</a></li>
                                                    <li><a href="shop-left-sidebar.html">Purus Lacus</a></li>
                                                    <li><a href="shop-left-sidebar.html">Sagittis Blandit</a></li>
                                                </ul>
                                            </li>
                                            <li class="right-menu cat-mega-title">
                                                <a href="shop-left-sidebar.html">Molestie Tortor</a>
                                                <ul>
                                                    <li><a href="shop-left-sidebar.html">Magna Pellentesq</a></li>
                                                    <li><a href="shop-left-sidebar.html">Molestie Tortor</a></li>
                                                    <li><a href="shop-left-sidebar.html">Vehicula Element</a></li>
                                                    <li><a href="shop-left-sidebar.html">Volutpat Diam</a></li>
                                                </ul>
                                            </li>
                                            <li class="right-menu cat-mega-title">
                                                <a href="shop-left-sidebar.html">Volutpat Diam</a>
                                                <ul>
                                                    <li><a href="shop-left-sidebar.html">Bibendum Cursus</a></li>
                                                    <li><a href="shop-left-sidebar.html">Dignissim Turpis</a></li>
                                                    <li><a href="shop-left-sidebar.html">Dining room</a></li>
                                                    <li><a href="shop-left-sidebar.html">Egestas Ultricies</a></li>
                                                </ul>
                                            </li>
                                        </ul>
                                    </li>
                                    <li class="right-menu"><a href="<%=basePath%>goods/catelog/4">图书教材</a>
                                        <ul class="cat-mega-menu cat-mega-menu-2">
                                            <li class="right-menu cat-mega-title">
                                                <a href="shop-left-sidebar.html">Cameras</a>
                                                <ul>
                                                    <li><a href="shop-left-sidebar.html">Cords and Cables</a></li>
                                                    <li><a href="shop-left-sidebar.html">gps accessories</a></li>
                                                    <li><a href="shop-left-sidebar.html">Microphones</a></li>
                                                    <li><a href="shop-left-sidebar.html">Wireless Transmitters</a></li>
                                                </ul>
                                            </li>
                                            <li class="right-menu cat-mega-title">
                                                <a href="shop-left-sidebar.html">Audio</a>
                                                <ul>
                                                    <li><a href="shop-left-sidebar.html">Other Accessories</a></li>
                                                    <li><a href="shop-left-sidebar.html">Portable Audio</a></li>
                                                    <li><a href="shop-left-sidebar.html">Satellite Radio</a></li>
                                                    <li><a href="shop-left-sidebar.html">Visual Accessories</a></li>
                                                </ul>
                                            </li>
                                            <li class="right-menu cat-mega-title">
                                                <a href="shop-left-sidebar.html">Cell Phones</a>
                                                <ul>
                                                    <li><a href="shop-left-sidebar.html">Xail</a></li>
                                                    <li><a href="shop-left-sidebar.html">Chamcham Galaxy</a></li>
                                                    <li><a href="shop-left-sidebar.html">SIM Cards</a></li>
                                                    <li><a href="shop-left-sidebar.html">Prepaid Cell Phones</a></li>
                                                </ul>
                                            </li>
                                            <li class="right-menu cat-mega-title">
                                                <a href="shop-left-sidebar.html">TV & Video</a>
                                                <ul>
                                                    <li><a href="shop-left-sidebar.html">4K Ultra HDTVs</a></li>
                                                    <li><a href="shop-left-sidebar.html">All TVs</a></li>
                                                    <li><a href="shop-left-sidebar.html">Refurbished TVs</a></li>
                                                    <li><a href="shop-left-sidebar.html">TV Accessories</a></li>
                                                </ul>
                                            </li>
                                        </ul>
                                    </li>

                                    <li class="right-menu"><a href="<%=basePath%>goods/catelog/6">运动棋牌</a>
                                        <ul class="cat-mega-menu">
                                            <li class="right-menu cat-mega-title">
                                                <a href="shop-left-sidebar.html">Accessories</a>
                                                <ul>
                                                    <li><a href="shop-left-sidebar.html">Habitant Morbi</a></li>
                                                    <li><a href="shop-left-sidebar.html">Office chair</a></li>
                                                    <li><a href="shop-left-sidebar.html">Purus Lacus</a></li>
                                                    <li><a href="shop-left-sidebar.html">Sagittis Blandit</a></li>
                                                </ul>
                                            </li>
                                            <li class="right-menu cat-mega-title">
                                                <a href="shop-left-sidebar.html">Purus Lacus</a>
                                                <ul>
                                                    <li><a href="shop-left-sidebar.html">Magna Pellentesq</a></li>
                                                    <li><a href="shop-left-sidebar.html">Molestie Tortor</a></li>
                                                    <li><a href="shop-left-sidebar.html">Vehicula Element</a></li>
                                                    <li><a href="shop-left-sidebar.html">Volutpat Diam</a></li>
                                                </ul>
                                            </li>
                                            <li class="right-menu cat-mega-title">
                                                <a href="shop-left-sidebar.html">Office chair</a>
                                                <ul>
                                                    <li><a href="shop-left-sidebar.html">Bibendum Cursus</a></li>
                                                    <li><a href="shop-left-sidebar.html">Dignissim Turpis</a></li>
                                                    <li><a href="shop-left-sidebar.html">Dining room</a></li>
                                                    <li><a href="shop-left-sidebar.html">Egestas Ultricies</a></li>
                                                </ul>
                                            </li>
                                        </ul>
                                    </li>
                                    <li class="right-menu"><a href="<%=basePath%>goods/catelog/5">美妆衣物</a>
                                        <ul class="cat-dropdown_menu">
                                            <li>
                                                <a href="shop-left-sidebar.html">Daylesford</a>
                                                <a href="shop-left-sidebar.html">Delaware</a>
                                                <a href="shop-left-sidebar.html">Fayence</a>
                                                <a href="shop-left-sidebar.html">Franzea</a>
                                                <a href="shop-left-sidebar.html">Mable</a>
                                                <a href="shop-left-sidebar.html">Mobo</a>
                                                <a href="shop-left-sidebar.html">Pippins</a>
                                            </li>
                                        </ul>
                                    </li>
                                    <li class="right-menu"><a href="<%=basePath%>goods/catelog/7">票券小物</a>
                                        <ul class="cat-dropdown_menu">
                                            <li>
                                                <a href="shop-left-sidebar.html">Daylesford</a>
                                                <a href="shop-left-sidebar.html">Delaware</a>
                                                <a href="shop-left-sidebar.html">Fayence</a>
                                                <a href="shop-left-sidebar.html">Franzea</a>
                                                <a href="shop-left-sidebar.html">Mable</a>
                                                <a href="shop-left-sidebar.html">Mobo</a>
                                                <a href="shop-left-sidebar.html">Pippins</a>
                                            </li>
                                        </ul>
                                    </li>
                                    <li class="right-menu"><a href="<%=basePath%>goods/catelog/2">校园代步</a>
                                        <ul class="cat-dropdown_menu cat-dropdown_menu-2">
                                            <li>
                                                <a href="shop-left-sidebar.html">Coffee & side tables</a>
                                                <a href="shop-left-sidebar.html">Living room lighting</a>
                                                <a href="shop-left-sidebar.html">Living room storage</a>
                                                <a href="shop-left-sidebar.html">Living room textiles & rugs</a>
                                            </li>
                                        </ul>
                                    </li>
                                    <li><a href="<%=basePath%>goods/catelog/3">电器日用</a></li>

                                    <li class="rx-child"><a href="shop-left-sidebar.html">Uncategorized</a></li>
                                    <li class="rx-child"><a href="shop-left-sidebar.html">Shoe Organizers</a></li>
                                    <li class="rx-parent">
                                        <a class="rx-default">更多分类</a>
                                        <a class="rx-show">Collapse</a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <!--导航条end-->

                    <!--中间导航条start-->
                    <div class="col-lg-7 d-none d-lg-block position-static">
                        <div class="main-menu_area">
                            <nav class="main_nav">
                                <ul>
                                    <li><a href="<%=basePath%>goods/homeGoods">主页</a></li>

                                    <li><a href="single-product.html">单品</a></li>

                                    <c:if test="${empty cur_user}">
                                    <li><a href="<%=basePath%>user/login1">登录</a></li>
                                    <li><a href="<%=basePath%>user/register1">注册</a></li>
                                    </c:if>
                                </ul>
                            </nav>
                        </div>
                    </div>
                    <!--中间导航条end-->


                    <!--登录注册

                        <div class="col-lg-2 d-none d-lg-block">
                        <div class="login-area">
                        <a href="login-register.html" >Login <span>Or</span> Register</a>
                        </div>

                    </div>

                    start-->
                    <!--登录注册end-->



                </div>
            </div>
        </div>
        <!--黄条end-->




    </header>


    <!--轮播图START-->
    <div class="umino-slider_area umino-slider_area-3">
        <div class="container">
            <div class="row">
                <div class="col-lg-9 offset-lg-3">
                    <div class="row">
                        <div class="col-lg-8 col-md-8">
                            <div class="main-slider slider-navigation_style-1">
                                <div class="single-slide animation-style-03 bg-5">
                                    <div class="container">
                                        <div class="slider-content">
                                            <h4>仅一日</h4>
                                            <h3>蛋椅</h3>
                                            <span>选定客厅的10%</span>
                                            <div class="umino-btn-ps_left slide-btn">
                                                <a class="umino-slider_btn" href="shop-left-sidebar.html">现在去购物</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="single-slide animation-style-03 bg-6">
                                    <div class="container">
                                        <div class="slider-content">
                                            <h4>仅一日</h4>
                                            <h3>新沙发</h3>
                                            <span>选定客厅的10%</span>
                                            <div class="umino-btn-ps_left slide-btn">
                                                <a class="umino-slider_btn" href="shop-left-sidebar.html">现在去购物</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-4 col-sm-6 umi-custom_offset">
                            <div class="banner-item img-hover_effect">
                                <div class="banner-content">
                                    <span>家居装饰</span>
                                    <h4>最好的时钟</h4>
                                    <h3>创意家具</h3>
                                    <div class="umino-btn-ps_center">
                                        <a class="umino-btn umino-btn_dark" href="shop-left-sidebar.html">现在去购物</a>
                                    </div>
                                </div>
                                <div class="banner-img">
                                    <a href="shop-left-sidebar.html">
                                        <img class="img-full" src="<%=basePath%>assets/images/banner/3-1.jpg" alt="Umino's Banner">
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--轮播图END-->





    <!--海报START-->
    <!-- Begin Umino's Banner Area Five -->
    <div class="umino-banner_area umino-banner_area-5">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 col-md-6">
                    <div class="banner-item img-hover_effect">
                        <div class="banner-content">
                            <span>最佳销售员</span>
                            <h4>简易椅</h4>
                            <h3>所选案件的10％</h3>
                            <div class="umino-btn-ps_left">
                                <a class="umino-btn umino-btn_dark umino-btn_red" href="shop-left-sidebar.html">现在去购物</a>
                            </div>
                        </div>
                        <div class="banner-img">
                            <a href="javascript:void(0)">
                                <img class="img-full" src="<%=basePath%>assets/images/banner/3-2.jpg" alt="Umino's Banner">
                            </a>
                        </div>
                    </div>
                </div>
                <div class="col-lg-6 col-md-6">
                    <div class="banner-item img-hover_effect">
                        <div class="banner-content banner-content-2">
                            <span>需要新装饰？</span>
                            <h4>舒适</h4>
                            <h3>家居用品</h3>
                            <a href="javascript:void(0)">
                                <i class="fa fa-arrow-circle-right"></i>
                            </a>
                            <div class="banner-sticker">
                                <p>Sale<span>-70%</span></p>
                            </div>
                        </div>
                        <div class="banner-img">
                            <a href="javascript:void(0)">
                                <img class="img-full" src="<%=basePath%>assets/images/banner/3-3.jpg" alt="Umino's Banner">
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Umino's Banner Area Five End Here -->
    <!--海报END-->



    <!--标语START-->
    <div class="umino-shipping_area  ">
        <div class="container">
            <div class="shipping-nav">
                <div class="row no-gutters">
                    <div class="col-lg-3 col-md-6 col-sm-6">
                        <div class="shipping-item">
                            <div class="shipping-icon">
                                <i class="fa fa-paper-plane"></i>
                            </div>
                            <div class="shipping-content">
                                <h6>免费送货</h6>
                                <p>所有超过$ 75.00的订单</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6 col-sm-6">
                        <div class="shipping-item">
                            <div class="shipping-icon">
                                <i class="ion-ios-reload"></i>
                            </div>
                            <div class="shipping-content">
                                <h6>30天轻松退货</h6>
                                <p>30天退款</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6 col-sm-6">
                        <div class="shipping-item">
                            <div class="shipping-icon">
                                <i class="fa fa-credit-card"></i>
                            </div>
                            <div class="shipping-content">
                                <h6>100％安全</h6>
                                <p>微信 / 支付宝 / Visa</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6 col-sm-6">
                        <div class="shipping-item">
                            <div class="shipping-icon">
                                <i class="ion-help-buoy"></i>
                            </div>
                            <div class="shipping-content">
                                <h6>24/7支持</h6>
                                <p>我们将为您服务</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--标语END-->



    <!--收藏量高的商品START-->
    <!-- Begin Umino's Product Tab Area Two -->
    <%--<div class="umino-product-tab_area umino-product-tab_area-2">--%>
        <%--<div class="container">--%>
            <%--<div class="row">--%>
                <%--<div class="col-lg-12">--%>
                    <%--<div class="umino-product-tab_slider-2">--%>
                        <%--<div class="slide-item">--%>
                            <%--<div class="single-product">--%>
                                <%--<div class="row">--%>
                                    <%--<div class="col-lg-2 col-md-2 order-3">--%>
                                        <%--<div class="product-tab_wrap">--%>
                                            <%--<div class="product-tab">--%>
                                                <%--<ul class="nav">--%>
                                                    <%--<li><a class="active" data-toggle="tab" href="#one"><img src="<%=basePath%>assets/images/product/small-size/1.jpg" alt="Umino's Product Image"></a>--%>
                                                    <%--</li>--%>
                                                    <%--<li><a data-toggle="tab" href="#two"><img src="<%=basePath%>assets/images/product/small-size/2.jpg" alt="Umino's Product Image"></a></li>--%>
                                                    <%--<li><a data-toggle="tab" href="#three"><img src="<%=basePath%>assets/images/product/small-size/3.jpg" alt="Umino's Product Image"></a></li>--%>
                                                    <%--<li><a data-toggle="tab" href="#four"><img src="<%=basePath%>assets/images/product/small-size/4.jpg" alt="Umino's Product Image"></a></li>--%>
                                                <%--</ul>--%>
                                            <%--</div>--%>
                                        <%--</div>--%>
                                    <%--</div>--%>
                                    <%--<div class="col-lg-5 col-md-5 order-2">--%>
                                        <%--<div class="tab-content">--%>
                                            <%--<div id="one" class="tab-pane active show" role="tabpanel">--%>
                                                <%--<div class="product-img">--%>
                                                    <%--<a href="single-product.html">--%>
                                                        <%--<img class="primary-img" src="<%=basePath%>assets/images/product/large-size/1.jpg" alt="Umino's Product Image">--%>
                                                    <%--</a>--%>
                                                    <%--<div class="add-actions">--%>
                                                        <%--<ul>--%>
                                                            <%--<li><a href="cart.html" data-toggle="tooltip" data-placement="top" title="Add To cart"><i--%>
                                                                    <%--class="ion-bag"></i></a>--%>
                                                            <%--</li>--%>
                                                            <%--<li><a href="#" data-toggle="tooltip" data-placement="top" title="Add To Wishlist"><i--%>
                                                                    <%--class="ion-ios-heart-outline"></i></a>--%>
                                                            <%--</li>--%>
                                                            <%--<li><a href="compare.html" data-toggle="tooltip" data-placement="top" title="Add To Cart"><i--%>
                                                                    <%--class="fa fa-chart-bar"></i></a>--%>
                                                            <%--</li>--%>
                                                            <%--<li class="quick-view-btn" data-toggle="modal" data-target="#exampleModalCenter"><a href="javascript:void(0)" data-toggle="tooltip" data-placement="top" title="Quick View"><i class="ion-ios-search"></i></a></li>--%>
                                                        <%--</ul>--%>
                                                    <%--</div>--%>
                                                <%--</div>--%>
                                            <%--</div>--%>
                                            <%--<div id="two" class="tab-pane" role="tabpanel">--%>
                                                <%--<div class="product-img">--%>
                                                    <%--<a href="single-product.html">--%>
                                                        <%--<img class="primary-img" src="<%=basePath%>assets/images/product/large-size/2.jpg" alt="Umino's Product Image">--%>
                                                    <%--</a>--%>
                                                    <%--<div class="add-actions">--%>
                                                        <%--<ul>--%>
                                                            <%--<li><a href="cart.html" data-toggle="tooltip" data-placement="top" title="Add To cart"><i--%>
                                                                    <%--class="ion-bag"></i></a>--%>
                                                            <%--</li>--%>
                                                            <%--<li><a href="#" data-toggle="tooltip" data-placement="top" title="Add To Wishlist"><i--%>
                                                                    <%--class="ion-ios-heart-outline"></i></a>--%>
                                                            <%--</li>--%>
                                                            <%--<li><a href="compare.html" data-toggle="tooltip" data-placement="top" title="Add To Cart"><i--%>
                                                                    <%--class="fa fa-chart-bar"></i></a>--%>
                                                            <%--</li>--%>
                                                            <%--<li class="quick-view-btn" data-toggle="modal" data-target="#exampleModalCenter"><a href="javascript:void(0)" data-toggle="tooltip" data-placement="top" title="Quick View"><i class="ion-ios-search"></i></a></li>--%>
                                                        <%--</ul>--%>
                                                    <%--</div>--%>
                                                <%--</div>--%>
                                            <%--</div>--%>
                                            <%--<div id="three" class="tab-pane" role="tabpanel">--%>
                                                <%--<div class="product-img">--%>
                                                    <%--<a href="single-product.html">--%>
                                                        <%--<img class="primary-img" src="<%=basePath%>assets/images/product/large-size/3.jpg" alt="Umino's Product Image">--%>
                                                    <%--</a>--%>
                                                    <%--<div class="add-actions">--%>
                                                        <%--<ul>--%>
                                                            <%--<li><a href="cart.html" data-toggle="tooltip" data-placement="top" title="Add To cart"><i--%>
                                                                    <%--class="ion-bag"></i></a>--%>
                                                            <%--</li>--%>
                                                            <%--<li><a href="#" data-toggle="tooltip" data-placement="top" title="Add To Wishlist"><i--%>
                                                                    <%--class="ion-ios-heart-outline"></i></a>--%>
                                                            <%--</li>--%>
                                                            <%--<li><a href="compare.html" data-toggle="tooltip" data-placement="top" title="Add To Cart"><i--%>
                                                                    <%--class="fa fa-chart-bar"></i></a>--%>
                                                            <%--</li>--%>
                                                            <%--<li class="quick-view-btn" data-toggle="modal" data-target="#exampleModalCenter"><a href="javascript:void(0)" data-toggle="tooltip" data-placement="top" title="Quick View"><i class="ion-ios-search"></i></a></li>--%>
                                                        <%--</ul>--%>
                                                    <%--</div>--%>
                                                <%--</div>--%>
                                            <%--</div>--%>
                                            <%--<div id="four" class="tab-pane" role="tabpanel">--%>
                                                <%--<div class="product-img">--%>
                                                    <%--<a href="single-product.html">--%>
                                                        <%--<img class="primary-img" src="<%=basePath%>assets/images/product/large-size/4.jpg" alt="Umino's Product Image">--%>
                                                    <%--</a>--%>
                                                    <%--<div class="add-actions">--%>
                                                        <%--<ul>--%>
                                                            <%--<li><a href="cart.html" data-toggle="tooltip" data-placement="top" title="Add To cart"><i--%>
                                                                    <%--class="ion-bag"></i></a>--%>
                                                            <%--</li>--%>
                                                            <%--<li><a href="#" data-toggle="tooltip" data-placement="top" title="Add To Wishlist"><i--%>
                                                                    <%--class="ion-ios-heart-outline"></i></a>--%>
                                                            <%--</li>--%>
                                                            <%--<li><a href="compare.html" data-toggle="tooltip" data-placement="top" title="Add To Cart"><i--%>
                                                                    <%--class="fa fa-chart-bar"></i></a>--%>
                                                            <%--</li>--%>
                                                            <%--<li class="quick-view-btn" data-toggle="modal" data-target="#exampleModalCenter"><a href="javascript:void(0)" data-toggle="tooltip" data-placement="top" title="Quick View"><i class="ion-ios-search"></i></a></li>--%>
                                                        <%--</ul>--%>
                                                    <%--</div>--%>
                                                <%--</div>--%>
                                            <%--</div>--%>
                                        <%--</div>--%>
                                    <%--</div>--%>
                                    <%--<div class="col-lg-5 col-md-5 order-1">--%>
                                        <%--<div class="product-tab-additional_stuff">--%>
                                            <%--<h3 class="heading">收藏量高的商品</h3>--%>
                                            <%--<div class="price-box">--%>
                                                <%--<span class="new-price">$70.00</span>--%>
                                                <%--<span class="old-price">$80.00</span>--%>
                                            <%--</div>--%>
                                            <%--<h6 class="product-name"><a href="single-product.html">Aliquet auctor semali</a>--%>
                                            <%--</h6>--%>
                                            <%--<div class="rating-box">--%>
                                                <%--<ul>--%>
                                                    <%--<li><i class="ion-ios-star"></i></li>--%>
                                                    <%--<li><i class="ion-ios-star"></i></li>--%>
                                                    <%--<li><i class="ion-ios-star"></i></li>--%>
                                                    <%--<li class="silver-color"><i class="ion-ios-star-half"></i></li>--%>
                                                    <%--<li class="silver-color"><i class="ion-ios-star-outline"></i></li>--%>
                                                <%--</ul>--%>
                                            <%--</div>--%>
                                            <%--<div class="product-progressbar product-progressbar-3">--%>
                                                <%--<span class="product-in_stock">Available:<strong>369</strong></span>--%>
                                                <%--<span class="product-sold">Unit Sold:<strong>56</strong></span>--%>
                                            <%--</div>--%>
                                            <%--<div class="umino-countdown_area">--%>
                                                <%--<h3 class="heading">Deal ends in:</h3>--%>
                                                <%--<div class="umino-countdown"></div>--%>
                                            <%--</div>--%>
                                        <%--</div>--%>
                                    <%--</div>--%>
                                <%--</div>--%>
                            <%--</div>--%>
                        <%--</div>--%>
                        <%--<div class="slide-item">--%>
                            <%--<div class="single-product">--%>
                                <%--<div class="row">--%>
                                    <%--<div class="col-lg-2 col-md-2 order-3">--%>
                                        <%--<div class="product-tab_wrap">--%>
                                            <%--<div class="product-tab">--%>
                                                <%--<ul class="nav">--%>
                                                    <%--<li><a class="active" data-toggle="tab" href="#five"><img src="<%=basePath%>assets/images/product/small-size/5.jpg" alt="Umino's Product Image"></a>--%>
                                                    <%--</li>--%>
                                                    <%--<li><a data-toggle="tab" href="#six"><img src="<%=basePath%>assets/images/product/small-size/6.jpg" alt="Umino's Product Image"></a></li>--%>
                                                    <%--<li><a data-toggle="tab" href="#seven"><img src="<%=basePath%>assets/images/product/small-size/7.jpg" alt="Umino's Product Image"></a></li>--%>
                                                    <%--<li><a data-toggle="tab" href="#eight"><img src="<%=basePath%>assets/images/product/small-size/8.jpg" alt="Umino's Product Image"></a></li>--%>
                                                <%--</ul>--%>
                                            <%--</div>--%>
                                        <%--</div>--%>
                                    <%--</div>--%>
                                    <%--<div class="col-lg-5 col-md-5 order-2">--%>
                                        <%--<div class="tab-content">--%>
                                            <%--<div id="five" class="tab-pane active show" role="tabpanel">--%>
                                                <%--<div class="product-img">--%>
                                                    <%--<a href="single-product.html">--%>
                                                        <%--<img class="primary-img" src="<%=basePath%>assets/images/product/large-size/5.jpg" alt="Umino's Product Image">--%>
                                                    <%--</a>--%>
                                                    <%--<div class="add-actions">--%>
                                                        <%--<ul>--%>
                                                            <%--<li><a href="cart.html" data-toggle="tooltip" data-placement="top" title="Add To cart"><i--%>
                                                                    <%--class="ion-bag"></i></a>--%>
                                                            <%--</li>--%>
                                                            <%--<li><a href="#" data-toggle="tooltip" data-placement="top" title="Add To Wishlist"><i--%>
                                                                    <%--class="ion-ios-heart-outline"></i></a>--%>
                                                            <%--</li>--%>
                                                            <%--<li><a href="compare.html" data-toggle="tooltip" data-placement="top" title="Add To Cart"><i--%>
                                                                    <%--class="fa fa-chart-bar"></i></a>--%>
                                                            <%--</li>--%>
                                                            <%--<li class="quick-view-btn" data-toggle="modal" data-target="#exampleModalCenter"><a href="javascript:void(0)" data-toggle="tooltip" data-placement="top" title="Quick View"><i class="ion-ios-search"></i></a></li>--%>
                                                        <%--</ul>--%>
                                                    <%--</div>--%>
                                                <%--</div>--%>
                                            <%--</div>--%>
                                            <%--<div id="six" class="tab-pane" role="tabpanel">--%>
                                                <%--<div class="product-img">--%>
                                                    <%--<a href="single-product.html">--%>
                                                        <%--<img class="primary-img" src="<%=basePath%>assets/images/product/large-size/6.jpg" alt="Umino's Product Image">--%>
                                                    <%--</a>--%>
                                                    <%--<div class="add-actions">--%>
                                                        <%--<ul>--%>
                                                            <%--<li><a href="cart.html" data-toggle="tooltip" data-placement="top" title="Add To cart"><i--%>
                                                                    <%--class="ion-bag"></i></a>--%>
                                                            <%--</li>--%>
                                                            <%--<li><a href="#" data-toggle="tooltip" data-placement="top" title="Add To Wishlist"><i--%>
                                                                    <%--class="ion-ios-heart-outline"></i></a>--%>
                                                            <%--</li>--%>
                                                            <%--<li><a href="compare.html" data-toggle="tooltip" data-placement="top" title="Add To Cart"><i--%>
                                                                    <%--class="fa fa-chart-bar"></i></a>--%>
                                                            <%--</li>--%>
                                                            <%--<li class="quick-view-btn" data-toggle="modal" data-target="#exampleModalCenter"><a href="javascript:void(0)" data-toggle="tooltip" data-placement="top" title="Quick View"><i class="ion-ios-search"></i></a></li>--%>
                                                        <%--</ul>--%>
                                                    <%--</div>--%>
                                                <%--</div>--%>
                                            <%--</div>--%>
                                            <%--<div id="seven" class="tab-pane" role="tabpanel">--%>
                                                <%--<div class="product-img">--%>
                                                    <%--<a href="single-product.html">--%>
                                                        <%--<img class="primary-img" src="<%=basePath%>assets/images/product/large-size/7.jpg" alt="Umino's Product Image">--%>
                                                    <%--</a>--%>
                                                    <%--<div class="add-actions">--%>
                                                        <%--<ul>--%>
                                                            <%--<li><a href="cart.html" data-toggle="tooltip" data-placement="top" title="Add To cart"><i--%>
                                                                    <%--class="ion-bag"></i></a>--%>
                                                            <%--</li>--%>
                                                            <%--<li><a href="#" data-toggle="tooltip" data-placement="top" title="Add To Wishlist"><i--%>
                                                                    <%--class="ion-ios-heart-outline"></i></a>--%>
                                                            <%--</li>--%>
                                                            <%--<li><a href="compare.html" data-toggle="tooltip" data-placement="top" title="Add To Cart"><i--%>
                                                                    <%--class="fa fa-chart-bar"></i></a>--%>
                                                            <%--</li>--%>
                                                            <%--<li class="quick-view-btn" data-toggle="modal" data-target="#exampleModalCenter"><a href="javascript:void(0)" data-toggle="tooltip" data-placement="top" title="Quick View"><i class="ion-ios-search"></i></a></li>--%>
                                                        <%--</ul>--%>
                                                    <%--</div>--%>
                                                <%--</div>--%>
                                            <%--</div>--%>
                                            <%--<div id="eight" class="tab-pane" role="tabpanel">--%>
                                                <%--<div class="product-img">--%>
                                                    <%--<a href="single-product.html">--%>
                                                        <%--<img class="primary-img" src="<%=basePath%>assets/images/product/large-size/8.jpg" alt="Umino's Product Image">--%>
                                                    <%--</a>--%>
                                                    <%--<div class="add-actions">--%>
                                                        <%--<ul>--%>
                                                            <%--<li><a href="cart.html" data-toggle="tooltip" data-placement="top" title="Add To cart"><i--%>
                                                                    <%--class="ion-bag"></i></a>--%>
                                                            <%--</li>--%>
                                                            <%--<li><a href="#" data-toggle="tooltip" data-placement="top" title="Add To Wishlist"><i--%>
                                                                    <%--class="ion-ios-heart-outline"></i></a>--%>
                                                            <%--</li>--%>
                                                            <%--<li><a href="compare.html" data-toggle="tooltip" data-placement="top" title="Add To Cart"><i--%>
                                                                    <%--class="fa fa-chart-bar"></i></a>--%>
                                                            <%--</li>--%>
                                                            <%--<li class="quick-view-btn" data-toggle="modal" data-target="#exampleModalCenter"><a href="javascript:void(0)" data-toggle="tooltip" data-placement="top" title="Quick View"><i class="ion-ios-search"></i></a></li>--%>
                                                        <%--</ul>--%>
                                                    <%--</div>--%>
                                                <%--</div>--%>
                                            <%--</div>--%>
                                        <%--</div>--%>
                                    <%--</div>--%>
                                    <%--<div class="col-lg-5 col-md-5 order-1">--%>
                                        <%--<div class="product-tab-additional_stuff">--%>
                                            <%--<h3 class="heading">Deal of the days</h3>--%>
                                            <%--<div class="price-box">--%>
                                                <%--<span class="new-price">$70.00</span>--%>
                                                <%--<span class="old-price">$80.00</span>--%>
                                            <%--</div>--%>
                                            <%--<h6 class="product-name"><a href="single-product.html">Aliquet auctor semali</a>--%>
                                            <%--</h6>--%>
                                            <%--<div class="rating-box">--%>
                                                <%--<ul>--%>
                                                    <%--<li><i class="ion-ios-star"></i></li>--%>
                                                    <%--<li><i class="ion-ios-star"></i></li>--%>
                                                    <%--<li><i class="ion-ios-star"></i></li>--%>
                                                    <%--<li class="silver-color"><i class="ion-ios-star-half"></i></li>--%>
                                                    <%--<li class="silver-color"><i class="ion-ios-star-outline"></i></li>--%>
                                                <%--</ul>--%>
                                            <%--</div>--%>
                                            <%--<div class="product-progressbar product-progressbar-3">--%>
                                                <%--<span class="product-in_stock">Available:<strong>369</strong></span>--%>
                                                <%--<span class="product-sold">Unit Sold:<strong>56</strong></span>--%>
                                            <%--</div>--%>
                                            <%--<div class="umino-countdown_area">--%>
                                                <%--<h3 class="heading">Deal ends in:</h3>--%>
                                                <%--<div class="umino-countdown"></div>--%>
                                            <%--</div>--%>
                                        <%--</div>--%>
                                    <%--</div>--%>
                                <%--</div>--%>
                            <%--</div>--%>
                        <%--</div>--%>
                    <%--</div>--%>
                <%--</div>--%>
            <%--</div>--%>
        <%--</div>--%>
    <%--</div>--%>
    <!-- Umino's Product Tab Area End Here -->
    <!--收藏量高的商品END-->



    <!--商品展示start-->
    <!-- Begin Umino's Product Tab Area -->
    <div class="umino-product-tab_area">
        <div class="umino-product-tab_nav">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="product-tab">
                            <ul class="nav product-menu">
                                <li><a class="active" data-toggle="tab" href="#featured"><span>最新发布</span></a></li>
                                <li><a data-toggle="tab" href="#new-arrivals"><span>特别推荐</span></a></li>
                                <li><a data-toggle="tab" href="#best-seller"><span>收藏最多</span></a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="container" style="padding-bottom: 10px;">
            <div class="row">
                <div class="col-lg-12">
                    <div class="tab-content umino-tab_content">
                        <div id="featured" class="tab-pane active show" role="tabpanel">
                            <div class="umino-product-tab_slider slider-navigation_style-1">
                                <%--<div class="slide-item">--%>
                                    <%--<div class="single-product">--%>
                                        <%--<div class="product-img">--%>
                                            <%--<a href="single-product.html">--%>
                                                <%--<img class="primary-img" src="<%=basePath%>assets/images/product/medium-size/1-2.jpg" alt="Umino's Product Image">--%>
                                            <%--</a>--%>
                                            <%--<div class="add-actions">--%>
                                                <%--<ul>--%>
                                                    <%--<li><a href="cart.html" data-toggle="tooltip" data-placement="top" title="Add To cart"><i class="ion-bag"></i></a>--%>
                                                    <%--</li>--%>
                                                    <%--<li><a href="#" data-toggle="tooltip" data-placement="top" title="Add To Wishlist"><i class="ion-ios-heart-outline"></i></a>--%>
                                                    <%--</li>--%>
                                                    <%--<li><a href="compare.html" data-toggle="tooltip" data-placement="top" title="Add To Cart"><i class="fa fa-chart-bar"></i></a>--%>
                                                    <%--</li>--%>
                                                    <%--<li class="quick-view-btn" data-toggle="modal" data-target="#exampleModalCenter"><a href="javascript:void(0)" data-toggle="tooltip" data-placement="top" title="Quick View"><i class="ion-ios-search"></i></a></li>--%>
                                                <%--</ul>--%>
                                            <%--</div>--%>
                                        <%--</div>--%>
                                        <%--<div class="product-content">--%>
                                            <%--<div class="product-desc_info">--%>
                                                <%--<div class="price-box">--%>
                                                    <%--<span class="new-price">$70.00</span>--%>
                                                    <%--<span class="old-price">$80.00</span>--%>
                                                <%--</div>--%>
                                                <%--<h6 class="product-name"><a href="single-product.html">沙发</a>--%>
                                                <%--</h6>--%>
                                                <%--<!--卖家信息头像and昵称START-->--%>
                                                <%--<div class="rating-box">--%>
                                                    <%--<ul>--%>
                                                        <%--<li ><img src="<%=basePath%>assets/images/touxiang/头像.png" style="width: 17px;height:17px;"></li>--%>
                                                        <%--<li><span><strong>Jackson</strong></span></li>--%>


                                                    <%--</ul>--%>
                                                <%--</div>--%>
                                                <%--<!--卖家信息头像and昵称END-->--%>

                                            <%--</div>--%>
                                        <%--</div>--%>
                                    <%--</div>--%>
                                <%--</div>--%>
                                <c:forEach var="item" items="${catelogGoods}">
                                <div class="slide-item">

                                    <div class="single-product">
                                        <div class="product-img">
                                            <a href="<%=basePath%>goods/goodsId/${item.goods.id}">
                                                <img class="primary-img" width="390px" height="300px" src="<%=basePath%>upload/${item.images[0].imgUrl}" alt="Umino's Product Image">

                                                <%--<img class="primary-img" src="<%=basePath%>assets/images/product/medium-size/2-2.jpg" alt="Umino's Product Image">--%>
                                            </a>
                                            <div class="add-actions">
                                                <ul>
                                                    <li><a href="cart.html" data-toggle="tooltip" data-placement="top" title="Add To cart"><i class="ion-bag"></i></a>
                                                    </li>
                                                    <li><a href="#" data-toggle="tooltip" data-placement="top" title="Add To Wishlist"><i class="ion-ios-heart-outline"></i></a>
                                                    </li>
                                                    <li><a href="compare.html" data-toggle="tooltip" data-placement="top" title="Add To Cart"><i class="fa fa-chart-bar"></i></a>
                                                    </li>
                                                    <li class="quick-view-btn" data-toggle="modal" data-target="#exampleModalCenter"><a href="javascript:void(0)" data-toggle="tooltip" data-placement="top" title="Quick View"><i class="ion-ios-search"></i></a></li>
                                                </ul>
                                            </div>
                                        </div>
                                        <div class="product-content">
                                            <div class="product-desc_info">
                                                <div class="price-box">
                                                    <span class="new-price">￥<c:out value="${item.goods.price}"></c:out></span>
                                                    <span class="old-price">￥<c:out value="${item.goods.realPrice}"></c:out></span>
                                                </div>
                                                <h6 class="product-name"><a href="single-product.html"><c:out value="${item.goods.name}"></c:out></a>
                                                </h6>
                                                <div class="rating-box">
                                                    <ul>
                                                        <li ><img src="<%=basePath%>assets/images/touxiang/头像2.png" style="width: 17px;height:17px;"></li>
                                                        <li><span><strong>Amy</strong></span></li>
                                                    </ul>
                                                    <span><c:out value="${item.goods.startTime}"></c:out></span>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                </div>
                                </c:forEach>
                                <%--<div class="slide-item">--%>
                                    <%--<div class="single-product">--%>
                                        <%--<div class="product-img">--%>
                                            <%--<a href="single-product.html">--%>
                                                <%--<img class="primary-img" src="<%=basePath%>assets/images/product/medium-size/3-2.jpg" alt="Umino's Product Image">--%>
                                            <%--</a>--%>
                                            <%--<div class="add-actions">--%>
                                                <%--<ul>--%>
                                                    <%--<li><a href="cart.html" data-toggle="tooltip" data-placement="top" title="Add To cart"><i class="ion-bag"></i></a>--%>
                                                    <%--</li>--%>
                                                    <%--<li><a href="#" data-toggle="tooltip" data-placement="top" title="Add To Wishlist"><i class="ion-ios-heart-outline"></i></a>--%>
                                                    <%--</li>--%>
                                                    <%--<li><a href="compare.html" data-toggle="tooltip" data-placement="top" title="Add To Cart"><i class="fa fa-chart-bar"></i></a>--%>
                                                    <%--</li>--%>
                                                    <%--<li class="quick-view-btn" data-toggle="modal" data-target="#exampleModalCenter"><a href="javascript:void(0)" data-toggle="tooltip" data-placement="top" title="Quick View"><i class="ion-ios-search"></i></a></li>--%>
                                                <%--</ul>--%>
                                            <%--</div>--%>
                                        <%--</div>--%>
                                        <%--<div class="product-content">--%>
                                            <%--<div class="product-desc_info">--%>
                                                <%--<div class="price-box">--%>
                                                    <%--<span class="new-price">$65.00</span>--%>
                                                    <%--<span class="old-price">$68.00</span>--%>
                                                <%--</div>--%>
                                                <%--<h6 class="product-name"><a href="single-product.html">Bibenm lorem coectetur</a>--%>
                                                <%--</h6>--%>
                                                <%--<div class="rating-box">--%>
                                                    <%--<ul>--%>

                                                        <%--<li ><img src="<%=basePath%>assets/images/touxiang/头像3.png" style="width: 17px;height:17px;"></li>--%>
                                                        <%--<li><span><strong>Mick John</strong></span></li>--%>

                                                    <%--</ul>--%>
                                                <%--</div>--%>
                                            <%--</div>--%>
                                        <%--</div>--%>
                                    <%--</div>--%>
                                <%--</div>--%>
                                <%--<div class="slide-item">--%>
                                    <%--<div class="single-product">--%>
                                        <%--<div class="product-img">--%>
                                            <%--<a href="single-product.html">--%>
                                                <%--<img class="primary-img" src="<%=basePath%>assets/images/product/medium-size/4-2.jpg" alt="Umino's Product Image">--%>
                                            <%--</a>--%>
                                            <%--<div class="add-actions">--%>
                                                <%--<ul>--%>
                                                    <%--<li><a href="cart.html" data-toggle="tooltip" data-placement="top" title="Add To cart"><i class="ion-bag"></i></a>--%>
                                                    <%--</li>--%>
                                                    <%--<li><a href="#" data-toggle="tooltip" data-placement="top" title="Add To Wishlist"><i class="ion-ios-heart-outline"></i></a>--%>
                                                    <%--</li>--%>
                                                    <%--<li><a href="compare.html" data-toggle="tooltip" data-placement="top" title="Add To Cart"><i class="fa fa-chart-bar"></i></a>--%>
                                                    <%--</li>--%>
                                                    <%--<li class="quick-view-btn" data-toggle="modal" data-target="#exampleModalCenter"><a href="javascript:void(0)" data-toggle="tooltip" data-placement="top" title="Quick View"><i class="ion-ios-search"></i></a></li>--%>
                                                <%--</ul>--%>
                                            <%--</div>--%>
                                        <%--</div>--%>
                                        <%--<div class="product-content">--%>
                                            <%--<div class="product-desc_info">--%>
                                                <%--<div class="price-box">--%>
                                                    <%--<span class="new-price">$79.00</span>--%>
                                                    <%--<span class="old-price">$85.00</span>--%>
                                                <%--</div>--%>
                                                <%--<h6 class="product-name"><a href="single-product.html">Curabitur tristique neque</a>--%>
                                                <%--</h6>--%>
                                                <%--<div class="rating-box">--%>
                                                    <%--<ul>--%>
                                                        <%--<li><i class="ion-ios-star"></i></li>--%>
                                                        <%--<li><i class="ion-ios-star"></i></li>--%>
                                                        <%--<li><i class="ion-ios-star"></i></li>--%>
                                                        <%--<li><i class="ion-ios-star"></i></li>--%>
                                                        <%--<li class="silver-color"><i class="ion-ios-star-outline"></i></li>--%>
                                                    <%--</ul>--%>
                                                <%--</div>--%>
                                            <%--</div>--%>
                                        <%--</div>--%>
                                    <%--</div>--%>
                                <%--</div>--%>
                                <%--<div class="slide-item">--%>
                                    <%--<div class="single-product">--%>
                                        <%--<div class="product-img">--%>
                                            <%--<a href="single-product.html">--%>
                                                <%--<img class="primary-img" src="<%=basePath%>assets/images/product/medium-size/5-2.jpg" alt="Umino's Product Image">--%>
                                            <%--</a>--%>
                                            <%--<div class="add-actions">--%>
                                                <%--<ul>--%>
                                                    <%--<li><a href="cart.html" data-toggle="tooltip" data-placement="top" title="Add To cart"><i class="ion-bag"></i></a>--%>
                                                    <%--</li>--%>
                                                    <%--<li><a href="#" data-toggle="tooltip" data-placement="top" title="Add To Wishlist"><i class="ion-ios-heart-outline"></i></a>--%>
                                                    <%--</li>--%>
                                                    <%--<li><a href="compare.html" data-toggle="tooltip" data-placement="top" title="Add To Cart"><i class="fa fa-chart-bar"></i></a>--%>
                                                    <%--</li>--%>
                                                    <%--<li class="quick-view-btn" data-toggle="modal" data-target="#exampleModalCenter"><a href="javascript:void(0)" data-toggle="tooltip" data-placement="top" title="Quick View"><i class="ion-ios-search"></i></a></li>--%>
                                                <%--</ul>--%>
                                            <%--</div>--%>
                                        <%--</div>--%>
                                        <%--<div class="product-content">--%>
                                            <%--<div class="product-desc_info">--%>
                                                <%--<div class="price-box">--%>
                                                    <%--<span class="new-price">$95.00</span>--%>
                                                    <%--<span class="old-price">$100.00</span>--%>
                                                <%--</div>--%>
                                                <%--<h6 class="product-name"><a href="single-product.html">Accumsan mauris ullaat</a>--%>
                                                <%--</h6>--%>
                                                <%--<div class="rating-box">--%>
                                                    <%--<ul>--%>
                                                        <%--<li><i class="ion-ios-star"></i></li>--%>
                                                        <%--<li><i class="ion-ios-star"></i></li>--%>
                                                        <%--<li><i class="ion-ios-star"></i></li>--%>
                                                        <%--<li class="silver-color"><i class="ion-ios-star-half"></i></li>--%>
                                                        <%--<li class="silver-color"><i class="ion-ios-star-outline"></i></li>--%>
                                                    <%--</ul>--%>
                                                <%--</div>--%>
                                            <%--</div>--%>
                                        <%--</div>--%>
                                    <%--</div>--%>
                                <%--</div>--%>
                                <%--<div class="slide-item">--%>
                                    <%--<div class="single-product">--%>
                                        <%--<div class="product-img">--%>
                                            <%--<a href="single-product.html">--%>
                                                <%--<img class="primary-img" src="<%=basePath%>assets/images/product/medium-size/8-1.jpg" alt="Umino's Product Image">--%>
                                            <%--</a>--%>
                                            <%--<div class="add-actions">--%>
                                                <%--<ul>--%>
                                                    <%--<li><a href="cart.html" data-toggle="tooltip" data-placement="top" title="Add To cart"><i class="ion-bag"></i></a>--%>
                                                    <%--</li>--%>
                                                    <%--<li><a href="#" data-toggle="tooltip" data-placement="top" title="Add To Wishlist"><i class="ion-ios-heart-outline"></i></a>--%>
                                                    <%--</li>--%>
                                                    <%--<li><a href="compare.html" data-toggle="tooltip" data-placement="top" title="Add To Cart"><i class="fa fa-chart-bar"></i></a>--%>
                                                    <%--</li>--%>
                                                    <%--<li class="quick-view-btn" data-toggle="modal" data-target="#exampleModalCenter"><a href="javascript:void(0)" data-toggle="tooltip" data-placement="top" title="Quick View"><i class="ion-ios-search"></i></a></li>--%>
                                                <%--</ul>--%>
                                            <%--</div>--%>
                                        <%--</div>--%>
                                        <%--<div class="product-content">--%>
                                            <%--<div class="product-desc_info">--%>
                                                <%--<div class="price-box">--%>
                                                    <%--<span class="new-price">$70.00</span>--%>
                                                    <%--<span class="old-price">$80.00</span>--%>
                                                <%--</div>--%>
                                                <%--<h6 class="product-name"><a href="single-product.html">Aliquet auctor semali</a>--%>
                                                <%--</h6>--%>
                                                <%--<div class="rating-box">--%>
                                                    <%--<ul>--%>
                                                        <%--<li><i class="ion-ios-star"></i></li>--%>
                                                        <%--<li><i class="ion-ios-star"></i></li>--%>
                                                        <%--<li><i class="ion-ios-star"></i></li>--%>
                                                        <%--<li class="silver-color"><i class="ion-ios-star-half"></i></li>--%>
                                                        <%--<li class="silver-color"><i class="ion-ios-star-outline"></i></li>--%>
                                                    <%--</ul>--%>
                                                <%--</div>--%>
                                            <%--</div>--%>
                                        <%--</div>--%>
                                    <%--</div>--%>
                                <%--</div>--%>
                                <%--<div class="slide-item">--%>
                                    <%--<div class="single-product">--%>
                                        <%--<div class="product-img">--%>
                                            <%--<a href="single-product.html">--%>
                                                <%--<img class="primary-img" src="<%=basePath%>assets/images/product/medium-size/2-3.jpg" alt="Umino's Product Image">--%>
                                            <%--</a>--%>
                                            <%--<div class="add-actions">--%>
                                                <%--<ul>--%>
                                                    <%--<li><a href="cart.html" data-toggle="tooltip" data-placement="top" title="Add To cart"><i class="ion-bag"></i></a>--%>
                                                    <%--</li>--%>
                                                    <%--<li><a href="#" data-toggle="tooltip" data-placement="top" title="Add To Wishlist"><i class="ion-ios-heart-outline"></i></a>--%>
                                                    <%--</li>--%>
                                                    <%--<li><a href="compare.html" data-toggle="tooltip" data-placement="top" title="Add To Cart"><i class="fa fa-chart-bar"></i></a>--%>
                                                    <%--</li>--%>
                                                    <%--<li class="quick-view-btn" data-toggle="modal" data-target="#exampleModalCenter"><a href="javascript:void(0)" data-toggle="tooltip" data-placement="top" title="Quick View"><i class="ion-ios-search"></i></a></li>--%>
                                                <%--</ul>--%>
                                            <%--</div>--%>
                                        <%--</div>--%>
                                        <%--<div class="product-content">--%>
                                            <%--<div class="product-desc_info">--%>
                                                <%--<div class="price-box">--%>
                                                    <%--<span class="new-price">$95.00</span>--%>
                                                    <%--<span class="old-price">$100.00</span>--%>
                                                <%--</div>--%>
                                                <%--<h6 class="product-name"><a href="single-product.html">Auctor gravida enimuctor</a>--%>
                                                <%--</h6>--%>
                                                <%--<div class="rating-box">--%>
                                                    <%--<ul>--%>
                                                        <%--<li><i class="ion-ios-star"></i></li>--%>
                                                        <%--<li><i class="ion-ios-star"></i></li>--%>
                                                        <%--<li><i class="ion-ios-star"></i></li>--%>
                                                        <%--<li><i class="ion-ios-star"></i></li>--%>
                                                        <%--<li class="silver-color"><i class="ion-ios-star-outline"></i></li>--%>
                                                    <%--</ul>--%>
                                                <%--</div>--%>
                                            <%--</div>--%>
                                        <%--</div>--%>
                                    <%--</div>--%>
                                <%--</div>--%>
                                <%--<div class="slide-item">--%>
                                    <%--<div class="single-product">--%>
                                        <%--<div class="product-img">--%>
                                            <%--<a href="single-product.html">--%>
                                                <%--<img class="primary-img" src="<%=basePath%>assets/images/product/medium-size/3-3.jpg" alt="Umino's Product Image">--%>
                                            <%--</a>--%>
                                            <%--<div class="add-actions">--%>
                                                <%--<ul>--%>
                                                    <%--<li><a href="cart.html" data-toggle="tooltip" data-placement="top" title="Add To cart"><i class="ion-bag"></i></a>--%>
                                                    <%--</li>--%>
                                                    <%--<li><a href="#" data-toggle="tooltip" data-placement="top" title="Add To Wishlist"><i class="ion-ios-heart-outline"></i></a>--%>
                                                    <%--</li>--%>
                                                    <%--<li><a href="compare.html" data-toggle="tooltip" data-placement="top" title="Add To Cart"><i class="fa fa-chart-bar"></i></a>--%>
                                                    <%--</li>--%>
                                                    <%--<li class="quick-view-btn" data-toggle="modal" data-target="#exampleModalCenter"><a href="javascript:void(0)" data-toggle="tooltip" data-placement="top" title="Quick View"><i class="ion-ios-search"></i></a></li>--%>
                                                <%--</ul>--%>
                                            <%--</div>--%>
                                        <%--</div>--%>
                                        <%--<div class="product-content">--%>
                                            <%--<div class="product-desc_info">--%>
                                                <%--<div class="price-box">--%>
                                                    <%--<span class="new-price">$65.00</span>--%>
                                                    <%--<span class="old-price">$68.00</span>--%>
                                                <%--</div>--%>
                                                <%--<h6 class="product-name"><a href="single-product.html">Bibenm lorem coectetur</a>--%>
                                                <%--</h6>--%>
                                                <%--<div class="rating-box">--%>
                                                    <%--<ul>--%>
                                                        <%--<li><i class="ion-ios-star"></i></li>--%>
                                                        <%--<li><i class="ion-ios-star"></i></li>--%>
                                                        <%--<li><i class="ion-ios-star"></i></li>--%>
                                                        <%--<li><i class="ion-ios-star"></i></li>--%>
                                                        <%--<li class="silver-color"><i class="ion-ios-star-half"></i></li>--%>
                                                    <%--</ul>--%>
                                                <%--</div>--%>
                                            <%--</div>--%>
                                        <%--</div>--%>
                                    <%--</div>--%>
                                <%--</div>--%>
                                <%--<div class="slide-item">--%>
                                    <%--<div class="single-product">--%>
                                        <%--<div class="product-img">--%>
                                            <%--<a href="single-product.html">--%>
                                                <%--<img class="primary-img" src="<%=basePath%>assets/images/product/medium-size/4-3.jpg" alt="Umino's Product Image">--%>
                                            <%--</a>--%>
                                            <%--<div class="add-actions">--%>
                                                <%--<ul>--%>
                                                    <%--<li><a href="cart.html" data-toggle="tooltip" data-placement="top" title="Add To cart"><i class="ion-bag"></i></a>--%>
                                                    <%--</li>--%>
                                                    <%--<li><a href="#" data-toggle="tooltip" data-placement="top" title="Add To Wishlist"><i class="ion-ios-heart-outline"></i></a>--%>
                                                    <%--</li>--%>
                                                    <%--<li><a href="compare.html" data-toggle="tooltip" data-placement="top" title="Add To Cart"><i class="fa fa-chart-bar"></i></a>--%>
                                                    <%--</li>--%>
                                                    <%--<li class="quick-view-btn" data-toggle="modal" data-target="#exampleModalCenter"><a href="javascript:void(0)" data-toggle="tooltip" data-placement="top" title="Quick View"><i class="ion-ios-search"></i></a></li>--%>
                                                <%--</ul>--%>
                                            <%--</div>--%>
                                        <%--</div>--%>
                                        <%--<div class="product-content">--%>
                                            <%--<div class="product-desc_info">--%>
                                                <%--<div class="price-box">--%>
                                                    <%--<span class="new-price">$79.00</span>--%>
                                                    <%--<span class="old-price">$85.00</span>--%>
                                                <%--</div>--%>
                                                <%--<h6 class="product-name"><a href="single-product.html">Curabitur tristique neque</a>--%>
                                                <%--</h6>--%>
                                                <%--<div class="rating-box">--%>
                                                    <%--<ul>--%>
                                                        <%--<li><i class="ion-ios-star"></i></li>--%>
                                                        <%--<li><i class="ion-ios-star"></i></li>--%>
                                                        <%--<li><i class="ion-ios-star"></i></li>--%>
                                                        <%--<li><i class="ion-ios-star"></i></li>--%>
                                                        <%--<li class="silver-color"><i class="ion-ios-star-outline"></i></li>--%>
                                                    <%--</ul>--%>
                                                <%--</div>--%>
                                            <%--</div>--%>
                                        <%--</div>--%>
                                    <%--</div>--%>
                                <%--</div>--%>
                                <%--<div class="slide-item">--%>
                                    <%--<div class="single-product">--%>
                                        <%--<div class="product-img">--%>
                                            <%--<a href="single-product.html">--%>
                                                <%--<img class="primary-img" src="<%=basePath%>assets/images/product/medium-size/5-3.jpg" alt="Umino's Product Image">--%>
                                            <%--</a>--%>
                                            <%--<div class="add-actions">--%>
                                                <%--<ul>--%>
                                                    <%--<li><a href="cart.html" data-toggle="tooltip" data-placement="top" title="Add To cart"><i class="ion-bag"></i></a>--%>
                                                    <%--</li>--%>
                                                    <%--<li><a href="#" data-toggle="tooltip" data-placement="top" title="Add To Wishlist"><i class="ion-ios-heart-outline"></i></a>--%>
                                                    <%--</li>--%>
                                                    <%--<li><a href="compare.html" data-toggle="tooltip" data-placement="top" title="Add To Cart"><i class="fa fa-chart-bar"></i></a>--%>
                                                    <%--</li>--%>
                                                    <%--<li class="quick-view-btn" data-toggle="modal" data-target="#exampleModalCenter"><a href="javascript:void(0)" data-toggle="tooltip" data-placement="top" title="Quick View"><i class="ion-ios-search"></i></a></li>--%>
                                                <%--</ul>--%>
                                            <%--</div>--%>
                                        <%--</div>--%>
                                        <%--<div class="product-content">--%>
                                            <%--<div class="product-desc_info">--%>
                                                <%--<div class="price-box">--%>
                                                    <%--<span class="new-price">$95.00</span>--%>
                                                    <%--<span class="old-price">$100.00</span>--%>
                                                <%--</div>--%>
                                                <%--<h6 class="product-name"><a href="single-product.html">Accumsan mauris ullaat</a>--%>
                                                <%--</h6>--%>
                                                <%--<div class="rating-box">--%>
                                                    <%--<ul>--%>
                                                        <%--<li><i class="ion-ios-star"></i></li>--%>
                                                        <%--<li><i class="ion-ios-star"></i></li>--%>
                                                        <%--<li><i class="ion-ios-star"></i></li>--%>
                                                        <%--<li class="silver-color"><i class="ion-ios-star-half"></i></li>--%>
                                                        <%--<li class="silver-color"><i class="ion-ios-star-outline"></i></li>--%>
                                                    <%--</ul>--%>
                                                <%--</div>--%>
                                            <%--</div>--%>
                                        <%--</div>--%>
                                    <%--</div>--%>
                                <%--</div>--%>
                                <%--<div class="slide-item">--%>
                                    <%--<div class="single-product">--%>
                                        <%--<div class="product-img">--%>
                                            <%--<a href="single-product.html">--%>
                                                <%--<img class="primary-img" src="<%=basePath%>assets/images/product/medium-size/5-3.jpg" alt="Umino's Product Image">--%>
                                            <%--</a>--%>
                                            <%--<div class="add-actions">--%>
                                                <%--<ul>--%>
                                                    <%--<li><a href="cart.html" data-toggle="tooltip" data-placement="top" title="Add To cart"><i class="ion-bag"></i></a>--%>
                                                    <%--</li>--%>
                                                    <%--<li><a href="#" data-toggle="tooltip" data-placement="top" title="Add To Wishlist"><i class="ion-ios-heart-outline"></i></a>--%>
                                                    <%--</li>--%>
                                                    <%--<li><a href="compare.html" data-toggle="tooltip" data-placement="top" title="Add To Cart"><i class="fa fa-chart-bar"></i></a>--%>
                                                    <%--</li>--%>
                                                    <%--<li class="quick-view-btn" data-toggle="modal" data-target="#exampleModalCenter"><a href="javascript:void(0)" data-toggle="tooltip" data-placement="top" title="Quick View"><i class="ion-ios-search"></i></a></li>--%>
                                                <%--</ul>--%>
                                            <%--</div>--%>
                                        <%--</div>--%>
                                        <%--<div class="product-content">--%>
                                            <%--<div class="product-desc_info">--%>
                                                <%--<div class="price-box">--%>
                                                    <%--<span class="new-price">$95.00</span>--%>
                                                    <%--<span class="old-price">$100.00</span>--%>
                                                <%--</div>--%>
                                                <%--<h6 class="product-name"><a href="single-product.html">Accumsan mauris ullaat</a>--%>
                                                <%--</h6>--%>
                                                <%--<div class="rating-box">--%>
                                                    <%--<ul>--%>
                                                        <%--<li><i class="ion-ios-star"></i></li>--%>
                                                        <%--<li><i class="ion-ios-star"></i></li>--%>
                                                        <%--<li><i class="ion-ios-star"></i></li>--%>
                                                        <%--<li class="silver-color"><i class="ion-ios-star-half"></i></li>--%>
                                                        <%--<li class="silver-color"><i class="ion-ios-star-outline"></i></li>--%>
                                                    <%--</ul>--%>
                                                <%--</div>--%>
                                            <%--</div>--%>
                                        <%--</div>--%>
                                    <%--</div>--%>
                                <%--</div>--%>
                                <%--<div class="slide-item">--%>
                                    <%--<div class="single-product">--%>
                                        <%--<div class="product-img">--%>
                                            <%--<a href="single-product.html">--%>
                                                <%--<img class="primary-img" src="<%=basePath%>assets/images/product/medium-size/1-2.jpg" alt="Umino's Product Image">--%>
                                            <%--</a>--%>
                                            <%--<div class="add-actions">--%>
                                                <%--<ul>--%>
                                                    <%--<li><a href="cart.html" data-toggle="tooltip" data-placement="top" title="Add To cart"><i class="ion-bag"></i></a>--%>
                                                    <%--</li>--%>
                                                    <%--<li><a href="#" data-toggle="tooltip" data-placement="top" title="Add To Wishlist"><i class="ion-ios-heart-outline"></i></a>--%>
                                                    <%--</li>--%>
                                                    <%--<li><a href="compare.html" data-toggle="tooltip" data-placement="top" title="Add To Cart"><i class="fa fa-chart-bar"></i></a>--%>
                                                    <%--</li>--%>
                                                    <%--<li class="quick-view-btn" data-toggle="modal" data-target="#exampleModalCenter"><a href="javascript:void(0)" data-toggle="tooltip" data-placement="top" title="Quick View"><i class="ion-ios-search"></i></a></li>--%>
                                                <%--</ul>--%>
                                            <%--</div>--%>
                                        <%--</div>--%>
                                        <%--<div class="product-content">--%>
                                            <%--<div class="product-desc_info">--%>
                                                <%--<div class="price-box">--%>
                                                    <%--<span class="new-price">$70.00</span>--%>
                                                    <%--<span class="old-price">$80.00</span>--%>
                                                <%--</div>--%>
                                                <%--<h6 class="product-name"><a href="single-product.html">Aliquet auctor semali</a>--%>
                                                <%--</h6>--%>
                                                <%--<div class="rating-box">--%>
                                                    <%--<ul>--%>
                                                        <%--<li><i class="ion-ios-star"></i></li>--%>
                                                        <%--<li><i class="ion-ios-star"></i></li>--%>
                                                        <%--<li><i class="ion-ios-star"></i></li>--%>
                                                        <%--<li class="silver-color"><i class="ion-ios-star-half"></i></li>--%>
                                                        <%--<li class="silver-color"><i class="ion-ios-star-outline"></i></li>--%>
                                                    <%--</ul>--%>
                                                <%--</div>--%>
                                            <%--</div>--%>
                                        <%--</div>--%>
                                    <%--</div>--%>
                                <%--</div>--%>
                            </div>
                        </div>
                        <div id="new-arrivals" class="tab-pane" role="tabpanel">
                            <div class="umino-product-tab_slider slider-navigation_style-1">
                                <div class="slide-item">
                                    <div class="single-product">
                                        <div class="product-img">
                                            <a href="single-product.html">
                                                <img class="primary-img" src="<%=basePath%>assets/images/product/medium-size/8-1.jpg" alt="Umino's Product Image">
                                            </a>
                                            <div class="add-actions">
                                                <ul>
                                                    <li><a href="cart.html" data-toggle="tooltip" data-placement="top" title="Add To cart"><i class="ion-bag"></i></a>
                                                    </li>
                                                    <li><a href="#" data-toggle="tooltip" data-placement="top" title="Add To Wishlist"><i class="ion-ios-heart-outline"></i></a>
                                                    </li>
                                                    <li><a href="compare.html" data-toggle="tooltip" data-placement="top" title="Add To Cart"><i class="fa fa-chart-bar"></i></a>
                                                    </li>
                                                    <li class="quick-view-btn" data-toggle="modal" data-target="#exampleModalCenter"><a href="javascript:void(0)" data-toggle="tooltip" data-placement="top" title="Quick View"><i class="ion-ios-search"></i></a></li>
                                                </ul>
                                            </div>
                                        </div>
                                        <div class="product-content">
                                            <div class="product-desc_info">
                                                <div class="price-box">
                                                    <span class="new-price">$70.00</span>
                                                    <span class="old-price">$80.00</span>
                                                </div>
                                                <h6 class="product-name"><a href="single-product.html">Aliquet auctor semali</a>
                                                </h6>
                                                <div class="rating-box">
                                                    <ul>
                                                        <li><i class="ion-ios-star"></i></li>
                                                        <li><i class="ion-ios-star"></i></li>
                                                        <li><i class="ion-ios-star"></i></li>
                                                        <li class="silver-color"><i class="ion-ios-star-half"></i></li>
                                                        <li class="silver-color"><i class="ion-ios-star-outline"></i></li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="slide-item">
                                    <div class="single-product">
                                        <div class="product-img">
                                            <a href="single-product.html">
                                                <img class="primary-img" src="<%=basePath%>assets/images/product/medium-size/2-3.jpg" alt="Umino's Product Image">
                                            </a>
                                            <div class="add-actions">
                                                <ul>
                                                    <li><a href="cart.html" data-toggle="tooltip" data-placement="top" title="Add To cart"><i class="ion-bag"></i></a>
                                                    </li>
                                                    <li><a href="#" data-toggle="tooltip" data-placement="top" title="Add To Wishlist"><i class="ion-ios-heart-outline"></i></a>
                                                    </li>
                                                    <li><a href="compare.html" data-toggle="tooltip" data-placement="top" title="Add To Cart"><i class="fa fa-chart-bar"></i></a>
                                                    </li>
                                                    <li class="quick-view-btn" data-toggle="modal" data-target="#exampleModalCenter"><a href="javascript:void(0)" data-toggle="tooltip" data-placement="top" title="Quick View"><i class="ion-ios-search"></i></a></li>
                                                </ul>
                                            </div>
                                        </div>
                                        <div class="product-content">
                                            <div class="product-desc_info">
                                                <div class="price-box">
                                                    <span class="new-price">$95.00</span>
                                                    <span class="old-price">$100.00</span>
                                                </div>
                                                <h6 class="product-name"><a href="single-product.html">Auctor gravida enimuctor</a>
                                                </h6>
                                                <div class="rating-box">
                                                    <ul>
                                                        <li><i class="ion-ios-star"></i></li>
                                                        <li><i class="ion-ios-star"></i></li>
                                                        <li><i class="ion-ios-star"></i></li>
                                                        <li><i class="ion-ios-star"></i></li>
                                                        <li class="silver-color"><i class="ion-ios-star-outline"></i></li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="slide-item">
                                    <div class="single-product">
                                        <div class="product-img">
                                            <a href="single-product.html">
                                                <img class="primary-img" src="<%=basePath%>assets/images/product/medium-size/3-3.jpg" alt="Umino's Product Image">
                                            </a>
                                            <div class="add-actions">
                                                <ul>
                                                    <li><a href="cart.html" data-toggle="tooltip" data-placement="top" title="Add To cart"><i class="ion-bag"></i></a>
                                                    </li>
                                                    <li><a href="#" data-toggle="tooltip" data-placement="top" title="Add To Wishlist"><i class="ion-ios-heart-outline"></i></a>
                                                    </li>
                                                    <li><a href="compare.html" data-toggle="tooltip" data-placement="top" title="Add To Cart"><i class="fa fa-chart-bar"></i></a>
                                                    </li>
                                                    <li class="quick-view-btn" data-toggle="modal" data-target="#exampleModalCenter"><a href="javascript:void(0)" data-toggle="tooltip" data-placement="top" title="Quick View"><i class="ion-ios-search"></i></a></li>
                                                </ul>
                                            </div>
                                        </div>
                                        <div class="product-content">
                                            <div class="product-desc_info">
                                                <div class="price-box">
                                                    <span class="new-price">$65.00</span>
                                                    <span class="old-price">$68.00</span>
                                                </div>
                                                <h6 class="product-name"><a href="single-product.html">Bibenm lorem coectetur</a>
                                                </h6>
                                                <div class="rating-box">
                                                    <ul>
                                                        <li><i class="ion-ios-star"></i></li>
                                                        <li><i class="ion-ios-star"></i></li>
                                                        <li><i class="ion-ios-star"></i></li>
                                                        <li><i class="ion-ios-star"></i></li>
                                                        <li class="silver-color"><i class="ion-ios-star-half"></i></li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="slide-item">
                                    <div class="single-product">
                                        <div class="product-img">
                                            <a href="single-product.html">
                                                <img class="primary-img" src="<%=basePath%>assets/images/product/medium-size/4-3.jpg" alt="Umino's Product Image">
                                            </a>
                                            <div class="add-actions">
                                                <ul>
                                                    <li><a href="cart.html" data-toggle="tooltip" data-placement="top" title="Add To cart"><i class="ion-bag"></i></a>
                                                    </li>
                                                    <li><a href="#" data-toggle="tooltip" data-placement="top" title="Add To Wishlist"><i class="ion-ios-heart-outline"></i></a>
                                                    </li>
                                                    <li><a href="compare.html" data-toggle="tooltip" data-placement="top" title="Add To Cart"><i class="fa fa-chart-bar"></i></a>
                                                    </li>
                                                    <li class="quick-view-btn" data-toggle="modal" data-target="#exampleModalCenter"><a href="javascript:void(0)" data-toggle="tooltip" data-placement="top" title="Quick View"><i class="ion-ios-search"></i></a></li>
                                                </ul>
                                            </div>
                                        </div>
                                        <div class="product-content">
                                            <div class="product-desc_info">
                                                <div class="price-box">
                                                    <span class="new-price">$79.00</span>
                                                    <span class="old-price">$85.00</span>
                                                </div>
                                                <h6 class="product-name"><a href="single-product.html">Curabitur tristique neque</a>
                                                </h6>
                                                <div class="rating-box">
                                                    <ul>
                                                        <li><i class="ion-ios-star"></i></li>
                                                        <li><i class="ion-ios-star"></i></li>
                                                        <li><i class="ion-ios-star"></i></li>
                                                        <li><i class="ion-ios-star"></i></li>
                                                        <li class="silver-color"><i class="ion-ios-star-outline"></i></li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="slide-item">
                                    <div class="single-product">
                                        <div class="product-img">
                                            <a href="single-product.html">
                                                <img class="primary-img" src="<%=basePath%>assets/images/product/medium-size/5-3.jpg" alt="Umino's Product Image">
                                            </a>
                                            <div class="add-actions">
                                                <ul>
                                                    <li><a href="cart.html" data-toggle="tooltip" data-placement="top" title="Add To cart"><i class="ion-bag"></i></a>
                                                    </li>
                                                    <li><a href="#" data-toggle="tooltip" data-placement="top" title="Add To Wishlist"><i class="ion-ios-heart-outline"></i></a>
                                                    </li>
                                                    <li><a href="compare.html" data-toggle="tooltip" data-placement="top" title="Add To Cart"><i class="fa fa-chart-bar"></i></a>
                                                    </li>
                                                    <li class="quick-view-btn" data-toggle="modal" data-target="#exampleModalCenter"><a href="javascript:void(0)" data-toggle="tooltip" data-placement="top" title="Quick View"><i class="ion-ios-search"></i></a></li>
                                                </ul>
                                            </div>
                                        </div>
                                        <div class="product-content">
                                            <div class="product-desc_info">
                                                <div class="price-box">
                                                    <span class="new-price">$95.00</span>
                                                    <span class="old-price">$100.00</span>
                                                </div>
                                                <h6 class="product-name"><a href="single-product.html">Accumsan mauris ullaat</a>
                                                </h6>
                                                <div class="rating-box">
                                                    <ul>
                                                        <li><i class="ion-ios-star"></i></li>
                                                        <li><i class="ion-ios-star"></i></li>
                                                        <li><i class="ion-ios-star"></i></li>
                                                        <li class="silver-color"><i class="ion-ios-star-half"></i></li>
                                                        <li class="silver-color"><i class="ion-ios-star-outline"></i></li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="slide-item">
                                    <div class="single-product">
                                        <div class="product-img">
                                            <a href="single-product.html">
                                                <img class="primary-img" src="<%=basePath%>assets/images/product/medium-size/1-2.jpg" alt="Umino's Product Image">
                                            </a>
                                            <div class="add-actions">
                                                <ul>
                                                    <li><a href="cart.html" data-toggle="tooltip" data-placement="top" title="Add To cart"><i class="ion-bag"></i></a>
                                                    </li>
                                                    <li><a href="#" data-toggle="tooltip" data-placement="top" title="Add To Wishlist"><i class="ion-ios-heart-outline"></i></a>
                                                    </li>
                                                    <li><a href="compare.html" data-toggle="tooltip" data-placement="top" title="Add To Cart"><i class="fa fa-chart-bar"></i></a>
                                                    </li>
                                                    <li class="quick-view-btn" data-toggle="modal" data-target="#exampleModalCenter"><a href="javascript:void(0)" data-toggle="tooltip" data-placement="top" title="Quick View"><i class="ion-ios-search"></i></a></li>
                                                </ul>
                                            </div>
                                        </div>
                                        <div class="product-content">
                                            <div class="product-desc_info">
                                                <div class="price-box">
                                                    <span class="new-price">$70.00</span>
                                                    <span class="old-price">$80.00</span>
                                                </div>
                                                <h6 class="product-name"><a href="single-product.html">Aliquet auctor semali</a>
                                                </h6>
                                                <div class="rating-box">
                                                    <ul>
                                                        <li><i class="ion-ios-star"></i></li>
                                                        <li><i class="ion-ios-star"></i></li>
                                                        <li><i class="ion-ios-star"></i></li>
                                                        <li class="silver-color"><i class="ion-ios-star-half"></i></li>
                                                        <li class="silver-color"><i class="ion-ios-star-outline"></i></li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="slide-item">
                                    <div class="single-product">
                                        <div class="product-img">
                                            <a href="single-product.html">
                                                <img class="primary-img" src="<%=basePath%>assets/images/product/medium-size/2-2.jpg" alt="Umino's Product Image">
                                            </a>
                                            <div class="add-actions">
                                                <ul>
                                                    <li><a href="cart.html" data-toggle="tooltip" data-placement="top" title="Add To cart"><i class="ion-bag"></i></a>
                                                    </li>
                                                    <li><a href="#" data-toggle="tooltip" data-placement="top" title="Add To Wishlist"><i class="ion-ios-heart-outline"></i></a>
                                                    </li>
                                                    <li><a href="compare.html" data-toggle="tooltip" data-placement="top" title="Add To Cart"><i class="fa fa-chart-bar"></i></a>
                                                    </li>
                                                    <li class="quick-view-btn" data-toggle="modal" data-target="#exampleModalCenter"><a href="javascript:void(0)" data-toggle="tooltip" data-placement="top" title="Quick View"><i class="ion-ios-search"></i></a></li>
                                                </ul>
                                            </div>
                                        </div>
                                        <div class="product-content">
                                            <div class="product-desc_info">
                                                <div class="price-box">
                                                    <span class="new-price">$95.00</span>
                                                    <span class="old-price">$100.00</span>
                                                </div>
                                                <h6 class="product-name"><a href="single-product.html">Auctor gravida enimuctor</a>
                                                </h6>
                                                <div class="rating-box">
                                                    <ul>
                                                        <li><i class="ion-ios-star"></i></li>
                                                        <li><i class="ion-ios-star"></i></li>
                                                        <li><i class="ion-ios-star"></i></li>
                                                        <li><i class="ion-ios-star"></i></li>
                                                        <li class="silver-color"><i class="ion-ios-star-outline"></i></li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="slide-item">
                                    <div class="single-product">
                                        <div class="product-img">
                                            <a href="single-product.html">
                                                <img class="primary-img" src="<%=basePath%>assets/images/product/medium-size/3-2.jpg" alt="Umino's Product Image">
                                            </a>
                                            <div class="add-actions">
                                                <ul>
                                                    <li><a href="cart.html" data-toggle="tooltip" data-placement="top" title="Add To cart"><i class="ion-bag"></i></a>
                                                    </li>
                                                    <li><a href="#" data-toggle="tooltip" data-placement="top" title="Add To Wishlist"><i class="ion-ios-heart-outline"></i></a>
                                                    </li>
                                                    <li><a href="compare.html" data-toggle="tooltip" data-placement="top" title="Add To Cart"><i class="fa fa-chart-bar"></i></a>
                                                    </li>
                                                    <li class="quick-view-btn" data-toggle="modal" data-target="#exampleModalCenter"><a href="javascript:void(0)" data-toggle="tooltip" data-placement="top" title="Quick View"><i class="ion-ios-search"></i></a></li>
                                                </ul>
                                            </div>
                                        </div>
                                        <div class="product-content">
                                            <div class="product-desc_info">
                                                <div class="price-box">
                                                    <span class="new-price">$65.00</span>
                                                    <span class="old-price">$68.00</span>
                                                </div>
                                                <h6 class="product-name"><a href="single-product.html">Bibenm lorem coectetur</a>
                                                </h6>
                                                <div class="rating-box">
                                                    <ul>
                                                        <li><i class="ion-ios-star"></i></li>
                                                        <li><i class="ion-ios-star"></i></li>
                                                        <li><i class="ion-ios-star"></i></li>
                                                        <li><i class="ion-ios-star"></i></li>
                                                        <li class="silver-color"><i class="ion-ios-star-half"></i></li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="slide-item">
                                    <div class="single-product">
                                        <div class="product-img">
                                            <a href="single-product.html">
                                                <img class="primary-img" src="<%=basePath%>assets/images/product/medium-size/4-2.jpg" alt="Umino's Product Image">
                                            </a>
                                            <div class="add-actions">
                                                <ul>
                                                    <li><a href="cart.html" data-toggle="tooltip" data-placement="top" title="Add To cart"><i class="ion-bag"></i></a>
                                                    </li>
                                                    <li><a href="#" data-toggle="tooltip" data-placement="top" title="Add To Wishlist"><i class="ion-ios-heart-outline"></i></a>
                                                    </li>
                                                    <li><a href="compare.html" data-toggle="tooltip" data-placement="top" title="Add To Cart"><i class="fa fa-chart-bar"></i></a>
                                                    </li>
                                                    <li class="quick-view-btn" data-toggle="modal" data-target="#exampleModalCenter"><a href="javascript:void(0)" data-toggle="tooltip" data-placement="top" title="Quick View"><i class="ion-ios-search"></i></a></li>
                                                </ul>
                                            </div>
                                        </div>
                                        <div class="product-content">
                                            <div class="product-desc_info">
                                                <div class="price-box">
                                                    <span class="new-price">$79.00</span>
                                                    <span class="old-price">$85.00</span>
                                                </div>
                                                <h6 class="product-name"><a href="single-product.html">Curabitur tristique neque</a>
                                                </h6>
                                                <div class="rating-box">
                                                    <ul>
                                                        <li><i class="ion-ios-star"></i></li>
                                                        <li><i class="ion-ios-star"></i></li>
                                                        <li><i class="ion-ios-star"></i></li>
                                                        <li><i class="ion-ios-star"></i></li>
                                                        <li class="silver-color"><i class="ion-ios-star-outline"></i></li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="slide-item">
                                    <div class="single-product">
                                        <div class="product-img">
                                            <a href="single-product.html">
                                                <img class="primary-img" src="<%=basePath%>assets/images/product/medium-size/5-2.jpg" alt="Umino's Product Image">
                                            </a>
                                            <div class="add-actions">
                                                <ul>
                                                    <li><a href="cart.html" data-toggle="tooltip" data-placement="top" title="Add To cart"><i class="ion-bag"></i></a>
                                                    </li>
                                                    <li><a href="#" data-toggle="tooltip" data-placement="top" title="Add To Wishlist"><i class="ion-ios-heart-outline"></i></a>
                                                    </li>
                                                    <li><a href="compare.html" data-toggle="tooltip" data-placement="top" title="Add To Cart"><i class="fa fa-chart-bar"></i></a>
                                                    </li>
                                                    <li class="quick-view-btn" data-toggle="modal" data-target="#exampleModalCenter"><a href="javascript:void(0)" data-toggle="tooltip" data-placement="top" title="Quick View"><i class="ion-ios-search"></i></a></li>
                                                </ul>
                                            </div>
                                        </div>
                                        <div class="product-content">
                                            <div class="product-desc_info">
                                                <div class="price-box">
                                                    <span class="new-price">$95.00</span>
                                                    <span class="old-price">$100.00</span>
                                                </div>
                                                <h6 class="product-name"><a href="single-product.html">Accumsan mauris ullaat</a>
                                                </h6>
                                                <div class="rating-box">
                                                    <ul>
                                                        <li><i class="ion-ios-star"></i></li>
                                                        <li><i class="ion-ios-star"></i></li>
                                                        <li><i class="ion-ios-star"></i></li>
                                                        <li class="silver-color"><i class="ion-ios-star-half"></i></li>
                                                        <li class="silver-color"><i class="ion-ios-star-outline"></i></li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="slide-item">
                                    <div class="single-product">
                                        <div class="product-img">
                                            <a href="single-product.html">
                                                <img class="primary-img" src="<%=basePath%>assets/images/product/medium-size/4-2.jpg" alt="Umino's Product Image">
                                            </a>
                                            <div class="add-actions">
                                                <ul>
                                                    <li><a href="cart.html" data-toggle="tooltip" data-placement="top" title="Add To cart"><i class="ion-bag"></i></a>
                                                    </li>
                                                    <li><a href="#" data-toggle="tooltip" data-placement="top" title="Add To Wishlist"><i class="ion-ios-heart-outline"></i></a>
                                                    </li>
                                                    <li><a href="compare.html" data-toggle="tooltip" data-placement="top" title="Add To Cart"><i class="fa fa-chart-bar"></i></a>
                                                    </li>
                                                    <li class="quick-view-btn" data-toggle="modal" data-target="#exampleModalCenter"><a href="javascript:void(0)" data-toggle="tooltip" data-placement="top" title="Quick View"><i class="ion-ios-search"></i></a></li>
                                                </ul>
                                            </div>
                                        </div>
                                        <div class="product-content">
                                            <div class="product-desc_info">
                                                <div class="price-box">
                                                    <span class="new-price">$79.00</span>
                                                    <span class="old-price">$85.00</span>
                                                </div>
                                                <h6 class="product-name"><a href="single-product.html">Curabitur tristique neque</a>
                                                </h6>
                                                <div class="rating-box">
                                                    <ul>
                                                        <li><i class="ion-ios-star"></i></li>
                                                        <li><i class="ion-ios-star"></i></li>
                                                        <li><i class="ion-ios-star"></i></li>
                                                        <li><i class="ion-ios-star"></i></li>
                                                        <li class="silver-color"><i class="ion-ios-star-outline"></i></li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="slide-item">
                                    <div class="single-product">
                                        <div class="product-img">
                                            <a href="single-product.html">
                                                <img class="primary-img" src="<%=basePath%>assets/images/product/medium-size/5-2.jpg" alt="Umino's Product Image">
                                            </a>
                                            <div class="add-actions">
                                                <ul>
                                                    <li><a href="cart.html" data-toggle="tooltip" data-placement="top" title="Add To cart"><i class="ion-bag"></i></a>
                                                    </li>
                                                    <li><a href="#" data-toggle="tooltip" data-placement="top" title="Add To Wishlist"><i class="ion-ios-heart-outline"></i></a>
                                                    </li>
                                                    <li><a href="compare.html" data-toggle="tooltip" data-placement="top" title="Add To Cart"><i class="fa fa-chart-bar"></i></a>
                                                    </li>
                                                    <li class="quick-view-btn" data-toggle="modal" data-target="#exampleModalCenter"><a href="javascript:void(0)" data-toggle="tooltip" data-placement="top" title="Quick View"><i class="ion-ios-search"></i></a></li>
                                                </ul>
                                            </div>
                                        </div>
                                        <div class="product-content">
                                            <div class="product-desc_info">
                                                <div class="price-box">
                                                    <span class="new-price">$95.00</span>
                                                    <span class="old-price">$100.00</span>
                                                </div>
                                                <h6 class="product-name"><a href="single-product.html">Accumsan mauris ullaat</a>
                                                </h6>
                                                <div class="rating-box">
                                                    <ul>
                                                        <li><i class="ion-ios-star"></i></li>
                                                        <li><i class="ion-ios-star"></i></li>
                                                        <li><i class="ion-ios-star"></i></li>
                                                        <li class="silver-color"><i class="ion-ios-star-half"></i></li>
                                                        <li class="silver-color"><i class="ion-ios-star-outline"></i></li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div id="best-seller" class="tab-pane" role="tabpanel">
                            <div class="umino-product-tab_slider slider-navigation_style-1">
                                <div class="slide-item">
                                    <div class="single-product">
                                        <div class="product-img">
                                            <a href="single-product.html">
                                                <img class="primary-img" src="<%=basePath%>assets/images/product/medium-size/5-3.jpg" alt="Umino's Product Image">
                                            </a>
                                            <div class="add-actions">
                                                <ul>
                                                    <li><a href="cart.html" data-toggle="tooltip" data-placement="top" title="Add To cart"><i class="ion-bag"></i></a>
                                                    </li>
                                                    <li><a href="#" data-toggle="tooltip" data-placement="top" title="Add To Wishlist"><i class="ion-ios-heart-outline"></i></a>
                                                    </li>
                                                    <li><a href="compare.html" data-toggle="tooltip" data-placement="top" title="Add To Cart"><i class="fa fa-chart-bar"></i></a>
                                                    </li>
                                                    <li class="quick-view-btn" data-toggle="modal" data-target="#exampleModalCenter"><a href="javascript:void(0)" data-toggle="tooltip" data-placement="top" title="Quick View"><i class="ion-ios-search"></i></a></li>
                                                </ul>
                                            </div>
                                        </div>
                                        <div class="product-content">
                                            <div class="product-desc_info">
                                                <div class="price-box">
                                                    <span class="new-price">$95.00</span>
                                                    <span class="old-price">$100.00</span>
                                                </div>
                                                <h6 class="product-name"><a href="single-product.html">Accumsan mauris ullaat</a>
                                                </h6>
                                                <div class="rating-box">
                                                    <ul>
                                                        <li><i class="ion-ios-star"></i></li>
                                                        <li><i class="ion-ios-star"></i></li>
                                                        <li><i class="ion-ios-star"></i></li>
                                                        <li class="silver-color"><i class="ion-ios-star-half"></i></li>
                                                        <li class="silver-color"><i class="ion-ios-star-outline"></i></li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="slide-item">
                                    <div class="single-product">
                                        <div class="product-img">
                                            <a href="single-product.html">
                                                <img class="primary-img" src="<%=basePath%>assets/images/product/medium-size/1-2.jpg" alt="Umino's Product Image">
                                            </a>
                                            <div class="add-actions">
                                                <ul>
                                                    <li><a href="cart.html" data-toggle="tooltip" data-placement="top" title="Add To cart"><i class="ion-bag"></i></a>
                                                    </li>
                                                    <li><a href="#" data-toggle="tooltip" data-placement="top" title="Add To Wishlist"><i class="ion-ios-heart-outline"></i></a>
                                                    </li>
                                                    <li><a href="compare.html" data-toggle="tooltip" data-placement="top" title="Add To Cart"><i class="fa fa-chart-bar"></i></a>
                                                    </li>
                                                    <li class="quick-view-btn" data-toggle="modal" data-target="#exampleModalCenter"><a href="javascript:void(0)" data-toggle="tooltip" data-placement="top" title="Quick View"><i class="ion-ios-search"></i></a></li>
                                                </ul>
                                            </div>
                                        </div>
                                        <div class="product-content">
                                            <div class="product-desc_info">
                                                <div class="price-box">
                                                    <span class="new-price">$70.00</span>
                                                    <span class="old-price">$80.00</span>
                                                </div>
                                                <h6 class="product-name"><a href="single-product.html">Aliquet auctor semali</a>
                                                </h6>
                                                <div class="rating-box">
                                                    <ul>
                                                        <li><i class="ion-ios-star"></i></li>
                                                        <li><i class="ion-ios-star"></i></li>
                                                        <li><i class="ion-ios-star"></i></li>
                                                        <li class="silver-color"><i class="ion-ios-star-half"></i></li>
                                                        <li class="silver-color"><i class="ion-ios-star-outline"></i></li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="slide-item">
                                    <div class="single-product">
                                        <div class="product-img">
                                            <a href="single-product.html">
                                                <img class="primary-img" src="<%=basePath%>assets/images/product/medium-size/2-2.jpg" alt="Umino's Product Image">
                                            </a>
                                            <div class="add-actions">
                                                <ul>
                                                    <li><a href="cart.html" data-toggle="tooltip" data-placement="top" title="Add To cart"><i class="ion-bag"></i></a>
                                                    </li>
                                                    <li><a href="#" data-toggle="tooltip" data-placement="top" title="Add To Wishlist"><i class="ion-ios-heart-outline"></i></a>
                                                    </li>
                                                    <li><a href="compare.html" data-toggle="tooltip" data-placement="top" title="Add To Cart"><i class="fa fa-chart-bar"></i></a>
                                                    </li>
                                                    <li class="quick-view-btn" data-toggle="modal" data-target="#exampleModalCenter"><a href="javascript:void(0)" data-toggle="tooltip" data-placement="top" title="Quick View"><i class="ion-ios-search"></i></a></li>
                                                </ul>
                                            </div>
                                        </div>
                                        <div class="product-content">
                                            <div class="product-desc_info">
                                                <div class="price-box">
                                                    <span class="new-price">$95.00</span>
                                                    <span class="old-price">$100.00</span>
                                                </div>
                                                <h6 class="product-name"><a href="single-product.html">Auctor gravida enimuctor</a>
                                                </h6>
                                                <div class="rating-box">
                                                    <ul>
                                                        <li><i class="ion-ios-star"></i></li>
                                                        <li><i class="ion-ios-star"></i></li>
                                                        <li><i class="ion-ios-star"></i></li>
                                                        <li><i class="ion-ios-star"></i></li>
                                                        <li class="silver-color"><i class="ion-ios-star-outline"></i></li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="slide-item">
                                    <div class="single-product">
                                        <div class="product-img">
                                            <a href="single-product.html">
                                                <img class="primary-img" src="<%=basePath%>assets/images/product/medium-size/3-2.jpg" alt="Umino's Product Image">
                                            </a>
                                            <div class="add-actions">
                                                <ul>
                                                    <li><a href="cart.html" data-toggle="tooltip" data-placement="top" title="Add To cart"><i class="ion-bag"></i></a>
                                                    </li>
                                                    <li><a href="#" data-toggle="tooltip" data-placement="top" title="Add To Wishlist"><i class="ion-ios-heart-outline"></i></a>
                                                    </li>
                                                    <li><a href="compare.html" data-toggle="tooltip" data-placement="top" title="Add To Cart"><i class="fa fa-chart-bar"></i></a>
                                                    </li>
                                                    <li class="quick-view-btn" data-toggle="modal" data-target="#exampleModalCenter"><a href="javascript:void(0)" data-toggle="tooltip" data-placement="top" title="Quick View"><i class="ion-ios-search"></i></a></li>
                                                </ul>
                                            </div>
                                        </div>
                                        <div class="product-content">
                                            <div class="product-desc_info">
                                                <div class="price-box">
                                                    <span class="new-price">$65.00</span>
                                                    <span class="old-price">$68.00</span>
                                                </div>
                                                <h6 class="product-name"><a href="single-product.html">Bibenm lorem coectetur</a>
                                                </h6>
                                                <div class="rating-box">
                                                    <ul>
                                                        <li><i class="ion-ios-star"></i></li>
                                                        <li><i class="ion-ios-star"></i></li>
                                                        <li><i class="ion-ios-star"></i></li>
                                                        <li><i class="ion-ios-star"></i></li>
                                                        <li class="silver-color"><i class="ion-ios-star-half"></i></li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="slide-item">
                                    <div class="single-product">
                                        <div class="product-img">
                                            <a href="single-product.html">
                                                <img class="primary-img" src="<%=basePath%>assets/images/product/medium-size/4-2.jpg" alt="Umino's Product Image">
                                            </a>
                                            <div class="add-actions">
                                                <ul>
                                                    <li><a href="cart.html" data-toggle="tooltip" data-placement="top" title="Add To cart"><i class="ion-bag"></i></a>
                                                    </li>
                                                    <li><a href="#" data-toggle="tooltip" data-placement="top" title="Add To Wishlist"><i class="ion-ios-heart-outline"></i></a>
                                                    </li>
                                                    <li><a href="compare.html" data-toggle="tooltip" data-placement="top" title="Add To Cart"><i class="fa fa-chart-bar"></i></a>
                                                    </li>
                                                    <li class="quick-view-btn" data-toggle="modal" data-target="#exampleModalCenter"><a href="javascript:void(0)" data-toggle="tooltip" data-placement="top" title="Quick View"><i class="ion-ios-search"></i></a></li>
                                                </ul>
                                            </div>
                                        </div>
                                        <div class="product-content">
                                            <div class="product-desc_info">
                                                <div class="price-box">
                                                    <span class="new-price">$79.00</span>
                                                    <span class="old-price">$85.00</span>
                                                </div>
                                                <h6 class="product-name"><a href="single-product.html">Curabitur tristique neque</a>
                                                </h6>
                                                <div class="rating-box">
                                                    <ul>
                                                        <li><i class="ion-ios-star"></i></li>
                                                        <li><i class="ion-ios-star"></i></li>
                                                        <li><i class="ion-ios-star"></i></li>
                                                        <li><i class="ion-ios-star"></i></li>
                                                        <li class="silver-color"><i class="ion-ios-star-outline"></i></li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="slide-item">
                                    <div class="single-product">
                                        <div class="product-img">
                                            <a href="single-product.html">
                                                <img class="primary-img" src="<%=basePath%>assets/images/product/medium-size/5-2.jpg" alt="Umino's Product Image">
                                            </a>
                                            <div class="add-actions">
                                                <ul>
                                                    <li><a href="cart.html" data-toggle="tooltip" data-placement="top" title="Add To cart"><i class="ion-bag"></i></a>
                                                    </li>
                                                    <li><a href="#" data-toggle="tooltip" data-placement="top" title="Add To Wishlist"><i class="ion-ios-heart-outline"></i></a>
                                                    </li>
                                                    <li><a href="compare.html" data-toggle="tooltip" data-placement="top" title="Add To Cart"><i class="fa fa-chart-bar"></i></a>
                                                    </li>
                                                    <li class="quick-view-btn" data-toggle="modal" data-target="#exampleModalCenter"><a href="javascript:void(0)" data-toggle="tooltip" data-placement="top" title="Quick View"><i class="ion-ios-search"></i></a></li>
                                                </ul>
                                            </div>
                                        </div>
                                        <div class="product-content">
                                            <div class="product-desc_info">
                                                <div class="price-box">
                                                    <span class="new-price">$95.00</span>
                                                    <span class="old-price">$100.00</span>
                                                </div>
                                                <h6 class="product-name"><a href="single-product.html">Accumsan mauris ullaat</a>
                                                </h6>
                                                <div class="rating-box">
                                                    <ul>
                                                        <li><i class="ion-ios-star"></i></li>
                                                        <li><i class="ion-ios-star"></i></li>
                                                        <li><i class="ion-ios-star"></i></li>
                                                        <li class="silver-color"><i class="ion-ios-star-half"></i></li>
                                                        <li class="silver-color"><i class="ion-ios-star-outline"></i></li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="slide-item">
                                    <div class="single-product">
                                        <div class="product-img">
                                            <a href="single-product.html">
                                                <img class="primary-img" src="<%=basePath%>assets/images/product/medium-size/8-1.jpg" alt="Umino's Product Image">
                                            </a>
                                            <div class="add-actions">
                                                <ul>
                                                    <li><a href="cart.html" data-toggle="tooltip" data-placement="top" title="Add To cart"><i class="ion-bag"></i></a>
                                                    </li>
                                                    <li><a href="#" data-toggle="tooltip" data-placement="top" title="Add To Wishlist"><i class="ion-ios-heart-outline"></i></a>
                                                    </li>
                                                    <li><a href="compare.html" data-toggle="tooltip" data-placement="top" title="Add To Cart"><i class="fa fa-chart-bar"></i></a>
                                                    </li>
                                                    <li class="quick-view-btn" data-toggle="modal" data-target="#exampleModalCenter"><a href="javascript:void(0)" data-toggle="tooltip" data-placement="top" title="Quick View"><i class="ion-ios-search"></i></a></li>
                                                </ul>
                                            </div>
                                        </div>
                                        <div class="product-content">
                                            <div class="product-desc_info">
                                                <div class="price-box">
                                                    <span class="new-price">$70.00</span>
                                                    <span class="old-price">$80.00</span>
                                                </div>
                                                <h6 class="product-name"><a href="single-product.html">Aliquet auctor semali</a>
                                                </h6>
                                                <div class="rating-box">
                                                    <ul>
                                                        <li><i class="ion-ios-star"></i></li>
                                                        <li><i class="ion-ios-star"></i></li>
                                                        <li><i class="ion-ios-star"></i></li>
                                                        <li class="silver-color"><i class="ion-ios-star-half"></i></li>
                                                        <li class="silver-color"><i class="ion-ios-star-outline"></i></li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="slide-item">
                                    <div class="single-product">
                                        <div class="product-img">
                                            <a href="single-product.html">
                                                <img class="primary-img" src="<%=basePath%>assets/images/product/medium-size/3-3.jpg" alt="Umino's Product Image">
                                            </a>
                                            <div class="add-actions">
                                                <ul>
                                                    <li><a href="cart.html" data-toggle="tooltip" data-placement="top" title="Add To cart"><i class="ion-bag"></i></a>
                                                    </li>
                                                    <li><a href="#" data-toggle="tooltip" data-placement="top" title="Add To Wishlist"><i class="ion-ios-heart-outline"></i></a>
                                                    </li>
                                                    <li><a href="compare.html" data-toggle="tooltip" data-placement="top" title="Add To Cart"><i class="fa fa-chart-bar"></i></a>
                                                    </li>
                                                    <li class="quick-view-btn" data-toggle="modal" data-target="#exampleModalCenter"><a href="javascript:void(0)" data-toggle="tooltip" data-placement="top" title="Quick View"><i class="ion-ios-search"></i></a></li>
                                                </ul>
                                            </div>
                                        </div>
                                        <div class="product-content">
                                            <div class="product-desc_info">
                                                <div class="price-box">
                                                    <span class="new-price">$65.00</span>
                                                    <span class="old-price">$68.00</span>
                                                </div>
                                                <h6 class="product-name"><a href="single-product.html">Bibenm lorem coectetur</a>
                                                </h6>
                                                <div class="rating-box">
                                                    <ul>
                                                        <li><i class="ion-ios-star"></i></li>
                                                        <li><i class="ion-ios-star"></i></li>
                                                        <li><i class="ion-ios-star"></i></li>
                                                        <li><i class="ion-ios-star"></i></li>
                                                        <li class="silver-color"><i class="ion-ios-star-half"></i></li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="slide-item">
                                    <div class="single-product">
                                        <div class="product-img">
                                            <a href="single-product.html">
                                                <img class="primary-img" src="<%=basePath%>assets/images/product/medium-size/4-3.jpg" alt="Umino's Product Image">
                                            </a>
                                            <div class="add-actions">
                                                <ul>
                                                    <li><a href="cart.html" data-toggle="tooltip" data-placement="top" title="Add To cart"><i class="ion-bag"></i></a>
                                                    </li>
                                                    <li><a href="#" data-toggle="tooltip" data-placement="top" title="Add To Wishlist"><i class="ion-ios-heart-outline"></i></a>
                                                    </li>
                                                    <li><a href="compare.html" data-toggle="tooltip" data-placement="top" title="Add To Cart"><i class="fa fa-chart-bar"></i></a>
                                                    </li>
                                                    <li class="quick-view-btn" data-toggle="modal" data-target="#exampleModalCenter"><a href="javascript:void(0)" data-toggle="tooltip" data-placement="top" title="Quick View"><i class="ion-ios-search"></i></a></li>
                                                </ul>
                                            </div>
                                        </div>
                                        <div class="product-content">
                                            <div class="product-desc_info">
                                                <div class="price-box">
                                                    <span class="new-price">$79.00</span>
                                                    <span class="old-price">$85.00</span>
                                                </div>
                                                <h6 class="product-name"><a href="single-product.html">Curabitur tristique neque</a>
                                                </h6>
                                                <div class="rating-box">
                                                    <ul>
                                                        <li><i class="ion-ios-star"></i></li>
                                                        <li><i class="ion-ios-star"></i></li>
                                                        <li><i class="ion-ios-star"></i></li>
                                                        <li><i class="ion-ios-star"></i></li>
                                                        <li class="silver-color"><i class="ion-ios-star-outline"></i></li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="slide-item">
                                    <div class="single-product">
                                        <div class="product-img">
                                            <a href="single-product.html">
                                                <img class="primary-img" src="<%=basePath%>assets/images/product/medium-size/5-3.jpg" alt="Umino's Product Image">
                                            </a>
                                            <div class="add-actions">
                                                <ul>
                                                    <li><a href="cart.html" data-toggle="tooltip" data-placement="top" title="Add To cart"><i class="ion-bag"></i></a>
                                                    </li>
                                                    <li><a href="#" data-toggle="tooltip" data-placement="top" title="Add To Wishlist"><i class="ion-ios-heart-outline"></i></a>
                                                    </li>
                                                    <li><a href="compare.html" data-toggle="tooltip" data-placement="top" title="Add To Cart"><i class="fa fa-chart-bar"></i></a>
                                                    </li>
                                                    <li class="quick-view-btn" data-toggle="modal" data-target="#exampleModalCenter"><a href="javascript:void(0)" data-toggle="tooltip" data-placement="top" title="Quick View"><i class="ion-ios-search"></i></a></li>
                                                </ul>
                                            </div>
                                        </div>
                                        <div class="product-content">
                                            <div class="product-desc_info">
                                                <div class="price-box">
                                                    <span class="new-price">$95.00</span>
                                                    <span class="old-price">$100.00</span>
                                                </div>
                                                <h6 class="product-name"><a href="single-product.html">Accumsan mauris ullaat</a>
                                                </h6>
                                                <div class="rating-box">
                                                    <ul>
                                                        <li><i class="ion-ios-star"></i></li>
                                                        <li><i class="ion-ios-star"></i></li>
                                                        <li><i class="ion-ios-star"></i></li>
                                                        <li class="silver-color"><i class="ion-ios-star-half"></i></li>
                                                        <li class="silver-color"><i class="ion-ios-star-outline"></i></li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="slide-item">
                                    <div class="single-product">
                                        <div class="product-img">
                                            <a href="single-product.html">
                                                <img class="primary-img" src="<%=basePath%>assets/images/product/medium-size/1-2.jpg" alt="Umino's Product Image">
                                            </a>
                                            <div class="add-actions">
                                                <ul>
                                                    <li><a href="cart.html" data-toggle="tooltip" data-placement="top" title="Add To cart"><i class="ion-bag"></i></a>
                                                    </li>
                                                    <li><a href="#" data-toggle="tooltip" data-placement="top" title="Add To Wishlist"><i class="ion-ios-heart-outline"></i></a>
                                                    </li>
                                                    <li><a href="compare.html" data-toggle="tooltip" data-placement="top" title="Add To Cart"><i class="fa fa-chart-bar"></i></a>
                                                    </li>
                                                    <li class="quick-view-btn" data-toggle="modal" data-target="#exampleModalCenter"><a href="javascript:void(0)" data-toggle="tooltip" data-placement="top" title="Quick View"><i class="ion-ios-search"></i></a></li>
                                                </ul>
                                            </div>
                                        </div>
                                        <div class="product-content">
                                            <div class="product-desc_info">
                                                <div class="price-box">
                                                    <span class="new-price">$70.00</span>
                                                    <span class="old-price">$80.00</span>
                                                </div>
                                                <h6 class="product-name"><a href="single-product.html">Aliquet auctor semali</a>
                                                </h6>
                                                <div class="rating-box">
                                                    <ul>
                                                        <li><i class="ion-ios-star"></i></li>
                                                        <li><i class="ion-ios-star"></i></li>
                                                        <li><i class="ion-ios-star"></i></li>
                                                        <li class="silver-color"><i class="ion-ios-star-half"></i></li>
                                                        <li class="silver-color"><i class="ion-ios-star-outline"></i></li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="slide-item">
                                    <div class="single-product">
                                        <div class="product-img">
                                            <a href="single-product.html">
                                                <img class="primary-img" src="<%=basePath%>assets/images/product/medium-size/3-3.jpg" alt="Umino's Product Image">
                                            </a>
                                            <div class="add-actions">
                                                <ul>
                                                    <li><a href="cart.html" data-toggle="tooltip" data-placement="top" title="Add To cart"><i class="ion-bag"></i></a>
                                                    </li>
                                                    <li><a href="#" data-toggle="tooltip" data-placement="top" title="Add To Wishlist"><i class="ion-ios-heart-outline"></i></a>
                                                    </li>
                                                    <li><a href="compare.html" data-toggle="tooltip" data-placement="top" title="Add To Cart"><i class="fa fa-chart-bar"></i></a>
                                                    </li>
                                                    <li class="quick-view-btn" data-toggle="modal" data-target="#exampleModalCenter"><a href="javascript:void(0)" data-toggle="tooltip" data-placement="top" title="Quick View"><i class="ion-ios-search"></i></a></li>
                                                </ul>
                                            </div>
                                        </div>
                                        <div class="product-content">
                                            <div class="product-desc_info">
                                                <div class="price-box">
                                                    <span class="new-price">$65.00</span>
                                                    <span class="old-price">$68.00</span>
                                                </div>
                                                <h6 class="product-name"><a href="single-product.html">Bibenm lorem coectetur</a>
                                                </h6>
                                                <div class="rating-box">
                                                    <ul>
                                                        <li><i class="ion-ios-star"></i></li>
                                                        <li><i class="ion-ios-star"></i></li>
                                                        <li><i class="ion-ios-star"></i></li>
                                                        <li><i class="ion-ios-star"></i></li>
                                                        <li class="silver-color"><i class="ion-ios-star-half"></i></li>
                                                    </ul>
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
    <!-- Umino's Product Tab Area End Here -->
    <!--商品展示END-->




    <!--页脚start-->
    <div class="umino-footer_area">
        <div class="footer-top_area bg--tangerine_yellow">
            <div class="container">
                <div class="row">
                    <div class="col-lg-6">
                        <div class="newsletter-area">
                            <div class="newsletter-info">
                                <i class="fa fa-paper-plane" aria-hidden="true"></i>
                                <span>订阅新闻通讯并获得折扣</span>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </div>
        <div class="footer-middle_area">
            <div class="container">
                <div class="row">
                    <div class="col-xl-3 col-lg-4 order-1 order-lg-1">
                        <div class="footer-widgets_title">
                            <h4>联系我们</h4>
                        </div>
                        <div class="footer-widgets footer-contact_info">
                            <ul>
                                <li>
                                    <i class="ion-ios-home-outline"></i>
                                    <span>广州大学华软软件学院</span>
                                </li>
                                <li>
                                    <i class="ion-ios-email-outline"></i>
                                    <span>邮箱:</span>
                                    <a href="mailto://845263159@qq.com">845263159@qq.com</a>
                                </li>
                                <li>
                                    <i class="ion-android-call"></i>
                                    <span>手机:</span>
                                    <div class="cellphone-number_area">
                                        <a href="tel://+123123321345/">(+86) 186 7633 9789</a>
                                    </div>
                                </li>
                                <li>
                                    <i class="ion-android-print"></i>
                                    <span>传真:</span>
                                    <div class="cellphone-number_area">
                                        <a href="javascript:void(0)">(+321) 543 123 321</a>
                                    </div>
                                </li>
                                <li>
                                    <i class="ion-ios-calendar-outline"></i>
                                    <span>周一至周六 9:00pm – 5:00pm. 周日: 休息</span>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-lg-2 col-md-6 col-sm-6 order-2 order-lg-2">
                        <div class="footer-widgets_title">
                            <h4>信息</h4>
                        </div>
                        <div class="footer-widgets">
                            <ul>
                                <li><a href="javascript:void(0)">联系</a></li>
                                <li><a href="javascript:void(0)">关于我们</a></li>
                                <li><a href="javascript:void(0)">隐私政策</a></li>
                                <li><a href="javascript:void(0)">客户服务</a></li>
                                <li><a href="javascript:void(0)">常见问题</a></li>
                                <li><a href="javascript:void(0)">配送信息</a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-lg-2 col-md-6 col-sm-6 order-3 order-lg-3">
                        <div class="footer-widgets_title">
                            <h4>我的帐户</h4>
                        </div>
                        <div class="footer-widgets">
                            <ul>
                                <li><a href="javascript:void(0)">我的收藏</a></li>
                                <li><a href="javascript:void(0)">购物车</a></li>
                                <li><a href="javascript:void(0)">查看</a></li>
                                <li><a href="javascript:void(0)">常问问题</a></li>
                                <li><a href="javascript:void(0)">我的账户</a></li>
                                <li><a href="javascript:void(0)">隐私政策</a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-xl-5 col-lg-4 order-3 order-lg-4">
                        <div class="footer-widgets_title">
                            <h4>最新推文</h4>
                        </div>
                        <div class="footer-widgets latest-tweets_area">
                            <div class="latest-tweets_slider">
                                <div class="twitter-single_item">
                                    <div class="twitter-feed_content">
                                        <p>With this roundup of 42 of the best halftone resources for Adobe Photoshop and Adobe Illustrator, here's
                                            everything you need to achieve that classic vintage look for yourself.
                                            <a href="javascript:void(0)" title="enva.to/rd" class="rtw_url_link">enva.to/rd</a>
                                            <a href="javascript:void(0)" title="pic.twitter.com/Xy55wIEP5T" class="rtw_media_link"> pic.twitter.com/Xy55wIEP5T</a>
                                        </p>
                                    </div>
                                    <div class="twitter-feed_footer">
                                        <a href="javascript:void(0)">Sep 09</a>
                                        <a href="javascript:void(0)">reply</a>
                                        <a href="javascript:void(0)">retweet</a>
                                        <a href="javascript:void(0)">favorite</a>
                                        <a href="javascript:void(0)">1 years ago</a>
                                    </div>
                                </div>
                                <div class="twitter-single_item">
                                    <div class="twitter-feed_content">
                                        <p>Packed with ideas, inspiration, and just a few pictures of cute cats, it can be hard to stand out in a sea of
                                            graphics on
                                            <a href="javascript:void(0)" title="Pinterest" lang="en">@Pinterest</a>
                                            . Which is why we're here to help with these awesome templates.
                                            <a href="javascript:void(0)" title="https://enva.to/r6" class="rtw_url_link">enva.to/r6</a>
                                        </p>
                                    </div>
                                    <div class="twitter-feed_footer">
                                        <a href="javascript:void(0)">Sep 20</a>
                                        <a href="javascript:void(0)">reply</a>
                                        <a href="javascript:void(0)">retweet</a>
                                        <a href="javascript:void(0)">favorite</a>
                                        <a href="javascript:void(0)">1 years ago</a>
                                    </div>
                                </div>
                                <div class="twitter-single_item">
                                    <div class="twitter-feed_content">
                                        <p>Packed with ideas, inspiration, and just a few pictures of cute cats, it can be hard to stand out in a sea of graphics on
                                            <a href="javascript:void(0)" title="Pinterest" lang="en">@Pinterest</a>
                                            . Which is why we're here to help with these awesome templates.
                                            <a href="javascript:void(0)" title="enva.to/r6" class="rtw_url_link">enva.to/r6</a>
                                        </p>
                                    </div>
                                    <div class="twitter-feed_footer">
                                        <a href="javascript:void(0)">Sep 25</a>
                                        <a href="javascript:void(0)">reply</a>
                                        <a href="javascript:void(0)">retweet</a>
                                        <a href="javascript:void(0)">favorite</a>
                                        <a href="javascript:void(0)">1 years ago</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="footer-bottom_area">
            <div class="container">
                <div class="footer-bottom_nav">
                    <div class="row">
                        <div class="col-xl-4 col-lg-5 col-md-7 order-3 order-md-1">
                            <div class="copyright">
                                <span>版权所有 &copy; 2019.移动归属感公司保留所有权利.</span>
                            </div>
                            <div class="umino-social_link">
                                <ul>
                                    <li class="facebook">
                                        <a href="https://www.facebook.com/" data-toggle="tooltip" target="_blank" title="Facebook">
                                            <i class="fab fa-facebook"></i>
                                        </a>
                                    </li>
                                    <li class="twitter">
                                        <a href="https://twitter.com/" data-toggle="tooltip" target="_blank" title="Twitter">
                                            <i class="fab fa-twitter-square"></i>
                                        </a>
                                    </li>
                                    <li class="instagram">
                                        <a href="https://rss.com/" data-toggle="tooltip" target="_blank" title="Instagram">
                                            <i class="fab fa-instagram"></i>
                                        </a>
                                    </li>
                                    <li class="linkedin">
                                        <a href="https://www.linkedin.com/" data-toggle="tooltip" target="_blank" title="linkedin">
                                            <i class="fab fa-linkedin"></i>
                                        </a>
                                    </li>
                                    <li class="rss">
                                        <a href="http://www.rss.com/" data-toggle="tooltip" target="_blank" title="rss">
                                            <i class="fa fa-rss"></i>
                                        </a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <div class="col-xl-4 col-lg-3 col-md-5 order-1 order-md-2">
                            <div class="footer-logo">
                                <a href="javascript:void(0)">
                                    <img src="<%=basePath%>assets/images/footer/logo/1.png" alt="Umino's Logo">
                                </a>
                            </div>
                        </div>
                        <div class="col-lg-4 order-2">
                            <div class="payment-method">
                                <h3 class="heading">支付方式</h3>
                                <a href="javascript:void(0)">
                                    <img src="<%=basePath%>assets/images/footer/payment/1.png" alt="Umino's Payment Method">
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--页脚end-->




    <!--商品弹出框start-->
    <div class="modal fade modal-wrapper" id="exampleModalCenter">
        <div class="modal-dialog modal-dialog-centered" role="document">
            <div class="modal-content">
                <div class="modal-body">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                    <div class="modal-inner-area sp-area row">
                        <div class="col-lg-5">
                            <div class="sp-img_area">
                                <div class="sp-img_slider-2 slick-img-slider umino-slick-slider arrow-type-two" data-slick-options='{
                                                        "slidesToShow": 1,
                                                        "arrows": false,
                                                        "fade": true,
                                                        "draggable": false,
                                                        "swipe": false,
                                                        "asNavFor": ".sp-img_slider-nav"
                                                        }'>
                                    <div class="single-slide red">
                                        <img src="<%=basePath%>assets/images/product/large-size/1.jpg" alt="Umino's Product Image">
                                    </div>
                                    <div class="single-slide orange">
                                        <img src="<%=basePath%>assets/images/product/large-size/2.jpg" alt="Umino's Product Image">
                                    </div>
                                    <div class="single-slide brown">
                                        <img src="<%=basePath%>assets/images/product/large-size/3.jpg" alt="Umino's Product Image">
                                    </div>
                                    <div class="single-slide umber">
                                        <img src="<%=basePath%>assets/images/product/large-size/4.jpg" alt="Umino's Product Image">
                                    </div>
                                </div>
                                <div class="sp-img_slider-nav slick-slider-nav umino-slick-slider arrow-type-two" data-slick-options='{
                                   "slidesToShow": 4,
                                    "asNavFor": ".sp-img_slider-2",
                                   "focusOnSelect": true
                                  }' data-slick-responsive='[
                                                        {"breakpoint":1501, "settings": {"slidesToShow": 3}},
                                                        {"breakpoint":1200, "settings": {"slidesToShow": 2}},
                                                        {"breakpoint":992, "settings": {"slidesToShow": 4}},
                                                        {"breakpoint":768, "settings": {"slidesToShow": 3}},
                                                        {"breakpoint":321, "settings": {"slidesToShow": 2}}
                                                    ]'>
                                    <div class="single-slide red">
                                        <img src="<%=basePath%>assets/images/product/small-size/1.jpg" alt="Umino's Product Thumnail">
                                    </div>
                                    <div class="single-slide orange">
                                        <img src="<%=basePath%>assets/images/product/small-size/2.jpg" alt="Umino's Product Thumnail">
                                    </div>
                                    <div class="single-slide brown">
                                        <img src="<%=basePath%>assets/images/product/small-size/3.jpg" alt="Umino's Product Thumnail">
                                    </div>
                                    <div class="single-slide umber">
                                        <img src="<%=basePath%>assets/images/product/small-size/4.jpg" alt="Umino's Product Thumnail">
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-xl-7 col-lg-6">
                            <div class="sp-content">
                                <div class="sp-heading">
                                    <h5><a href="single-product.html">Aliquet Auctor Semali</a></h5>
                                </div>
                                <div class="price-box">
                                    <span class="new-price">$70.00</span>
                                    <span class="old-price">$80.00</span>
                                </div>
                                <div class="features">
                                    <a href="single-product.html">See all features</a>
                                </div>
                                <div class="quantity-area">
                                    <div class="quantity">
                                        <label>Quantity</label>
                                        <div class="cart-plus-minus">
                                            <input class="cart-plus-minus-box" value="1" type="text">
                                            <div class="dec qtybutton"><i class="fa fa-angle-down"></i></div>
                                            <div class="inc qtybutton"><i class="fa fa-angle-up"></i></div>
                                        </div>
                                    </div>
                                    <div class="quantity-btn">
                                        <ul>
                                            <li><a href="cart.html" class="add-to_cart">Add To Cart</a></li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="short-desc">
                                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco,Proin lectus ipsum, gravida et mattis vulputate, tristique ut lectus</p>
                                </div>
                                <div class="umino-social_link">
                                    <div class="social-title">
                                        <h3>Share This Product</h3>
                                    </div>
                                    <ul>
                                        <li class="facebook">
                                            <a href="https://www.facebook.com/" data-toggle="tooltip" target="_blank" title="Facebook">
                                                <i class="fab fa-facebook"></i>
                                            </a>
                                        </li>
                                        <li class="twitter">
                                            <a href="https://twitter.com/" data-toggle="tooltip" target="_blank" title="Twitter">
                                                <i class="fab fa-twitter-square"></i>
                                            </a>
                                        </li>
                                        <li class="youtube">
                                            <a href="https://www.youtube.com/" data-toggle="tooltip" target="_blank" title="Youtube">
                                                <i class="fab fa-youtube"></i>
                                            </a>
                                        </li>
                                        <li class="google-plus">
                                            <a href="https://www.plus.google.com/discover" data-toggle="tooltip" target="_blank" title="Google Plus">
                                                <i class="fab fa-google-plus"></i>
                                            </a>
                                        </li>
                                        <li class="instagram">
                                            <a href="https://rss.com/" data-toggle="tooltip" target="_blank" title="Instagram">
                                                <i class="fab fa-instagram"></i>
                                            </a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--商品弹出框end-->


</div>

<!-- JS
============================================ -->

<!-- jQuery JS -->
<script src="<%=basePath%>assets/js/vendor/jquery-1.12.4.min.js"></script>
<!-- Modernizer JS -->
<script src="<%=basePath%>assets/js/vendor/modernizr-2.8.3.min.js"></script>
<!-- Popper JS -->
<script src="<%=basePath%>assets/js/vendor/popper.min.js"></script>
<!-- Bootstrap JS -->
<script src="<%=basePath%>assets/js/vendor/bootstrap.min.js"></script>

<!-- Slick Slider JS -->
<script src="<%=basePath%>assets/js/plugins/slick.min.js"></script>
<!-- Countdown JS -->
<script src="<%=basePath%>assets/js/plugins/countdown.js"></script>
<!-- Barrating JS -->
<script src="<%=basePath%>assets/js/plugins/jquery.barrating.min.js"></script>
<!-- Counterup JS -->
<script src="<%=basePath%>assets/js/plugins/jquery.counterup.js"></script>
<!-- Nice Select JS -->
<script src="<%=basePath%>assets/js/plugins/jquery.nice-select.js"></script>
<!-- Sticky Sidebar JS -->
<script src="<%=basePath%>assets/js/plugins/jquery.sticky-sidebar.js"></script>
<!-- jQuery UI -->
<script src="<%=basePath%>assets/js/plugins/jquery-ui.min.js"></script>
<!-- jQuery UI Touch Punch -->
<script src="<%=basePath%>assets/js/plugins/jquery.ui.touch-punch.min.js"></script>
<!-- Venobox JS -->
<script src="<%=basePath%>assets/js/plugins/venobox.min.js"></script>
<!-- Scroll Top JS -->
<script src="<%=basePath%>assets/js/plugins/scroll-top.js"></script>
<!-- Theia Sticky Sidebar JS -->
<script src="<%=basePath%>assets/js/plugins/theia-sticky-sidebar.min.js"></script>
<!-- Waypoints JS -->
<script src="<%=basePath%>assets/js/plugins/waypoints.min.js"></script>
<!-- ElevateZoom JS -->
<script src="<%=basePath%>assets/js/plugins/jquery.elevateZoom-3.0.8.min.js"></script>
<!-- Images loaded JS -->
<script src="<%=basePath%>assets/js/plugins/imagesloaded.pkgd.min.js"></script>
<!-- Isotope JS -->
<script src="<%=basePath%>assets/js/plugins/isotope.pkgd.min.js"></script>
<!-- Ajax Mail JS -->
<script src="<%=basePath%>assets/js/ajax-mail.js"></script>

<!-- Vendor & Plugins JS (Please remove the comment from below vendor.min.js & plugins.min.js for better website load performance and remove js files from avobe) -->
<!--
<script src="<%=basePath%>assets/js/vendor/vendor.min.js"></script>
<script src="<%=basePath%>assets/js/plugins/plugins.min.js"></script>
-->

<!-- Main JS -->
<script src="<%=basePath%>assets/js/main.js"></script>

</body>

</html>

