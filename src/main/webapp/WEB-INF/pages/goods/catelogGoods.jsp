<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<html class="no-js" lang="zxx">
<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Shop Left Sidebar</title>
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
                                <input type="text" name="str" placeholder="搜点什么吧..." name="str" value="<c:out value="${search}"></c:out>">
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
        <div class="header-bottom_area @@bgColor">
            <div class="container">
                <div class="row">
                    <!--导航条start-->
                    <div class="col-lg-3 col-md-9 col-sm-7">
                        <div class="category-menu category-menu-hidden">
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

                </div>
            </div>
        </div>
        <!--黄条end-->
    </header>
    <!-- Umino's Header Main Area End Here -->

    <!-- Begin Umino's Breadcrumb Area -->
    <div class="breadcrumb-area">
        <div class="container">
            <div class="breadcrumb-content">
                <ul>
                    <li><a href="<%=basePath%>goods/homeGoods">主页</a></li>
                    <li class="active">${catelog.name}</li>
                </ul>
            </div>
        </div>
    </div>
    <!-- Umino's Breadcrumb Area End Here -->

    <!-- Begin Umino's Content Wrapper Area -->
    <div class="umino-content_wrapper">
        <div class="container">
            <div class="row">
                <div class="col-lg-3 order-2 order-lg-1">
                    <div class="umino-sidebar-catagories_area">
                        <div class="umino-sidebar_categories">
                            <div class="umino-categories_title first-child">
                                <h5>按价格筛选</h5>
                            </div>
                            <div class="price-filter">
                                <div id="slider-range"></div>
                                <div class="price-slider-amount">
                                    <div class="label-input">
                                        <label>价钱 : </label>
                                        <input type="text" id="amount" name="price" placeholder="Add Your Price" />
                                        <button class="filter-btn">过滤</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!--产品类别start-->
                        <div class="umino-sidebar_categories category-module">
                            <div class="umino-categories_title">
                                <h5>产品类别</h5>
                            </div>
                            <div class="sidebar-categories_menu">
                                <ul>
                                    <li class="has-sub"><a href="javascript:void(0)">Bed & Bath <i class="ion-chevron-right"></i></a>
                                        <ul>
                                            <li><a href="javascript:void(0)">Baskets & Bins</a></li>
                                            <li><a href="javascript:void(0)">Bed Frames</a></li>
                                            <li><a href="javascript:void(0)">Bedroom Armoires</a></li>
                                            <li><a href="javascript:void(0)">Dressers</a></li>
                                            <li><a href="javascript:void(0)">Hangers</a></li>
                                            <li><a href="javascript:void(0)">Headboards & Footboards</a></li>
                                            <li><a href="javascript:void(0)">Nightstands</a></li>
                                            <li><a href="javascript:void(0)">Shoe Organizers</a></li>
                                            <li><a href="javascript:void(0)">Storage & Organization</a></li>
                                        </ul>
                                    </li>
                                    <li><a href="javascript:void(0)">Bedroom</a></li>
                                    <li class="has-sub"><a href="javascript:void(0)">Console Tables <i class="ion-chevron-right"></i></a>
                                        <ul>
                                            <li><a href="javascript:void(0)">Daylesford</a></li>
                                            <li><a href="javascript:void(0)">Delaware</a></li>
                                            <li><a href="javascript:void(0)">Fayence</a></li>
                                            <li><a href="javascript:void(0)">Mable</a></li>
                                            <li><a href="javascript:void(0)">Mobo</a></li>
                                            <li><a href="javascript:void(0)">Pippins</a></li>
                                        </ul>
                                    </li>
                                    <li><a href="javascript:void(0)">Dining Tables</a></li>
                                    <li><a href="javascript:void(0)">End Tables</a></li>
                                    <li class="has-sub"><a href="javascript:void(0)">Furniture <i class="ion-chevron-right"></i></a>
                                        <ul>
                                            <li><a href="javascript:void(0)">Bedroom Furniture</a></li>
                                            <li><a href="javascript:void(0)">Chairs</a></li>
                                            <li><a href="javascript:void(0)">Coffee Tables</a></li>
                                            <li><a href="javascript:void(0)">Console Tables</a></li>
                                            <li><a href="javascript:void(0)">End Tables</a></li>
                                            <li><a href="javascript:void(0)">Living Room Sets</a></li>
                                            <li><a href="javascript:void(0)">Ottomans & Storage Ottomans</a></li>
                                            <li><a href="javascript:void(0)">Sofas & Couches</a></li>
                                            <li><a href="javascript:void(0)">TV Stands</a></li>
                                        </ul>
                                    </li>
                                    <li class="has-sub"><a href="javascript:void(0)">Home Decor <i class="ion-chevron-right"></i></a>
                                        <ul>
                                            <li><a href="javascript:void(0)">Candleholders</a></li>
                                            <li><a href="javascript:void(0)">Candles</a></li>
                                            <li><a href="javascript:void(0)">Clocks</a></li>
                                            <li><a href="javascript:void(0)">Floor Mirrors</a></li>
                                            <li><a href="javascript:void(0)">Lamps & Lighting</a></li>
                                            <li><a href="javascript:void(0)">Rugs</a></li>
                                            <li><a href="javascript:void(0)">Runners</a></li>
                                            <li><a href="javascript:void(0)">Wall Decor</a></li>
                                            <li><a href="javascript:void(0)">Wall Mirrors</a></li>
                                        </ul>
                                    </li>
                                    <li class="has-sub"><a href="javascript:void(0)">Kitchen & Dining <i class="ion-chevron-right"></i></a>
                                        <ul>
                                            <li><a href="javascript:void(0)">Bowls</a></li>
                                            <li><a href="javascript:void(0)">Cups, Mugs & Saucers</a></li>
                                            <li><a href="javascript:void(0)">Cutting Boards</a></li>
                                            <li><a href="javascript:void(0)">Dinnerware Sets</a></li>
                                            <li><a href="javascript:void(0)">Flatware</a></li>
                                            <li><a href="javascript:void(0)">Glassware & Drinkware</a></li>
                                            <li><a href="javascript:void(0)">Knife Sets</a></li>
                                            <li><a href="javascript:void(0)">Plates</a></li>
                                            <li><a href="javascript:void(0)">Serveware</a></li>
                                        </ul>
                                    </li>
                                    <li class="has-sub"><a href="javascript:void(0)">Living Room Sets <i class="ion-chevron-right"></i></a>
                                        <ul>
                                            <li><a href="javascript:void(0)">Coffee & side tables</a></li>
                                            <li><a href="javascript:void(0)">Living room lighting</a></li>
                                            <li><a href="javascript:void(0)">Living room storage</a></li>
                                            <li><a href="javascript:void(0)">Living room textiles & rugs</a></li>
                                            <li><a href="javascript:void(0)">Sofas & armchairs</a></li>
                                            <li><a href="javascript:void(0)">TV & media furniture</a></li>
                                        </ul>
                                    </li>
                                    <li><a href="javascript:void(0)">TV Stands</a></li>
                                    <li><a href="javascript:void(0)">Uncategorized</a></li>
                                </ul>
                            </div>
                        </div>
                        <!--产品类别end-->
                        <!--产品颜色start-->
                        <div class="umino-sidebar_categories">
                            <div class="umino-categories_title">
                                <h5>颜色</h5>
                            </div>
                            <ul class="sidebar-checkbox_list">
                                <li>
                                    <a href="javascript:void(0)">Black (1)</a>
                                </li>
                                <li>
                                    <a href="javascript:void(0)">Blue (1)</a>
                                </li>
                                <li>
                                    <a href="javascript:void(0)">Gold (3)</a>
                                </li>
                            </ul>
                        </div>
                        <!--产品颜色end-->

                        <!--产品标签start-->
                        <div class="umino-sidebar_categories">
                            <div class="umino-categories_title umino-tags_title">
                                <h5>产品标签</h5>
                            </div>
                            <ul class="umino-tags_list">
                                <li><a href="javascript:void(0)">Accesories</a></li>
                                <li><a href="javascript:void(0)">Blouse</a></li>
                                <li><a href="javascript:void(0)">Clothes</a></li>
                                <li><a href="javascript:void(0)">Desktop</a></li>
                                <li><a href="javascript:void(0)">Digital</a></li>
                                <li><a href="javascript:void(0)">Fashion</a></li>
                                <li><a href="javascript:void(0)">Handbag</a></li>
                                <li><a href="javascript:void(0)">Laptop</a></li>
                                <li><a href="javascript:void(0)">Men</a></li>
                                <li><a href="javascript:void(0)">Women</a></li>
                            </ul>
                        </div>
                        <!--产品标签end-->

                        <!--产品比较start-->
                        <div class="umino-sidebar_categories umino-list-product_area compare-list-product_area">
                            <div class="umino-categories_title">
                                <h5>比较</h5>
                            </div>
                            <div class="list-product_slider slider-navigation_style-3">
                                <div class="slide-item">
                                    <div class="single-product">
                                        <div class="product-img">
                                            <a href="shop-left-sidebar.html">
                                                <img src="<%=basePath%>assets/images/product/medium-size/1-1.jpg" alt="Umino's Product Image">
                                            </a>
                                        </div>
                                        <div class="product-content">
                                            <h6 class="product-name">
                                                <a href="single-product.html">Aliquam furniture</a>
                                            </h6>
                                            <div class="price-box">
                                                <span class="old-price">$85.00</span>
                                                <span class="new-price">$79.00</span>
                                            </div>
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
                                <div class="slide-item">
                                    <div class="single-product">
                                        <div class="product-img">
                                            <a href="shop-left-sidebar.html">
                                                <img src="<%=basePath%>assets/images/product/medium-size/3-1.jpg" alt="Umino's Product Image">
                                            </a>
                                        </div>
                                        <div class="product-content">
                                            <h6 class="product-name">
                                                <a href="single-product.html">Kaoreet lobortis</a>
                                            </h6>
                                            <div class="price-box">
                                                <span class="new-price">$95.00</span>
                                            </div>
                                            <div class="rating-box">
                                                <ul>
                                                    <li><i class="ion-ios-star"></i></li>
                                                    <li><i class="ion-ios-star"></i></li>
                                                    <li><i class="ion-ios-star"></i></li>
                                                    <li><i class="ion-ios-star"></i></li>
                                                    <li><i class="ion-ios-star"></i></li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="slide-item">
                                    <div class="single-product">
                                        <div class="product-img">
                                            <a href="shop-left-sidebar.html">
                                                <img src="<%=basePath%>assets/images/product/medium-size/7-1.jpg" alt="Umino's Product Image">
                                            </a>
                                        </div>
                                        <div class="product-content">
                                            <h6 class="product-name">
                                                <a href="single-product.html">Vulputate justo</a>
                                            </h6>
                                            <div class="price-box">
                                                <span class="new-price">$90.00</span>
                                            </div>
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
                                <div class="slide-item">
                                    <div class="single-product">
                                        <div class="product-img">
                                            <a href="shop-left-sidebar.html">
                                                <img src="<%=basePath%>assets/images/product/small-size/5.jpg" alt="Umino's Product Image">
                                            </a>
                                        </div>
                                        <div class="product-content">
                                            <h6 class="product-name">
                                                <a href="single-product.html">Dignissim venenatis</a>
                                            </h6>
                                            <div class="price-box">
                                                <span class="new-price">$80.00</span>
                                            </div>
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
                                <div class="slide-item">
                                    <div class="single-product">
                                        <div class="product-img">
                                            <a href="shop-left-sidebar.html">
                                                <img src="<%=basePath%>assets/images/product/small-size/8.jpg" alt="Umino's Product Image">
                                            </a>
                                        </div>
                                        <div class="product-content">
                                            <h6 class="product-name">
                                                <a href="single-product.html">Aliquam lobortis</a>
                                            </h6>
                                            <div class="price-box">
                                                <span class="new-price">$145.00</span>
                                            </div>
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
                                <div class="slide-item">
                                    <div class="single-product">
                                        <div class="product-img">
                                            <a href="shop-left-sidebar.html">
                                                <img src="<%=basePath%>assets/images/product/small-size/6.jpg" alt="Umino's Product Image">
                                            </a>
                                        </div>
                                        <div class="product-content">
                                            <h6 class="product-name">
                                                <a href="single-product.html">Tincidunt malesuada</a>
                                            </h6>
                                            <div class="price-box">
                                                <span class="old-price">$80.00</span>
                                                <span class="new-price">$50.00</span>
                                            </div>
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
                                <div class="slide-item">
                                    <div class="single-product">
                                        <div class="product-img">
                                            <a href="shop-left-sidebar.html">
                                                <img src="<%=basePath%>assets/images/product/small-size/4.jpg" alt="Umino's Product Image">
                                            </a>
                                        </div>
                                        <div class="product-content">
                                            <h6 class="product-name">
                                                <a href="single-product.html">Auctor gravida enim</a>
                                            </h6>
                                            <div class="price-box">
                                                <span class="new-price">$85.00</span>
                                                <span class="new-price">$60.00</span>
                                            </div>
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
                                <div class="slide-item">
                                    <div class="single-product">
                                        <div class="product-img">
                                            <a href="shop-left-sidebar.html">
                                                <img src="<%=basePath%>assets/images/product/small-size/5.jpg" alt="Umino's Product Image">
                                            </a>
                                        </div>
                                        <div class="product-content">
                                            <h6 class="product-name">
                                                <a href="single-product.html">Dignissim venenatis</a>
                                            </h6>
                                            <div class="price-box">
                                                <span class="new-price">$80.00</span>
                                            </div>
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
                        </div>
                        <!--产品比较end-->

                        <!--产品左边海报start-->
                        <!--<div class="umino-sidebar_categories umino-banner_area sidebar-banner_area">-->
                            <!--<div class="banner-item img-hover_effect">-->
                                <!--<div class="banner-img">-->
                                    <!--<a href="javascript:void(0)">-->
                                        <!--<img class="img-full" src="<%=basePath%>assets/images/banner/3-1.jpg" alt="Umino's Banner">-->
                                    <!--</a>-->
                                <!--</div>-->
                                <!--<div class="banner-content banner-content-2">-->
                                    <!--<span>Home Decor</span>-->
                                    <!--<h4>The Best Clock</h4>-->
                                    <!--<h3>Creative Furniture</h3>-->
                                    <!--<div class="umino-btn-ps_center">-->
                                        <!--<a class="umino-btn umino-btn_dark umino-btn_yellow" href="shop-left-sidebar.html">Shop Now</a>-->
                                    <!--</div>-->
                                <!--</div>-->
                            <!--</div>-->
                        <!--</div>-->
                        <!--&lt;!&ndash;产品左边海报end&ndash;&gt;-->

                    </div>
                </div>


                <div class="col-lg-9 order-1 order-lg-2">
                    <!--&lt;!&ndash;产品中间海报start&ndash;&gt;-->
                    <div class="shop-banner_area">
                        <div class="banner-item img-hover_effect">
                            <a href="javascript:void(0)">
                                <img src="<%=basePath%>assets/images/shop/1.jpg" alt="Umino's Shop Banner">
                            </a>
                        </div>
                    </div>
                    <!--&lt;!&ndash;产品中间海报end&ndash;&gt;&ndash;&gt;-->

                    <div class="shop-toolbar">
                        <div class="product-view-mode">
                            <a class="active grid-3" data-target="gridview-3" data-toggle="tooltip" data-placement="top" title="Grid View"><i class="fa fa-th"></i></a>
                            <a class="list" data-target="listview" data-toggle="tooltip" data-placement="top" title="List View"><i class="fa fa-th-list"></i></a>
                        </div>

                        <div class="product-page_count">
                            <p>Showing 1–9 of 40 results)</p>
                        </div>

                        <!--产品排序下拉框start-->
                        <div class="product-item-selection_area">
                            <div class="product-short">
                                <label class="select-label">Short By:</label>
                                <select class="nice-select">
                                    <option value="1">默认排序</option>
                                    <option value="2">Name, A to Z</option>
                                    <option value="3">Name, Z to A</option>
                                    <option value="4">Price, low to high</option>
                                    <option value="5">Price, high to low</option>
                                    <option value="5">Rating (Highest)</option>
                                    <option value="5">Rating (Lowest)</option>
                                    <option value="5">Model (A - Z)</option>
                                    <option value="5">Model (Z - A)</option>
                                </select>
                            </div>
                        </div>
                        <!--产品排序下拉框end-->

                    </div>

                    <div class="shop-product-wrap grid gridview-3 row">

                        <!--一件商品start-->
                        <c:forEach var="item" items="${goodsExtendList}">

                    <div class="col-lg-4 col-md-4 col-sm-6">

                            <div class="slide-item">

                                <div class="single-product">
                                    <!--图片-->
                                    <div class="product-img">
                                        <a href="<%=basePath%>goods/goodsId/${item.goods.id}">
                                            <img class="primary-img" width="350px" height="270px" src="<%=basePath%>upload/${item.images[0].imgUrl}" alt="Umino's Product Image">
                                        </a>
                                        <div class="add-actions">
                                            <ul>
                                                <li><a href="cart.html" data-toggle="tooltip" data-placement="top" title="Add To cart"><i
                                                        class="ion-bag"></i></a>
                                                </li>
                                                <li><a href="#" data-toggle="tooltip" data-placement="top" title="Add To Wishlist"><i
                                                        class="ion-ios-heart-outline"></i></a>
                                                </li>
                                                <li><a href="compare.html" data-toggle="tooltip" data-placement="top" title="Add To Cart"><i
                                                        class="fa fa-chart-bar"></i></a>
                                                </li>
                                                <li class="quick-view-btn" data-toggle="modal" data-target="#exampleModalCenter"><a href="javascript:void(0)" data-toggle="tooltip" data-placement="top" title="Quick View"><i
                                                        class="ion-ios-search"></i></a></li>
                                            </ul>
                                        </div>
                                    </div>
                                    <!--商品信息start-->
                                    <div class="product-content">

                                        <div class="product-desc_info">
                                            <div class="price-box">
                                                <span class="new-price">￥<c:out value="${item.goods.price}"></c:out></span>
                                                <span class="old-price">￥<c:out value="${item.goods.realPrice}"></c:out></span>
                                            </div>
                                            <h6 class="product-name"><a href="<%=basePath%>goods/goodsId/${item.goods.id}"><c:out value="${item.goods.name}"></c:out></a>
                                            </h6>
                                            <!--卖家信息头像and昵称START-->
                                            <div class="rating-box">
                                                <ul>
                                                    <li ><img src="<%=basePath%>assets/images/touxiang/头像3.png" style="width: 17px;height:17px;"></li>
                                                    <li><span><strong>Jackson</strong></span></li>
                                                </ul>
                                            </div>
                                            <!--卖家信息头像and昵称END-->
                                        </div>
                                    </div>
                                    <!--商品信息end-->

                                </div>


                            </div>




                            <div class="list-slide_item">
                                <div class="single-product">
                                    <div class="product-img">
                                        <a href="single-product.html">
                                            <img src="<%=basePath%>assets/images/product/medium-size/1-2.jpg" alt="Umino's Product Image">
                                        </a>
                                    </div>
                                    <div class="umino-product-content">
                                        <div class="product-desc_info">
                                            <div class="price-box">
                                                <span class="new-price">$95.00</span>
                                                <span class="old-price">$100.00</span>
                                            </div>
                                            <h6 class="product-name"><a href="single-product.html">Aliquet auctor semali</a></h6>
                                            <!--卖家信息头像and昵称START-->
                                            <div class="rating-box">
                                                <ul>
                                                    <li ><img src="<%=basePath%>assets/images/touxiang/头像3.png" style="width: 17px;height:17px;"></li>
                                                    <li><span><strong>Jackson</strong></span></li>
                                                </ul>
                                            </div>
                                            <!--卖家信息头像and昵称END-->
                                            <div class="product-short_desc">
                                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco,Proin lectus ipsum, gravida et mattis vulputate, tristique ut lectus</p>
                                            </div>
                                        </div>
                                        <div class="add-actions">
                                            <ul>
                                                <li><a href="cart.html" data-toggle="tooltip" data-placement="top" title="Add To cart"><i
                                                        class="ion-bag"></i></a>
                                                </li>
                                                <li><a href="#" data-toggle="tooltip" data-placement="top" title="Add To Wishlist"><i
                                                        class="ion-ios-heart-outline"></i></a>
                                                </li>
                                                <li><a href="compare.html" data-toggle="tooltip" data-placement="top" title="Add To Cart"><i
                                                        class="fa fa-chart-bar"></i></a>
                                                </li>
                                                <li class="quick-view-btn" data-toggle="modal" data-target="#exampleModalCenter"><a href="javascript:void(0)" data-toggle="tooltip" data-placement="top" title="Quick View"><i class="ion-ios-search"></i></a></li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        </c:forEach>
                        <!--一件商品END-->

                        <%--<div class="col-lg-4 col-md-4 col-sm-6">--%>
                            <%--<div class="slide-item">--%>
                                <%--<div class="single-product">--%>
                                    <%--<div class="product-img">--%>
                                        <%--<a href="single-product.html">--%>
                                            <%--<img class="primary-img" src="<%=basePath%>assets/images/product/medium-size/2-2.jpg" alt="Umino's Product Image">--%>
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
                                                <%--<li class="quick-view-btn" data-toggle="modal" data-target="#exampleModalCenter"><a href="javascript:void(0)" data-toggle="tooltip" data-placement="top" title="Quick View"><i--%>
                                                        <%--class="ion-ios-search"></i></a></li>--%>
                                            <%--</ul>--%>
                                        <%--</div>--%>
                                    <%--</div>--%>
                                    <%--<div class="product-content">--%>
                                        <%--<div class="product-desc_info">--%>
                                            <%--<div class="price-box">--%>
                                                <%--<span class="new-price">$70.00</span>--%>
                                                <%--<span class="old-price">$80.00</span>--%>
                                            <%--</div>--%>
                                            <%--<h6 class="product-name"><a href="single-product.html">Accumsan Mauris Ullaat</a>--%>
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
                            <%--<div class="list-slide_item">--%>
                                <%--<div class="single-product">--%>
                                    <%--<div class="product-img">--%>
                                        <%--<a href="single-product.html">--%>
                                            <%--<img src="<%=basePath%>assets/images/product/medium-size/2-2.jpg" alt="Umino's Product Image">--%>
                                        <%--</a>--%>
                                    <%--</div>--%>
                                    <%--<div class="umino-product-content">--%>
                                        <%--<div class="product-desc_info">--%>
                                            <%--<div class="price-box">--%>
                                                <%--<span class="old-price">$80.00</span>--%>
                                                <%--<span class="new-price">$70.00</span>--%>
                                            <%--</div>--%>
                                            <%--<span class="new-price">$70.00</span>--%>
                                            <%--<h6 class="product-name"><a href="single-product.html">Accumsan Mauris Ullaat</a></h6>--%>
                                            <%--<div class="rating-box">--%>
                                                <%--<ul>--%>
                                                    <%--<li><i class="ion-ios-star"></i></li>--%>
                                                    <%--<li><i class="ion-ios-star"></i></li>--%>
                                                    <%--<li><i class="ion-ios-star"></i></li>--%>
                                                    <%--<li><i class="ion-ios-star"></i></li>--%>
                                                    <%--<li class="silver-color"><i class="ion-ios-star-outline"></i></li>--%>
                                                <%--</ul>--%>
                                            <%--</div>--%>
                                            <%--<div class="product-short_desc">--%>
                                                <%--<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco,Proin lectus ipsum, gravida et mattis vulputate, tristique ut lectus</p>--%>
                                            <%--</div>--%>
                                        <%--</div>--%>
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
                        <%--<div class="col-lg-4 col-md-4 col-sm-6">--%>
                            <%--<div class="slide-item">--%>
                                <%--<div class="single-product">--%>
                                    <%--<div class="product-img">--%>
                                        <%--<a href="single-product.html">--%>
                                            <%--<img class="primary-img" src="<%=basePath%>assets/images/product/medium-size/3-2.jpg" alt="Umino's Product Image">--%>
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
                                                <%--<li class="quick-view-btn" data-toggle="modal" data-target="#exampleModalCenter"><a href="javascript:void(0)" data-toggle="tooltip" data-placement="top" title="Quick View"><i--%>
                                                        <%--class="ion-ios-search"></i></a></li>--%>
                                            <%--</ul>--%>
                                        <%--</div>--%>
                                    <%--</div>--%>
                                    <%--<div class="product-content">--%>
                                        <%--<div class="product-desc_info">--%>
                                            <%--<div class="price-box">--%>
                                                <%--<span class="new-price">$75.00</span>--%>
                                                <%--<span class="old-price">$85.00</span>--%>
                                            <%--</div>--%>
                                            <%--<h6 class="product-name"><a href="single-product.html">Aliquam Sedjusto Atluct</a>--%>
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
                            <%--<div class="list-slide_item">--%>
                                <%--<div class="single-product">--%>
                                    <%--<div class="product-img">--%>
                                        <%--<a href="single-product.html">--%>
                                            <%--<img src="<%=basePath%>assets/images/product/medium-size/3-2.jpg" alt="Umino's Product Image">--%>
                                        <%--</a>--%>
                                    <%--</div>--%>
                                    <%--<div class="umino-product-content">--%>
                                        <%--<div class="product-desc_info">--%>
                                            <%--<div class="price-box">--%>
                                                <%--<span class="new-price">$75.00</span>--%>
                                                <%--<span class="old-price">$85.00</span>--%>
                                            <%--</div>--%>
                                            <%--<h6 class="product-name"><a href="single-product.html">Aliquam Sedjusto Atluct</a></h6>--%>
                                            <%--<div class="rating-box">--%>
                                                <%--<ul>--%>
                                                    <%--<li><i class="ion-ios-star"></i></li>--%>
                                                    <%--<li><i class="ion-ios-star"></i></li>--%>
                                                    <%--<li><i class="ion-ios-star"></i></li>--%>
                                                    <%--<li><i class="ion-ios-star"></i></li>--%>
                                                    <%--<li class="silver-color"><i class="ion-ios-star-outline"></i></li>--%>
                                                <%--</ul>--%>
                                            <%--</div>--%>
                                            <%--<div class="product-short_desc">--%>
                                                <%--<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco,Proin lectus ipsum, gravida et mattis vulputate, tristique ut lectus</p>--%>
                                            <%--</div>--%>
                                        <%--</div>--%>
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
                        <%--<div class="col-lg-4 col-md-4 col-sm-6">--%>
                            <%--<div class="slide-item">--%>
                                <%--<div class="single-product">--%>
                                    <%--<div class="product-img">--%>
                                        <%--<a href="single-product.html">--%>
                                            <%--<img class="primary-img" src="<%=basePath%>assets/images/product/medium-size/4-2.jpg" alt="Umino's Product Image">--%>
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
                                                <%--<li class="quick-view-btn" data-toggle="modal" data-target="#exampleModalCenter"><a href="javascript:void(0)" data-toggle="tooltip" data-placement="top" title="Quick View"><i--%>
                                                        <%--class="ion-ios-search"></i></a></li>--%>
                                            <%--</ul>--%>
                                        <%--</div>--%>
                                    <%--</div>--%>
                                    <%--<div class="product-content">--%>
                                        <%--<div class="product-desc_info">--%>
                                            <%--<div class="price-box">--%>
                                                <%--<span class="new-price">$60.00</span>--%>
                                                <%--<span class="old-price">$85.00</span>--%>
                                            <%--</div>--%>
                                            <%--<h6 class="product-name"><a href="single-product.html">Auctor Gravida Enimuctor</a>--%>
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
                            <%--<div class="list-slide_item">--%>
                                <%--<div class="single-product">--%>
                                    <%--<div class="product-img">--%>
                                        <%--<a href="single-product.html">--%>
                                            <%--<img src="<%=basePath%>assets/images/product/medium-size/4-2.jpg" alt="Umino's Product Image">--%>
                                        <%--</a>--%>
                                    <%--</div>--%>
                                    <%--<div class="umino-product-content">--%>
                                        <%--<div class="product-desc_info">--%>
                                            <%--<div class="price-box">--%>
                                                <%--<span class="new-price">$60.00</span>--%>
                                                <%--<span class="old-price">$85.00</span>--%>
                                            <%--</div>--%>
                                            <%--<h6 class="product-name"><a href="single-product.html">Auctor Gravida Enimuctor</a></h6>--%>
                                            <%--<div class="rating-box">--%>
                                                <%--<ul>--%>
                                                    <%--<li><i class="ion-ios-star"></i></li>--%>
                                                    <%--<li><i class="ion-ios-star"></i></li>--%>
                                                    <%--<li><i class="ion-ios-star"></i></li>--%>
                                                    <%--<li><i class="ion-ios-star"></i></li>--%>
                                                    <%--<li class="silver-color"><i class="ion-ios-star-outline"></i></li>--%>
                                                <%--</ul>--%>
                                            <%--</div>--%>
                                            <%--<div class="product-short_desc">--%>
                                                <%--<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco,Proin lectus ipsum, gravida et mattis vulputate, tristique ut lectus</p>--%>
                                            <%--</div>--%>
                                        <%--</div>--%>
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
                        <%--<div class="col-lg-4 col-md-4 col-sm-6">--%>
                            <%--<div class="slide-item">--%>
                                <%--<div class="single-product">--%>
                                    <%--<div class="product-img">--%>
                                        <%--<a href="single-product.html">--%>
                                            <%--<img class="primary-img" src="<%=basePath%>assets/images/product/medium-size/5-2.jpg" alt="Umino's Product Image">--%>
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
                                                <%--<li class="quick-view-btn" data-toggle="modal" data-target="#exampleModalCenter"><a href="javascript:void(0)" data-toggle="tooltip" data-placement="top" title="Quick View"><i--%>
                                                        <%--class="ion-ios-search"></i></a></li>--%>
                                            <%--</ul>--%>
                                        <%--</div>--%>
                                    <%--</div>--%>
                                    <%--<div class="product-content">--%>
                                        <%--<div class="product-desc_info">--%>
                                            <%--<div class="price-box">--%>
                                                <%--<span class="new-price">$65.00</span>--%>
                                                <%--<span class="old-price">$68.00</span>--%>
                                            <%--</div>--%>
                                            <%--<h6 class="product-name"><a href="single-product.html">Bibenm Lorem Coectetur</a>--%>
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
                            <%--<div class="list-slide_item">--%>
                                <%--<div class="single-product">--%>
                                    <%--<div class="product-img">--%>
                                        <%--<a href="single-product.html">--%>
                                            <%--<img src="<%=basePath%>assets/images/product/medium-size/5-2.jpg" alt="Umino's Product Image">--%>
                                        <%--</a>--%>
                                    <%--</div>--%>
                                    <%--<div class="umino-product-content">--%>
                                        <%--<div class="product-desc_info">--%>
                                            <%--<div class="price-box">--%>
                                                <%--<span class="new-price">$65.00</span>--%>
                                                <%--<span class="old-price">$68.00</span>--%>
                                            <%--</div>--%>
                                            <%--<h6 class="product-name"><a href="single-product.html">Bibenm Lorem Coectetur</a></h6>--%>
                                            <%--<div class="rating-box">--%>
                                                <%--<ul>--%>
                                                    <%--<li><i class="ion-ios-star"></i></li>--%>
                                                    <%--<li><i class="ion-ios-star"></i></li>--%>
                                                    <%--<li><i class="ion-ios-star"></i></li>--%>
                                                    <%--<li><i class="ion-ios-star"></i></li>--%>
                                                    <%--<li class="silver-color"><i class="ion-ios-star-outline"></i></li>--%>
                                                <%--</ul>--%>
                                            <%--</div>--%>
                                            <%--<div class="product-short_desc">--%>
                                                <%--<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco,Proin lectus ipsum, gravida et mattis vulputate, tristique ut lectus</p>--%>
                                            <%--</div>--%>
                                        <%--</div>--%>
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
                        <%--<div class="col-lg-4 col-md-4 col-sm-6">--%>
                            <%--<div class="slide-item">--%>
                                <%--<div class="single-product">--%>
                                    <%--<div class="product-img">--%>
                                        <%--<a href="single-product.html">--%>
                                            <%--<img class="primary-img" src="<%=basePath%>assets/images/product/medium-size/6-2.jpg" alt="Umino's Product Image">--%>
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
                                                <%--<li class="quick-view-btn" data-toggle="modal" data-target="#exampleModalCenter"><a href="javascript:void(0)" data-toggle="tooltip" data-placement="top" title="Quick View"><i--%>
                                                        <%--class="ion-ios-search"></i></a></li>--%>
                                            <%--</ul>--%>
                                        <%--</div>--%>
                                    <%--</div>--%>
                                    <%--<div class="product-content">--%>
                                        <%--<div class="product-desc_info">--%>
                                            <%--<div class="price-box">--%>
                                                <%--<span class="new-price">$115.00</span>--%>
                                                <%--<span class="old-price">$120.00</span>--%>
                                            <%--</div>--%>
                                            <%--<h6 class="product-name"><a href="single-product.html">Condim Entumpos Uereondi</a>--%>
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
                            <%--<div class="list-slide_item">--%>
                                <%--<div class="single-product">--%>
                                    <%--<div class="product-img">--%>
                                        <%--<a href="single-product.html">--%>
                                            <%--<img src="<%=basePath%>assets/images/product/medium-size/6-2.jpg" alt="Umino's Product Image">--%>
                                        <%--</a>--%>
                                    <%--</div>--%>
                                    <%--<div class="umino-product-content">--%>
                                        <%--<div class="product-desc_info">--%>
                                            <%--<div class="price-box">--%>
                                                <%--<span class="new-price">$115.00</span>--%>
                                                <%--<span class="old-price">$120.00</span>--%>
                                            <%--</div>--%>
                                            <%--<h6 class="product-name"><a href="single-product.html">Condim Entumpos Uereondi</a></h6>--%>
                                            <%--<div class="rating-box">--%>
                                                <%--<ul>--%>
                                                    <%--<li><i class="ion-ios-star"></i></li>--%>
                                                    <%--<li><i class="ion-ios-star"></i></li>--%>
                                                    <%--<li><i class="ion-ios-star"></i></li>--%>
                                                    <%--<li><i class="ion-ios-star"></i></li>--%>
                                                    <%--<li class="silver-color"><i class="ion-ios-star-outline"></i></li>--%>
                                                <%--</ul>--%>
                                            <%--</div>--%>
                                            <%--<div class="product-short_desc">--%>
                                                <%--<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco,Proin lectus ipsum, gravida et mattis vulputate, tristique ut lectus</p>--%>
                                            <%--</div>--%>
                                        <%--</div>--%>
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
                        <%--<div class="col-lg-4 col-md-4 col-sm-6">--%>
                            <%--<div class="slide-item">--%>
                                <%--<div class="single-product">--%>
                                    <%--<div class="product-img">--%>
                                        <%--<a href="single-product.html">--%>
                                            <%--<img class="primary-img" src="<%=basePath%>assets/images/product/medium-size/7-2.jpg" alt="Umino's Product Image">--%>
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
                                                <%--<li class="quick-view-btn" data-toggle="modal" data-target="#exampleModalCenter"><a href="javascript:void(0)" data-toggle="tooltip" data-placement="top" title="Quick View"><i--%>
                                                        <%--class="ion-ios-search"></i></a></li>--%>
                                            <%--</ul>--%>
                                        <%--</div>--%>
                                    <%--</div>--%>
                                    <%--<div class="product-content">--%>
                                        <%--<div class="product-desc_info">--%>
                                            <%--<div class="price-box">--%>
                                                <%--<span class="new-price">$45.00</span>--%>
                                                <%--<span class="old-price">$60.00</span>--%>
                                            <%--</div>--%>
                                            <%--<h6 class="product-name"><a href="single-product.html">Condime Eondim Furnitur</a>--%>
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
                            <%--<div class="list-slide_item">--%>
                                <%--<div class="single-product">--%>
                                    <%--<div class="product-img">--%>
                                        <%--<a href="single-product.html">--%>
                                            <%--<img src="<%=basePath%>assets/images/product/medium-size/7-2.jpg" alt="Umino's Product Image">--%>
                                        <%--</a>--%>
                                    <%--</div>--%>
                                    <%--<div class="umino-product-content">--%>
                                        <%--<div class="product-desc_info">--%>
                                            <%--<div class="price-box">--%>
                                                <%--<span class="new-price">$45.00</span>--%>
                                                <%--<span class="old-price">$60.00</span>--%>
                                            <%--</div>--%>
                                            <%--<h6 class="product-name"><a href="single-product.html">Condime Eondim Furnitur</a></h6>--%>
                                            <%--<div class="rating-box">--%>
                                                <%--<ul>--%>
                                                    <%--<li><i class="ion-ios-star"></i></li>--%>
                                                    <%--<li><i class="ion-ios-star"></i></li>--%>
                                                    <%--<li><i class="ion-ios-star"></i></li>--%>
                                                    <%--<li><i class="ion-ios-star"></i></li>--%>
                                                    <%--<li class="silver-color"><i class="ion-ios-star-outline"></i></li>--%>
                                                <%--</ul>--%>
                                            <%--</div>--%>
                                            <%--<div class="product-short_desc">--%>
                                                <%--<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco,Proin lectus ipsum, gravida et mattis vulputate, tristique ut lectus</p>--%>
                                            <%--</div>--%>
                                        <%--</div>--%>
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
                        <%--<div class="col-lg-4 col-md-4 col-sm-6">--%>
                            <%--<div class="slide-item">--%>
                                <%--<div class="single-product">--%>
                                    <%--<div class="product-img">--%>
                                        <%--<a href="single-product.html">--%>
                                            <%--<img class="primary-img" src="<%=basePath%>assets/images/product/medium-size/8-2.jpg" alt="Umino's Product Image">--%>
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
                                                <%--<li class="quick-view-btn" data-toggle="modal" data-target="#exampleModalCenter"><a href="javascript:void(0)" data-toggle="tooltip" data-placement="top" title="Quick View"><i--%>
                                                        <%--class="ion-ios-search"></i></a></li>--%>
                                            <%--</ul>--%>
                                        <%--</div>--%>
                                    <%--</div>--%>
                                    <%--<div class="product-content">--%>
                                        <%--<div class="product-desc_info">--%>
                                            <%--<div class="price-box">--%>
                                                <%--<span class="new-price">$35.00</span>--%>
                                                <%--<span class="old-price">$50.00</span>--%>
                                            <%--</div>--%>
                                            <%--<h6 class="product-name"><a href="single-product.html">Convallis Quam Siton</a>--%>
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
                            <%--<div class="list-slide_item">--%>
                                <%--<div class="single-product">--%>
                                    <%--<div class="product-img">--%>
                                        <%--<a href="single-product.html">--%>
                                            <%--<img src="<%=basePath%>assets/images/product/medium-size/1-2.jpg" alt="Umino's Product Image">--%>
                                        <%--</a>--%>
                                    <%--</div>--%>
                                    <%--<div class="umino-product-content">--%>
                                        <%--<div class="product-desc_info">--%>
                                            <%--<div class="price-box">--%>
                                                <%--<span class="new-price">$35.00</span>--%>
                                                <%--<span class="old-price">$50.00</span>--%>
                                            <%--</div>--%>
                                            <%--<h6 class="product-name"><a href="single-product.html">Convallis Quam Siton</a></h6>--%>
                                            <%--<div class="rating-box">--%>
                                                <%--<ul>--%>
                                                    <%--<li><i class="ion-ios-star"></i></li>--%>
                                                    <%--<li><i class="ion-ios-star"></i></li>--%>
                                                    <%--<li><i class="ion-ios-star"></i></li>--%>
                                                    <%--<li><i class="ion-ios-star"></i></li>--%>
                                                    <%--<li class="silver-color"><i class="ion-ios-star-outline"></i></li>--%>
                                                <%--</ul>--%>
                                            <%--</div>--%>
                                            <%--<div class="product-short_desc">--%>
                                                <%--<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco,Proin lectus ipsum, gravida et mattis vulputate, tristique ut lectus</p>--%>
                                            <%--</div>--%>
                                        <%--</div>--%>
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
                        <%--<div class="col-lg-4 col-md-4 col-sm-6">--%>
                            <%--<div class="slide-item">--%>
                                <%--<div class="single-product">--%>
                                    <%--<div class="product-img">--%>
                                        <%--<a href="single-product.html">--%>
                                            <%--<img class="primary-img" src="<%=basePath%>assets/images/product/medium-size/7-1.jpg" alt="Umino's Product Image">--%>
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
                                                <%--<li class="quick-view-btn" data-toggle="modal" data-target="#exampleModalCenter"><a href="javascript:void(0)" data-toggle="tooltip" data-placement="top" title="Quick View"><i--%>
                                                        <%--class="ion-ios-search"></i></a></li>--%>
                                            <%--</ul>--%>
                                        <%--</div>--%>
                                    <%--</div>--%>
                                    <%--<div class="product-content">--%>
                                        <%--<div class="product-desc_info">--%>
                                            <%--<div class="price-box">--%>
                                                <%--<span class="new-price">$70.00</span>--%>
                                                <%--<span class="old-price">$80.00</span>--%>
                                            <%--</div>--%>
                                            <%--<h6 class="product-name"><a href="single-product.html">Aliquam Sedjusto Atluct</a>--%>
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
                            <%--<div class="list-slide_item">--%>
                                <%--<div class="single-product">--%>
                                    <%--<div class="product-img">--%>
                                        <%--<a href="single-product.html">--%>
                                            <%--<img src="<%=basePath%>assets/images/product/medium-size/7-1.jpg" alt="Umino's Product Image">--%>
                                        <%--</a>--%>
                                    <%--</div>--%>
                                    <%--<div class="umino-product-content">--%>
                                        <%--<div class="product-desc_info">--%>
                                            <%--<div class="price-box">--%>
                                                <%--<span class="new-price">$70.00</span>--%>
                                                <%--<span class="old-price">$80.00</span>--%>
                                            <%--</div>--%>
                                            <%--<h6 class="product-name"><a href="single-product.html">Aliquam Sedjusto Atluct</a></h6>--%>
                                            <%--<div class="rating-box">--%>
                                                <%--<ul>--%>
                                                    <%--<li><i class="ion-ios-star"></i></li>--%>
                                                    <%--<li><i class="ion-ios-star"></i></li>--%>
                                                    <%--<li><i class="ion-ios-star"></i></li>--%>
                                                    <%--<li><i class="ion-ios-star"></i></li>--%>
                                                    <%--<li class="silver-color"><i class="ion-ios-star-outline"></i></li>--%>
                                                <%--</ul>--%>
                                            <%--</div>--%>
                                            <%--<div class="product-short_desc">--%>
                                                <%--<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco,Proin lectus ipsum, gravida et mattis vulputate, tristique ut lectus</p>--%>
                                            <%--</div>--%>
                                        <%--</div>--%>
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
                    </div>

                    <!--分页end-->
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="umino-paginatoin-area">
                                <ul class="umino-pagination-box">
                                    <li class="active"><a href="javascript:void(0)">1</a></li>
                                    <li><a href="javascript:void(0)">2</a></li>
                                    <li><a href="javascript:void(0)">3</a></li>
                                    <li><a href="javascript:void(0)">4</a></li>
                                    <li><a href="javascript:void(0)">5</a></li>
                                    <li><a class="Next" href="javascript:void(0)">Next</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <!--分页end-->
                </div>
            </div>
        </div>
    </div>
    <!-- Umino's Content Wrapper Area End Here -->

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



    <!--商品弹出框-->
    <!-- Begin Umino's Modal Area -->
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
    <!-- Umino's Modal Area End Here -->

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

