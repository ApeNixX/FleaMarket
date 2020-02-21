<%--suppress ALL --%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title></title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="<%=basePath%>asset/css/bootstrap.min.css">
    <link rel="stylesheet" href="<%=basePath%>asset/css/main.css">
    <link rel="stylesheet" href="<%=basePath%>asset/css/list.css">
    <link rel="stylesheet" href="<%=basePath%>asset/css/index.css">
</head>
<body>
<!-- nav bar -->
<nav class="navbar navbar-inverse navbar-fixed-top">
    <div class="container-fluid">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar">
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <span class="navbar-brand glyphicon glyphicon-arrow-left" id="toggleSidebar"></span>
            <a class="navbar-brand" href="<%=basePath%>admin/indexs">首页</a>
        </div>
        <div id="navbar" class="navbar-collapse collapse">
            <ul class="nav navbar-nav navbar-right">
                <li><a href="<%=basePath%>admin/info">个人信息</a></li>
                <li><a href="#">设置</a></li>
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true"
                       aria-expanded="false">
                        系统 <span class="caret"></span>
                    </a>
                    <ul class="dropdown-menu dropdown-menu-left">
                        <li><a href="#">帮助</a></li>
                        <li><a href="#">关于</a></li>
                        <li><a href="<%=basePath%>admin/logout">退出</a></li>
                    </ul>
                </li>
            </ul>
            <form class="navbar-form navbar-right">
                <input class="form-control" placeholder="Search...">
            </form>
        </div>
    </div>
</nav>
<!--left bar-->
<div class="container-fluid">
    <div class="row">
        <div class="col-sm-3 col-md-1 sidebar" >
            <div class="nav-sidebar">
                <div class="nav-sidebar-head">
                    <ul class="nav">
                        <li>
                            <a href="#group1" data-toggle="collapse">
                                <img src="<%=basePath%>asset/images/用户.png" width="16px" height="16px">&nbsp;用户管理&nbsp;&nbsp;&nbsp;<span class="glyphicon glyphicon-chevron-right"></span>
                            </a>
                        </li>
                    </ul>
                </div>
                <div id="group1" class="nav-sidebar-body collapse">
                    <ul class="nav">
                        <li><a href="<%=basePath%>admin/userList?pageNum=1">用户列表</a></li>
                    </ul>
                </div>
            </div>
            <div class="nav-sidebar">
                <div class="nav-sidebar-head">
                    <ul class="nav">
                        <li>
                            <a href="#group2" data-toggle="collapse">
                                <span class="glyphicon glyphicon-shopping-cart"></span>&nbsp;商品管理&nbsp;&nbsp;&nbsp;<span class="glyphicon glyphicon-chevron-right"></span>
                            </a>
                        </li>
                    </ul>
                </div>
                <div id="group2" class="nav-sidebar-body collapse">
                    <ul class="nav">
                        <li><a href="<%=basePath%>admin/goodsList?pageNum=1" >商品列表</a></li>
                    </ul>
                </div>
            </div>
            <div class="nav-sidebar">
                <div class="nav-sidebar-head">
                    <ul class="nav">
                        <li>
                            <a href="#group3" data-toggle="collapse">
                                <!--<span class="glyphicon glyphicon-list-alt"></span>订单管理&nbsp;&nbsp;&nbsp;<span class="glyphicon glyphicon-chevron-right"></span>-->
                                <span class="glyphicon glyphicon-usd"></span>&nbsp;订单管理&nbsp;&nbsp;&nbsp;<span class="glyphicon glyphicon-chevron-right"></span>

                            </a>
                        </li>
                    </ul>
                </div>
                <div id="group3" class="nav-sidebar-body collapse">
                    <ul class="nav">
                        <li><a href="<%=basePath%>admin/ordersList?pageNum=1" >订单列表</a></li>
                    </ul>
                </div>
            </div>
            <div class="nav-sidebar">
                <div class="nav-sidebar-head">
                    <ul class="nav">
                        <li>
                            <a href="#group4" data-toggle="collapse">
                                <span class="glyphicon glyphicon-credit-card"></span>&nbsp;钱包管理&nbsp;&nbsp;&nbsp;<span class="glyphicon glyphicon-chevron-right"></span>
                            </a>
                        </li>
                    </ul>
                </div>
                <div id="group4" class="nav-sidebar-body collapse">
                    <ul class="nav">
                        <li><a href="<%=basePath%>admin/purseList?pageNum=1">充值信息</a></li>
                    </ul>
                </div>
            </div>
        </div>
        <!-- main content -->
        <div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main tab-content" id="mainContent">
            <!-- js generate -->
            <!--
            <div id="list" class="tab-pane active fade in">
                <iframe class="main-iframe" src="list.html" width="100%" frameborder="0" scrolling="auto"></iframe>
            </div>
            -->



            <center><h2 style="margin-left: -15%;">跳蚤市场后台管理系统</h2></center>


        </div>
    </div>
</div>


<div class="panel panel-primary" style="width: 30%;margin-left: 15%;margin-top: 2%;">
    <div class="panel-heading">
        <h3 class="panel-title">个人信息</h3>
    </div>
    <div class="panel-body">
        <div class="col-sm-4-offset-2" style="margin-top: 5%;">
            <div class="card">
                <div class="col-sm-4">
                    <div class="text-center">
                        <img alt="image" class="img-circle image-responsive" src="<%=basePath%>statics/images/user_face.jpg">
                        <div class="m-t-xs font-bold"><strong>${admin.userRole }</strong></div>
                    </div>
                </div>
                <div class="col-sm-8" style="margin-left: -6%;">
                    <h3><strong>${admin.userName }</strong></h3>
                    <p><i class="fa fa-map-marker">广东・广州</i></p>
                    <strong>Taobao, Inc. </strong><br>
                    E-mail: xxxetaobao com<br>
                    Weibo:
                    <a href="">http://weibo.com/xxx/</a><br>
                    <abbr title="Phone">Tel: </abbr>${admin.phone}
                    </address>
                </div>
            </div>
        </div>
    </div>
</div>

<script src="<%=basePath%>asset/js/jquery-3.2.1.min.js"></script>
<script src="<%=basePath%>asset/js/bootstrap.min.js"></script>
<script src="<%=basePath%>asset/js/list.js"></script>
<script src="<%=basePath%>asset/js/index.js"></script>

</body>
</html>