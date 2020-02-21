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
<html>
<head>
    <title>跳蚤市场后台管理系统</title>
    <link rel="stylesheet" href="<%=basePath%>asset/css/style.css">
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="keywords" content="Lambent Login Form Responsive, Login Form Web Template, Flat Pricing Tables, Flat Drop-Downs, Sign-Up Web Templates, Flat Web Templates, Login Sign-up Responsive Web Template, Smartphone Compatible Web Template, Free Web Designs for Nokia, Samsung, LG, Sony Ericsson, Motorola Web Design" />

</head>
<body>
<h1>跳蚤市场后台管理系统</h1>
<div class="main-agileinfo">
    <h2>立即登录</h2>
    <form action="<%=basePath%>admin/login" method="post">
        <input type="text" name="phone" class="name" placeholder="用户名" required="required
">
        <input type="password" name="password" class="password" placeholder="密码" required="required">
        <ul>
            <li>
                <input type="checkbox" id="brand1" value="">
                <label for="brand1"><span></span>记住我</label>
            </li>
        </ul>
        <a href="#">忘记密码?</a><br>
        <div class="clear"></div>
        <input type="submit" value="Login">
    </form>
</div>
<div class="footer-w3l">
    <p class="agile"> &copy; 2019  Login Form . All Rights Reserved | Design by 移动运营商归属感组</p>
</div>
</body>
</html>
