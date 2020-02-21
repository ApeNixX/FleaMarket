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
    <title>Single Product</title>
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
                                    <li><a href="<%=basePath%>orders/myOrders">我的账户</a></li>
                                    <li><a href="<%=basePath%>user/allFocus">我的关注</a></li>
                                    <li><a href="<%=basePath%>goods/publishGoods">发布商品</a></li>
                                    <li><a href="<%=basePath%>user/logout">退出登录</a></li>
                                    </c:if>
                                    <c:if test="${empty cur_user}">
                                        <li><a href="#">登录</a></li>
                                        <li><a href="">注册</a></li>

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
                                    <c:if test="${!empty cur_user}">
                                    <li><a href="<%=basePath%>goods/homeGoods">主页</a></li>
                                    <li><a href="single-product.html">单品</a></li>
                                    </c:if>
                                    <c:if test="${empty cur_user}">
                                    <li><a href="<%=basePath%>">主页</a></li>
                                    <li><a href="single-product.html">单品</a></li>
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
                    <li class="active"><a href="<%=basePath%>goods/catelog/${catelog.id}">${catelog.name}</a></li>
                </ul>
            </div>
        </div>
    </div>
    <!-- Umino's Breadcrumb Area End Here -->

    <!-- 商品容器Begin Umino's Single Product Area -->
    <div class="sp-area">
        <div class="container">
            <div class="sp-nav">
                <div class="row">
                    <div class="col-lg-6">
                        <div class="sp-img_area">
                            <div class="zoompro-border">
                                <img class="zoompro"  src="<%=basePath%>upload/${goodsExtend.images[0].imgUrl}"  alt="Umino's Product Image" />
                            </div>
                            <div id="gallery" class="sp-img_slider slider-navigation_style-4">
                                <a class="active" data-image="<%=basePath%>upload/${goodsExtend.images[0].imgUrl}" data-zoom-image="<%=basePath%>upload/${goodsExtend.images[0].imgUrl}">
                                    <img src="<%=basePath%>upload/${goodsExtend.images[0].imgUrl}" alt="Umino's Product Image">
                                </a>
                                <a data-image="<%=basePath%>assets/images/product/large-size/2.jpg" data-zoom-image="<%=basePath%>assets/images/product/large-size/2.jpg">
                                    <img src="<%=basePath%>assets/images/product/small-size/2.jpg" alt="Umino's Product Image">
                                </a>
                                <a data-image="<%=basePath%>assets/images/product/large-size/3.jpg" data-zoom-image="<%=basePath%>assets/images/product/large-size/3.jpg">
                                    <img src="<%=basePath%>assets/images/product/small-size/3.jpg" alt="Umino's Product Image">
                                </a>
                                <a data-image="<%=basePath%>assets/images/product/large-size/4.jpg" data-zoom-image="<%=basePath%>assets/images/product/large-size/4.jpg">
                                    <img src="<%=basePath%>assets/images/product/small-size/4.jpg" alt="Umino's Product Image">
                                </a>
                            </div>
                        </div>
                    </div>
                    <!--商品详情-->
                    <div class="col-lg-6">
                        <div class="sp-content">
                            <div class="sp-heading">
                                <h2><a href="javascript:void(0)">${goodsExtend.goods.name}</a></h2>
                            </div>
                            <div class="price-box">
                                <span class="new-price">￥${goodsExtend.goods.price}</span>
                                <span class="old-price">￥${goodsExtend.goods.realPrice}</span>
                            </div>

                            <div class="rating-box">
                                <ul>
                                    <li><i class="ion-ios-star"></i></li>
                                    <li><i class="ion-ios-star"></i></li>
                                    <li><i class="ion-ios-star"></i></li>
                                    <li class="silver-color"><i class="ion-ios-star-half"></i></li>
                                    <li class="silver-color"><i class="ion-ios-star-outline"></i></li>
                                </ul>
                                <div class="rating-info">
                                    <a href="javascript:void(0)">(1 customer review)</a>
                                </div>
                            </div>

                            <span>发布于 ${goodsExtend.goods.startTime}</span>

                            <!--卖家信息-->
                          <c:if test="${!empty cur_user}">
                            <div class="publisher-info-title">
                                <div class="in-stock"><i class="fa fa-check-circle"></i><span>可讲价   可面交</span></div>

                                <HR />
                                <div>
                                    <div class="base-blue z-depth-1 attr"  style="display:inline-block;">
                                        <img src="<%=basePath%>statics/images/用户.png" style="width:40px; height:40px;"/>
                                    </div>
                                    <div class="value" style="display:inline-block;padding: 1%;"><h6>${seller.username}</h6></div>
                                </div>
                                <div style="margin-top: 5%">
                                    <div class="base-blue z-depth-1 attr" style="display:inline-block;">
                                        <img src="<%=basePath%>statics/images/手机.png"  style="width:40px; height:40px;"/>
                                    </div>
                                    <div class="value" style="display:inline-block;"><h6>${seller.phone}</h6></div>
                                </div>
                                <div style="margin-top: 5%">
                                    <div class="base-blue z-depth-1 attr" style="display:inline-block;">
                                        <img src="<%=basePath%>statics/images/qq.png"  style="width:40px; height:40px;"/>
                                    </div>
                                    <div class="value" style="display:inline-block;">
                                    <c:if test="${seller.qq!=null}">
                                        <h6>${seller.qq}</h6>
                                    </c:if>
                                    <c:if test="${seller.qq==null}">
                                        <h6>该同学没留下QQ</h6>
                                    </c:if>
                                    </div>
                                </div>
                            </div>
                          </c:if>
                          <c:if test="${empty cur_user}">
                            <div class="publisher-info-title">
                                <div class="alert alert-warning"><a href="<%=basePath%>user/login1">登录</a>或<a href="<%=basePath%>user/register1">注册</a>后查看联系信息</div>
                            </div>
                          </c:if>
                            <!--卖家信息end-->

                            <div class="qty-btn_area">
                                <ul><c:if test="${!empty cur_user}">
                                    <li><a class="qty-btn" href="<%=basePath%>user/addFocus/${goodsExtend.goods.id}" data-toggle="tooltip" title="添加收藏"
                                           onClick="return alert('收藏成功！')">
                                        <i class="ion-android-favorite-outline">
                                    </i>添加收藏</a></li>
                                           <c:if test="${cur_user.id!=goodsExtend.goods.userId}">
                                            <li><a class="qty-btn" href="<%=basePath%>goods/buyId/${goodsExtend.goods.id}" data-toggle="tooltip" title="立即购买"><i
                                            class="ion-ios-shuffle-strong"></i>立即购买</a></li>
                                            </c:if>
                                            <c:if test="${cur_user.id==goodsExtend.goods.userId}">
                                                <li><a class="qty-btn" title="不可以购买自己的东西哦~" disabled="disabled" data-toggle="tooltip" ><i
                                                        class="ion-ios-shuffle-strong"></i>立即购买</a></li>
                                            </c:if>
                                </c:if>
                             <c:if test="${empty cur_user}">
                                 <li><a class="qty-btn"  data-toggle="tooltip" title="请先登录">
                                     <i class="ion-android-favorite-outline">
                                     </i>添加收藏</a></li>
                                 <li><a class="qty-btn" title="请先登录" disabled="disabled" data-toggle="tooltip" ><i
                                         class="ion-ios-shuffle-strong"></i>立即购买</a></li>
                             </c:if>
                                </ul>
                            </div>
                            <div class="quantity">
                                <!--<label>Quantity</label>-->
                                <!--<div class="cart-plus-minus">-->
                                <!--<input class="cart-plus-minus-box" value="1" type="text">-->
                                <!--<div class="dec qtybutton"><i class="fa fa-angle-down"></i></div>-->
                                <!--<div class="inc qtybutton"><i class="fa fa-angle-up"></i></div>-->
                                <!--</div>-->
                                <div class="additional-btn_area">
                            <c:if test="${!empty cur_user}">
                                    <a class="additional_btn" href="cart.html">加入购物车</a>
                            </c:if>
                           <c:if test="${empty cur_user}">
                                <a class="additional_btn" title="请先登录" disabled="disabled" data-toggle="tooltip">加入购物车</a>
                           </c:if>
                                </div>
                            </div>
                            <div class="category-list_area">
                                <h6>类型:</h6>
                                <ul class="tags-list">
                                    <li>
                                        <a href="<%=basePath%>goods/catelog/${catelog.id}">${catelog.name}</a>
                                    </li>
                                    <!--<li>-->
                                        <!--<a href="javascript:void(0)">Console Tables,</a>-->
                                    <!--</li>-->
                                    <!--<li>-->
                                        <!--<a href="javascript:void(0)">End Tables,</a>-->
                                    <!--</li>-->
                                    <!--<li>-->
                                        <!--<a href="javascript:void(0)">Living Room Sets,</a>-->
                                    <!--</li>-->

                                </ul>
                            </div>
                            <div class="category-list_area tag-list_area">
                                <h6>标签:</h6>
                                <ul class="tags-list">
                                    <li>
                                        <a href="javascript:void(0)">Men</a>
                                    </li>
                                </ul>
                            </div>
                            <div class="umino-social_link">
                                <h6>分享商品:</h6>
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
                    <!--商品详情end-->
                </div>
            </div>
        </div>
    </div>
    <!-- 商品容器Umino's Single Product Area End Here -->

    <!-- Begin Umino's Single Product Tab Area -->
    <div class="sp-tab_area">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="sp-product-tab_nav">
                        <div class="product-tab">
                            <ul class="nav product-menu">
                                <li><a class="active" data-toggle="tab" href="#description"><span>描述</span></a>
                                </li>
                                <li><a data-toggle="tab" href="#specification"><span>特点</span></a></li>
                                <li><a data-toggle="tab" href="#reviews"><span>留言</span></a></li>
                            </ul>
                        </div>
                        <div class="tab-content umino-tab_content">
                            <div id="description" class="tab-pane active show" role="tabpanel">
                                <div class="product-description">
                                    <p class="short-desc">
                                        ${goodsExtend.goods.describle}
                                    </p>

                                </div>
                            </div>
                            <div id="specification" class="tab-pane" role="tabpanel">
                                <table class="table table-bordered specification-inner_stuff">
                                    <tbody>
                                    <tr>
                                        <td colspan="2"><strong>Memory</strong></td>
                                    </tr>
                                    </tbody>
                                    <tbody>
                                    <tr>
                                        <td>test 1</td>
                                        <td>8gb</td>
                                    </tr>
                                    </tbody>
                                    <tbody>
                                    <tr>
                                        <td colspan="2"><strong>Processor</strong></td>
                                    </tr>
                                    </tbody>
                                    <tbody>
                                    <tr>
                                        <td>No. of Cores</td>
                                        <td>1</td>
                                    </tr>
                                    </tbody>
                                </table>
                            </div>
                            <div id="reviews" class="tab-pane" role="tabpanel">
                                <div class="tab-pane active" id="tab-review">
                                    <form class="form-horizontal" id="addCommentForm">
                                        <h2>写下留言</h2>
                                        <div class="form-group required second-child">
                                            <div class="col-sm-12 p-0">
                                                <input id="goodsId" name="goods.id" value="${goodsExtend.goods.id}" type="hidden"/>

                                                <!--<label class="control-label">Share your opinion</label>-->
                                                <textarea class="review-textarea" name="content" id="con_message"></textarea>
                                                <div class="help-block"><span class="text-danger">Note:</span> HTML is not
                                                    translated!</div>
                                            </div>
                                        </div>
                                        <div class="form-group last-child required">
                                            <div class="col-sm-12 p-0">
                                                <div class="your-opinion">
                                                    <label>Your Rating</label>
                                                    <span>
                                                        <select class="star-rating">
                                                            <option value="1">1</option>
                                                            <option value="2">2</option>
                                                            <option value="3">3</option>
                                                            <option value="4">4</option>
                                                            <option value="5">5</option>
                                                        </select>
                                                    </span>
                                                </div>
                                            </div>
                                            <div class="umino-btn-ps_right">
                                              <c:if test="${!empty cur_user}">
                                                <a href="javascript:void(0)" class="umino-btn umino-btn_dark" onclick="addComments()">提交</a>
                                              </c:if>
                                              <c:if test="${empty cur_user}">
                                                  <a  class="umino-btn " data-toggle="tooltip"  title="您需要先登录哦！" disabled="disabled">提交</a>
                                              </c:if>
                                                  </div>
                                        </div>

                                        <div id="review" style="margin-top: 30px;">
                                            <table class="table table-striped table-bordered">
                                        <c:forEach var="item" items="${CommentExtend.comments}" >
                                                <tbody>
                                                <tr>
                                                    <td style="width: 50%;"><strong>${item.user.username}</strong></td>
                                                    <td class="text-right">${item.createAt}</td>
                                                </tr>
                                                <tr>
                                                    <td colspan="2">
                                                        <p>${item.content}</p>
                                                        <div class="rating-box">
                                                            <ul>
                                                                <li><i class="ion-ios-star"></i></li>
                                                                <li><i class="ion-ios-star"></i></li>
                                                                <li><i class="ion-ios-star"></i></li>
                                                                <li class="silver-color"><i class="ion-ios-star-half"></i></li>
                                                                <li class="silver-color"><i class="ion-ios-star-outline"></i></li>
                                                            </ul>
                                                        </div>
                                                    </td>
                                                </tr>
                                                </tbody>
                                        </c:forEach>
                                            </table>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Umino's Single Product Tab Area End Here -->


    <!-- 相似商品 Begin Umino's Product Area Two -->
    <div class="umino-product_area umino-product_area-2">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="umino-section_title">
                        <h3>相似商品</h3>
                    </div>
                </div>
                <div class="col-lg-12">
                    <div class="umino-product_slider-2 slider-navigation_style-1">
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
                                            <li class="quick-view-btn" data-toggle="modal" data-target="#exampleModalCenter"><a href="javascript:void(0)" data-toggle="tooltip" data-placement="top" title="Quick View"><i
                                                    class="ion-ios-search"></i></a></li>
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
                                            <li class="quick-view-btn" data-toggle="modal" data-target="#exampleModalCenter"><a href="javascript:void(0)" data-toggle="tooltip" data-placement="top" title="Quick View"><i
                                                    class="ion-ios-search"></i></a></li>
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
                                            <li class="quick-view-btn" data-toggle="modal" data-target="#exampleModalCenter"><a href="javascript:void(0)" data-toggle="tooltip" data-placement="top" title="Quick View"><i
                                                    class="ion-ios-search"></i></a></li>
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
                                            <li class="quick-view-btn" data-toggle="modal" data-target="#exampleModalCenter"><a href="javascript:void(0)" data-toggle="tooltip" data-placement="top" title="Quick View"><i
                                                    class="ion-ios-search"></i></a></li>
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
                                        <img class="primary-img" src="<%=basePath%>assets/images/product/medium-size/7-3.jpg" alt="Umino's Product Image">
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
            </div>
        </div>
    </div>
    <!-- Umino's Product Area Two End Here -->



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
<script type="text/javascript">
    /* 评论 */
    function addComments(){
        $.ajax({
            url:'<%=basePath%>goods/addComments',
            type:'POST',
            data:$('#addCommentForm').serialize(),// 序列化表单值
            dataType:'json',
            /* 	success:function(json){
                    alert(1)
                    alert(json.msg)
                },
                error:function(){
                    alert('请求超时或系统出错!');
                } */
        });
        alert("您已评论成功~")
        window.location.reload();
    }
</script>
</html>

