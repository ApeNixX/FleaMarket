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
                                <span class="glyphicon glyphicon-credit-card"></span>&nbsp;钱包管理&nbsp;&nbsp;&nbsp;<span class="glyphicon glyphicon-chevron-down"></span>
                            </a>
                        </li>
                    </ul>
                </div>
                <div id="group4" class="nav-sidebar-body collapse in">
                    <ul class="nav">
                        <li class="active"><a href="<%=basePath%>admin/purseList?pageNum=1">充值信息</a></li>
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
        <h2 class="text-primary"><em>钱包充值</em></h2>
    </div>
    <!--搜索-->
    <input type="hidden" name="userId" id="userId1" value="${param.userId}"/>
    <input type="hidden" name="state" id="state1" value="${param.state}"/>
    <div class="panel" style="background-color: transparent;">
        <form action="<%=basePath%>admin/searchPurse" method="post">
            <div class="panel-body form-inline">
                <label>
                    用户id:
                    <input type="text" class="form-control" name="userId" value="${searchpurse.userId}"  placeholder="请输用户id">
                </label>

                <label>
                    状态:

                    <select name="state" id="myselected" class="form-control" style="width: 150px;">
                        <option value="" selected="selected">请选择审核状态</option>
                        <option value="0">尚未审核</option>
                        <option value="1">审核失败</option>
                        <option value="2">审核成功</option>
                    </select>
                </label>
                <button class="btn btn-success btn-md glyphicon glyphicon-search" type="submit" style="margin-left: 5%;">查找</button>
                <button class="btn btn-primary btn-md glyphicon glyphicon-repeat" type="reset" id="deleteUserButton">重置</button>
            </div>

        </form>
    </div>
    <div class="btn-group">
        <button class="btn btn-success glyphicon glyphicon-plus" data-toggle="modal"
                data-target="#addDiv">钱包充值
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
                <th>用户ID</th>
                <th>当前金额</th>
                <th>充值金额</th>
                <th>提现金额</th>
                <th>状态</th>
                <th>操作</th>
            </tr>
            </thead>
            <tbody>
            <c:forEach items="${purseGrid.rows}" var="item">
                <tr>
                    <td class="text-center">
                        <span class="detail glyphicon glyphicon-plus" title="详情"></span>
                    </td>
                    <td><input type="checkbox" class="single-checkbox" title="select"></td>
                    <td>${item.userId}</td>
                    <td>${item.balance}</td>
                    <td>${item.recharge}</td>
                    <td>${item.withdrawals}</td>
                    <td><c:if test="${item.state==null}"><span >-</span></c:if>
                        <c:if test="${item.state==0}"><span class="btn-primary btn-info">尚待审核</span> </c:if>
                        <c:if test="${item.state==1}"><span class="btn-primary btn-danger">审核失败</span></c:if>
                        <c:if test="${item.state==2}"><span class="btn-primary  btn-success">审核成功</span></c:if>
                    </td>
                    <td>
                        <c:choose>
                            <c:when test="${item.state==null}">
                                <button type="button" class="btn btn-primary" >无需审核</button>
                            </c:when>
                            <c:when test="${item.state==0}">
                                <button type="button" class="btn btn-info" onclick="doEdit(${item.id})">立即审核</button>
                            </c:when>
                            <c:otherwise>
                                <button type="button" class="btn btn-success" >已经审核</button>
                            </c:otherwise>
                        </c:choose>
                    </td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
    </div>
    <nav class="text-center">
        <ul class="pagination">
            <li><a>总钱包数:${purseGrid.total }个</a></li>
            <li><a>第${purseGrid.current }页</a></li>
            <c:if test="${purseGrid.current ne 1 }">
                <li><a class="a1" href="<%=basePath%>admin/searchPurse?pageNum=${purseGrid.current-1 }">上一页</a>
                </li>
            </c:if>

            <c:if test="${purseGrid.current < (purseGrid.total+9)/10-1 }">
                <li><a class="a1"
                        href="<%=basePath%>admin/searchPurse?pageNum=${purseGrid.current+1 }">下一页</a>
                </li>
            </c:if>
        </ul>
    </nav>
</div>
<div class="modal fade" id="editModal">
    <div class="modal-dialog modal-md" style="width: 420px;">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal">
                    <span class="glyphicon glyphicon-remove"></span>
                </button>
                <h4 class="text-center">审核信息</h4>
            </div>
            <form action="#" method="post" class="form-horizontal" id="myeditform">
                <input type="hidden" id="id" name="id" value="" />
                <div class="modal-body form-group">
                    <label for="usernameEditInput" class="col-sm-3 control-label">用户ID:</label>
                    <div class="col-sm-7">
                        <input type="text" readonly id="usernameEditInput" name="userId" class="form-control" >
                    </div>
                </div>
                <div class="modal-body form-group">
                    <label for="usernameEditInput" class="col-sm-3 control-label">当前金额:</label>
                    <div class="col-sm-7">
                        <input type="text" readonly id="usernameEditInput" name="balance" class="form-control" >
                    </div>
                </div>
                <div class="modal-body form-group">
                    <label for="usernameEditInput" class="col-sm-3 control-label">充值金额:</label>
                    <div class="col-sm-7">
                        <input type="text" readonly id="usernameEditInput" name="recharge" class="form-control" >
                    </div>
                </div>
                <div class="modal-body form-group">
                    <label for="usernameEditInput" class="col-sm-3 control-label">提现金额:</label>
                    <div class="col-sm-7">
                        <input type="text" readonly id="usernameEditInput" name="withdrawals" class="form-control" >
                        <input type="hidden" class="form-control" name="state" style="margin-top: 8px;" />
                    </div>
                </div>


                <div class="modal-footer">
                    <button type="button" class="btn btn-danger" data-dismiss="modal" onclick="doSaveRefuse()">拒绝</button>
                    <button class="btn btn-primary" data-dismiss="modal" onclick="doSavePass()">
                        通过
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
            url:'<%=basePath%>admin/getPurse',
            type:'GET',
            data:{id:id},
            dataType:'json',
            success:function(json){
                if(json){
                    $('#myeditform').find("input[name='id']").val(json.id);
                    $('#myeditform').find("input[name='userId']").val(json.userId);
                    $('#myeditform').find("input[name='balance']").val(json.balance);
                    $('#myeditform').find("input[name='recharge']").val(json.recharge);
                    $('#myeditform').find("input[name='withdrawals']").val(json.withdrawals);
                    $('#myeditform').find("input[name='state']").val(json.state);
                    $('#editModal').modal('toggle');
                }
            },
            error:function(){
                alert('请求超时或系统出错!');
                $('#editModal').modal('hide');
            }
        });
    }

    /* 通过 */
    function doSavePass(){
        $.ajax({
            url:'<%=basePath%>admin/updatePursePass',
            type:'POST',
            data:$('#myeditform').serialize(),// 序列化表单值
            dataType:'json',
            success:function(json){
                alert(json.msg);
                $('#editModal').modal('toggle');
                location.reload();
            },
            error:function(){
                alert('请求超时或系统出错!');
                $('#editModal').modal('toggle');
            }
        });
    }

    /* 不通过 */
    function doSaveRefuse(){
        $.ajax({
            url:'<%=basePath%>admin/updatePurseRefuse',
            type:'POST',
            data:$('#myeditform').serialize(),// 序列化表单值
            dataType:'json',
            success:function(json){
                alert(json.msg);
                $('#editModal').modal('toggle');
                location.reload();
            },
            error:function(){
                alert('请求超时或系统出错!');
                $('#editModal').modal('toggle');
            }
        });
    }

    //根据值 动态选中
    $("#myselected option[value='${searchpurse.state}']").attr("selected","selected");
    $(function(){
        $(".a1").click(function(){
            var id = $("#userId1").serialize();
            var state = $("#state1").serialize();

            var href = this.href + "&" + id+"&"+state;
            window.location.href = href;
            return false;
        });
    })


</script>
</body>
</html>