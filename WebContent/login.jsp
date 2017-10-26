<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>用户登录</title>
<link rel="stylesheet" type="text/css" href="css/style.css" />
<style>
body{height:100%;background:#16a085;overflow:hidden;}
canvas{z-index:-1;position:absolute;}
</style>
<script src="js/jquery.js"></script>
<script src="js/verificationNumbers.js"></script>
<script src="js/Particleground.js"></script>
<script>
$(document).ready(function() {
  //粒子背景特效
  $('body').particleground({
    dotColor: '#5cbdaa',
    lineColor: '#5cbdaa'
  });
  //验证码
  createCode();
});
$(function (){
	$(".submit_btn1").click(function(){
		var $code = $("#J_codetext").val();
		var flag = false;
		if($code.toLowerCase() == code.toLowerCase()){
			flag = true;
		}
		var userId = $("#userId").val();
		var password = $("#password").val();
		$.ajax({
			type:"post",
			url:"loginload",
			data:"flag=" + flag + "&userId=" + userId + "&password=" + password,
			dataType:"text",
			success:function(msg){
				if(msg != ""){
					alert(msg);
				}
			}
		});
		$("#form1").attr("action", "login?flag=" + flag);
	});
})
</script>
</head>
<body>
<form action="" method="post" id="form1">
	<dl class="admin_login">
	 <dt>
	  <strong>后台管理系统</strong>
	  <em>Management System</em>
	 </dt>
	 <dd class="user_icon">
	  <input type="text" placeholder="账号" id="userId" class="login_txtbx" name="userId"/>
	 </dd>
	 <dd class="pwd_icon">
	  <input type="password" placeholder="密码" id="password" class="login_txtbx" name="password"/>
	 </dd>
	 <dd class="val_icon">
	  <div class="checkcode">
	    <input type="text" id="J_codetext" placeholder="验证码" maxlength="4" class="login_txtbx">
	    <canvas class="J_codeimg" id="myCanvas" onclick="createCode()">对不起，您的浏览器不支持canvas，请下载最新版浏览器!</canvas>
	  </div>
	  <input type="button" value="验证码核验" class="ver_btn" onClick="validate();">
	 </dd>
	 <dd>
	  <input type="submit" value="登录" class="submit_btn1"/>
	  <input type="button" value="注册" class="submit_btn2" onclick="window.open('register.jsp')"/>
	 </dd>
	 <dd>
	  <p>© 2015-2017 千锋商城  版权所有</p>
	  <p>辽B2-20080224-1</p>
	 </dd>
	</dl>
</form>
</body>
</html>