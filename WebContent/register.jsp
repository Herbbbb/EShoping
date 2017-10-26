<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta charset="utf-8"/>
<title>后台管理系统</title>
<meta name="author" content="DeathGhost" />
<link rel="stylesheet" type="text/css" href="css/style.css">
<!--[if lt IE 9]>
<script src="js/html5.js"></script>
<![endif]-->
<script src="js/jquery.js"></script>
<script src="js/jquery.mCustomScrollbar.concat.min.js"></script>
<script>

	(function($){
		$(window).load(function(){
			
			$("a[rel='load-content']").click(function(e){
				e.preventDefault();
				var url=$(this).attr("href");
				$.get(url,function(data){
					$(".content .mCSB_container").append(data); //load new content inside .mCSB_container
					//scroll-to appended content 
					$(".content").mCustomScrollbar("scrollTo","h2:last");
				});
			});
			
			$(".content").delegate("a[href='top']","click",function(e){
				e.preventDefault();
				$(".content").mCustomScrollbar("scrollTo",$(this).attr("href"));
			});
			
		});
	})(jQuery);
	$(function(){
		$("#upload").click(function(){
			$("#form1").attr("action", "upload");
		});
	});
	$(function(){
		$("#sub_1").click(function(){
			var userId = $("#userId").val();
			var password = $("#password").val();
			var confirm = $("#confirm").val();
			var flag1 = $("#flag1").val();
			var flag2 = $("#flag2").val();
			$.ajax({
				type: "post",
				url: "password",
				data: "userId=" + userId + "&password=" + password + "&confirm=" + confirm + "&flag1=" + flag1 + "&flag2" + flag2,
				success: function(msg){
					if(msg != ""){
						alert(msg);
						$("#userId").val();
						$("#password").val();
						$("#confirm").val();
					}
					
				}
			});
		});
		
	});
	
	$(function(){
		$("#sub_1").click(function(){			
			var src = $(".img11").attr("src");
			var select1 = $(".select1").val();
			var select2 = $(".select2").val();
			var select3 = $(".select3").val();
			var select = select1 + " " + select2 + " " + select3 + " ";
			$("#form1").attr("enctype", "application/x-www-form-urlencoded");
			$("#form1").attr("action", "regist?select=" + select  + "&src=" + src);
		});
	});
</script>
<style type="text/css">
	.center{
		margin-left: -940px;
		font-size: 15px;
	}

	.img11{
		width:80px;
		height:74px;
	}
</style>
</head>
<body>
<!--header-->
<header>
 <ul class="rt_nav">
  <li><a href="index.jsp" target="_blank" class="website_icon">站点首页</a></li>
  <li><a href="http://www.baidu.com" class="clear_icon">请求帮助</a></li>
  <li><a href="login.jsp" class="quit_icon">安全退出</a></li>
 </ul>
</header>
<!--aside nav-->
<!--aside nav-->
<form id="form1" method="post" enctype="multipart/form-data" >
<section class="rt_wrap content mCustomScrollbar">
 <div class="rt_content">
      <div class="page_title">
       <h2 class="fl">会员详情</h2>
      </div>
      <ul class="ulColumn2">
       <li>
	        <span class="item_name" style="width:120px;">上传头像：</span>
	        <label class="uploadImg"><img  src="${pageContext.request.contextPath }${path }" class="img11">
	        <input type="file" class="addBorder" name="file"/>	       
	        </label>
	        <input type="submit" class="link_btn" id="upload" value="上传图片">
       </li>
       <li>
        <span class="item_name" style="width:120px;">会员名称：</span>
        <input type="text" class="textbox textbox_225" value="" placeholder="会员名称..." id="userId" name="userId"/>
       </li>
       <li>
        <span class="item_name" style="width:120px;">真实姓名：</span>
        <input type="text" class="textbox textbox_225" value="" placeholder="真实姓名..." id="userName" name="userName"/>
       </li>
       <li>
        <span class="item_name" style="width:120px;">登陆密码：</span>
        <input type="password" class="textbox textbox_225" value="" placeholder="登陆密码..." id="password" name="password"/>
       </li>
       <li>
        <span class="item_name" style="width:120px;">确认密码：</span>
        <input type="password" class="textbox textbox_225" value="" placeholder="确认密码..." id="confirm" name="confirm"/>
       </li>
       
       <li>
        <span class="item_name" style="width:120px;" name="address">收货地址：</span>
        <select class="select1">
         <option>选择省份</option>
         <option>陕西省</option>
         <option>山西省</option>
        </select>
        <select class="select2">
         <option>选择城市</option>
         <option>西安市</option>
         <option>大同市</option>
        </select>
        <select class="select3">
         <option>选择区/县</option>
         <option>长安县</option>
         <option>不晓得</option>
        </select>
       </li>
       <li>
        <span class="item_name" style="width:120px;">家庭住址：</span>
        <input type="text" class="textbox textbox_295" name="city" value="" placeholder="详细地址..."/>
       </li>
       <li>
        <span class="item_name" style="width:120px;">详细地址：</span>
        <input type="text" class="textbox textbox_295" name="address" value="" placeholder="详细地址..."/>
       </li>
       
        <li>
        <span class="item_name" style="width:120px;">手机号码：</span>
        <input type="tel" class="textbox textbox_225" name="tel" value="" placeholder="手机号码..."/>
       </li>
      
        <li>
        <span class="item_name" style="width:120px;">注册类型：</span>
        <!-- 这里name值不一样，不能实现单选，不知道你后台获取是不是根据name  暂时没修改 -->
        <label class="single_selection"><input type="radio" id="flag1" name="flag1"/>买家</label>
        <label class="single_selection"><input type="radio" id="flag2" name="flag2"/>卖家</label>
       </li>
       
       <li>
        <span class="item_name" style="width:120px;"></span>
        <input type="submit" class="link_btn" id="sub_1" value="更新/保存"/>      
        <input type="reset" class="link_btn" value="重新填写"/>
        <a href="login.jsp" class="link_btn">返回上一级</a>
       </li>
      </ul>
 </div>
</section>
</form>
</body>
</html>