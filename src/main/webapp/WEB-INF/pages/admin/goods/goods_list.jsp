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
                <div id="group1" class="nav-sidebar-body collapse in">
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
                                <span class="glyphicon glyphicon-shopping-cart"></span>&nbsp;商品管理&nbsp;&nbsp;&nbsp;<span class="glyphicon glyphicon-chevron-down"></span>
                            </a>
                        </li>
                    </ul>
                </div>
                <div id="group2" class="nav-sidebar-body collapse in">
                    <ul class="nav">
                        <li class="active"><a href="<%=basePath%>admin/goodsList?pageNum=1" >商品列表</a></li>
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
        </div>
    </div>
</div>
<div class="container">
    <div class="page-header text-center">
        <h2 class="text-primary"><em>商品管理</em></h2>
    </div>
    <!--搜索-->
    <div class="panel" style="background-color: transparent;">
        <form action="<%=basePath%>admin/searchGoods" method="post">
            <div class="panel-body form-inline">
                <label>
                    商品ID:
                    <input type="text" class="form-control" name="id"  placeholder="请输入商品ID" value="${searchgoods.id}">
                </label>

                <label>
                    名称:
                    <input type="text" class="form-control" name="name"  placeholder="请输入商品名称" value="${searchgoods.name}">
                </label>

                <label>
                    类别:

                    <select name="catelogId" id="myselected1" class="form-control" style="width: 150px;">
                        <option value="" selected="selected">请选择商品类别</option>
                        <option value="1">闲置数码</option>
                        <option value="2">校园代步</option>
                        <option value="3">电器日用</option>
                        <option value="4">图书教材</option>
                        <option value="5">美妆衣物</option>
                        <option value="6">运动棋牌</option>
                        <option value="7">票券小物</option>
                    </select>
                </label>

                <label>
                    状态:

                    <select name="status" id="myselected" class="form-control" style="width: 150px;">
                        <option value="" selected="selected">请选择商品状态</option>
                        <option value="1">在售</option>
                        <option value="0">下架</option>
                    </select>
                </label>
                <button class="btn btn-success btn-md glyphicon glyphicon-search" type="submit" style="margin-left: 5%;">查找</button>
                <button class="btn btn-primary btn-md glyphicon glyphicon-repeat" type="reset" id="deleteUserButton">重置</button>
            </div>

        </form>
    </div>

    <div class="btn-group">
        <button class="btn btn-success glyphicon glyphicon-plus" data-toggle="modal"
                data-target="#addDiv">增加商品
        </button>
        <button class="btn btn-danger glyphicon glyphicon-trash" id="multiDeleteBtn"
                type="button" data-container="body" data-content="请至少选择一个"
                data-toggle="popover" data-placement="right" data-trigger="manual">批量删除
        </button>
    </div>
    <div class="btn-group pull-right">
        <button class="btn btn-primary glyphicon glyphicon-th" data-toggle="dropdown" title="列">
            <span class="caret"></span>
        </button>
        <ul class="dropdown-menu" id="dropdownMenu1">
            <!--<li>
                <label>
                    <input type="checkbox" checked="checked">ID
                </label>
            </li>-->
        </ul>
        <button class="btn btn-warning glyphicon glyphicon-refresh" id="refreshBtn" title="刷新"></button>
    </div>
    <div class="alert alert-danger alert-dismissible fade in text-center"
         id="deleteConfirm" style="display: none">
        <button type="button" class="close">
            <span class="glyphicon glyphicon-remove"></span>
        </button>
        <h4>确认删除？</h4>
        <p>
            <button type="button" class="btn btn-danger confirm">确定</button>
            <button type="button" class="btn btn-default">取消</button>
        </p>
    </div>
    <div class="modal fade" id="addDiv">
        <div class="modal-dialog modal-sm">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">
                        <span class="glyphicon glyphicon-remove"></span>
                    </button>
                    <h4 class="text-center">add user</h4>
                </div>
                <form action="#" method="post">
                    <div class="modal-body form-group">
                        <label for="usernameInput">username</label>
                        <input type="text" id="usernameInput" name="username">
                    </div>
                    <div class="modal-body form-group">
                        <label for="passwordInput">password</label>
                        <input type="password" id="passwordInput" name="password">
                    </div>
                    <div class="modal-footer">
                        <button class="btn btn-primary" data-dismiss="modal">
                            summit
                        </button>
                    </div>
                </form>
            </div>
        </div>
    </div>
    <div class="table-responsive" id="tableBlock">
        <table class="table table-striped table-hover table-condensed">
            <thead>
            <tr>
                <th></th>
                <th><input type="checkbox" title="全选" id="selectAllCheckBox"/></th>
                <th>ID</th>
                <th>名称</th>
                <th>类别</th>
                <th>价格</th>
                <th>创建时间</th>
                <th>状态</th>
                <th>操作</th>
            </tr>
            </thead>
            <tbody>
            <c:forEach items="${goodsGrid.rows}" var="item">
            <tr>
                <td class="text-center">
                    <span class="detail glyphicon glyphicon-plus" title="详情"></span>
                </td>
                <td><input type="checkbox" class="single-checkbox" title="select" value="${item.id}"></td>
                <td>${item.id}</td>
                <td>${item.name}</td>
                <td><c:if test="${item.catelogId == 1}">
                    <span> 闲置数码</span>
                </c:if>
                    <c:if test="${item.catelogId == 2}">
                        <span>校园代步 </span>
                    </c:if>
                    <c:if test="${item.catelogId == 3}">
                        <span> 电器日用  </span>
                    </c:if>
                    <c:if test="${item.catelogId == 4}">
                        <span> 图书教材  </span>
                    </c:if>
                    <c:if test="${item.catelogId == 5}">
                        <span>美妆衣物 </span>
                    </c:if>
                    <c:if test="${item.catelogId == 6}">
                        <span> 运动棋牌</span>
                    </c:if>
                    <c:if test="${item.catelogId == 7}">
                        <span> 票券小物</span>
                    </c:if></td>
                <td>￥${item.realPrice}</td>
                <td>${item.startTime}</td>
                <td><c:if test="${item.status == 1}">
                    <span style="color:blue">在售</span>
                    </c:if>
                    <c:if test="${item.status == 0}">
                        <span style="color:red">下架</span>
                    </c:if>
                </td>
                <td>
                    <a href="#" class="btn btn-primary glyphicon glyphicon-pencil" data-toggle="modal"
                       data-target="#editDiv" title="编辑" onclick="doEdit(${item.id})"></a>
                    <a href="#" class="btn btn-danger glyphicon glyphicon-trash btn-single-delete" title="删除"></a>
                </td>
            </tr>
            </c:forEach>
            </tbody>
        </table>
    </div>
    <nav class="text-center">
        <ul class="pagination">
            <li><a>总商品数:${goodsGrid.total }个</a></li>
            <li><a>第${goodsGrid.current }页</a></li>
            <c:if test="${goodsGrid.current ne 1 }">
                <li><a
                        href="<%=basePath%>admin/goodsList?pageNum=${goodsGrid.current-1 }">上一页</a>
                </li>
            </c:if>

            <c:if test="${goodsGrid.current < (goodsGrid.total+9)/10-1 }">
                <li><a
                        href="<%=basePath%>admin/goodsList?pageNum=${goodsGrid.current+1 }">下一页</a>
                </li>
            </c:if>
        </ul>
    </nav>
</div>
<div class="modal fade" id="editDiv">
    <div class="modal-dialog modal-md"  style="width: 480px;">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal">
                    <span class="glyphicon glyphicon-remove"></span>
                </button>
                <h4 class="text-center">修改商品信息</h4>
            </div>
            <form action="#" method="post" class="form-horizontal" id="myeditform">
                <div class="modal-body form-group">
                    <label for="usernameEditInput" class="col-sm-3 control-label">名称:</label>
                    <div class="col-sm-7">
                        <input type="text" id="usernameEditInput" name="name" class="form-control" >
                    </div>
                </div>
                <div class="modal-body form-group">
                    <label for="usernameEditInput" class="col-sm-3 control-label">类别:</label>
                    <div class="col-sm-7">
                        <input type="text" id="usernameEditInput" name="catelogId" class="form-control" >
                    </div>
                </div>
                <div class="modal-body form-group">
                    <label for="usernameEditInput" class="col-sm-3 control-label">原价:</label>
                    <div class="col-sm-7">
                        <input type="text" id="usernameEditInput" name="price" class="form-control" >
                    </div>
                </div>
                <div class="modal-body form-group">
                    <label for="usernameEditInput" class="col-sm-3 control-label">售价:</label>
                    <div class="col-sm-7">
                        <input type="text" id="usernameEditInput" name="realPrice" class="form-control" >
                    </div>
                </div>
                <div class="modal-body form-group">
                    <label for="usernameEditInput" class="col-sm-3 control-label">创建时间:</label>
                    <div class="col-sm-7">
                        <input type="text" id="usernameEditInput" name="startTime" class="form-control" >
                    </div>
                </div>
                <div class="modal-body form-group">
                    <label for="usernameEditInput" class="col-sm-3 control-label">描述:</label>
                    <div class="col-sm-7">
                    <textarea rows="3" cols="20" id="my_describle" name="describle" class="form-control">
                    </textarea>
                    </div>
                </div>
                <div class="modal-body form-group">
                    <label for="passwordEditInput"  class="col-sm-3 control-label">状态:</label>
                    <div class="col-sm-7">
                        <select name="status" class="form-control" style="width: 100px;" id="myselected">
                            <option value="0" selected="selected">下架</option>
                            <option value="1">上架</option>
                        </select>
                    </div>
                </div>

                <div class="modal-footer">
                    <button type="button" class="btn btn-danger" data-dismiss="modal">关闭</button>
                    <button class="btn btn-primary" data-dismiss="modal" onclick="doSave()">
                        保存
                    </button>
                </div>
            </form>
        </div>
    </div>
</div>
<script src="<%=basePath%>asset/js/jquery-3.2.1.min.js"></script>
<script src="<%=basePath%>asset/js/bootstrap.min.js"></script>
<script src="<%=basePath%>asset/js/list.js"></script>
<script src="<%=basePath%>asset/js/index.js"></script>
<script type="text/javascript">
    /* 修改 */
    function doEdit(id){
        $.ajax({
            url:'<%=basePath%>admin/getGoods',
            type:'GET',
            data:{id:id},
            dataType:'json',
            success:function(json){
                if(json){
                    $('#myeditform').find("input[name='id']").val(json.id);
                    $('#myeditform').find("input[name='name']").val(json.name);
                    $('#myeditform').find("input[name='catelogId']").val(json.catelogId);
                    $('#myeditform').find("input[name='price']").val(json.price);
                    $('#myeditform').find("input[name='realPrice']").val(json.realPrice);
                    $('#myeditform').find("input[name='startTime']").val(json.startTime);
                    $('#myeditform').find("textarea[name='describle']").val(json.describle);
                    $('#myeditform').find("select[name='status']").val(json.status);
                }
            },
            error:function(){
                alert('请求超时或系统出错!');
                $('#editDiv').modal('hide');
            }
        });

    }

    /* 保存 */
    function doSave(){
        $.ajax({
            url:'<%=basePath%>admin/updateGoods',
            type:'POST',
            data:$('#myeditform').serialize(),// 序列化表单值
            dataType:'json',
            success:function(json){
                alert(json.msg);
                $('#editDiv').modal('toggle');
                location.reload();
            },
            error:function(){
                alert('请求超时或系统出错!');
                $('#editDiv').modal('toggle');
            }
        });

    }

    //根据值 动态选中
    $("#myselected option[value='${searchgoods.status}']").attr("selected","selected");
    $("#myselected1 option[value='${searchgoods.catelogId}']").attr("selected","selected");

</script>
</body>
</html>