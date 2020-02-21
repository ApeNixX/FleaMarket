<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>
<head>
    <title>大学生跳蚤市场</title>

    <!--<META HTTP-EQUIV="Refresh" CONTENT="0;URL=<%=basePath%>goods/homeGoods">-->
    <jsp:forward page="pages/user/login.jsp"/>
    <%--<jsp:forward page="pages/goods/homeGoods.jsp"/>--%>

</head>
<body>
</body>
</html>
