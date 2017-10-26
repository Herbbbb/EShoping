<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>404错误页面信息</title>
<!-- <meta http-equiv="refresh" content="5;url=login.jsp">
 --><link href="css/error.css" rel="stylesheet" type="text/css" />
</head>
<body>
<!-- 代码 开始 -->
<div id="container"><img class="png" src="images/404.png" />
<h1>5S后跳转到登录页面</h1>
</div>
<div id="cloud" class="png"></div>
<!-- 代码 结束 -->
</body>
</html>
