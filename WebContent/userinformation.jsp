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
	        <span class="item_name" style="width:120px;">个人头像：</span>
	        <label class="uploadImg"><img  src="${pageContext.request.contextPath }${user.imgPath }" class="img11">
	        </label>
       </li>
       <li>
        <span class="item_name" style="width:120px;">会员编号：</span>
        <input type="text" readonly="readonly" class="textbox textbox_225" value="${user.userId }" placeholder="会员名称..." id="userId" name="userId"/>
       </li>
       <li>
        <span class="item_name" style="width:120px;">真实姓名：</span>
        <input type="text" readonly="readonly" class="textbox textbox_225" value="${user.userName }" placeholder="真实姓名..." id="userName" name="userName"/>
       </li>
      <%--  <li>
        <span class="item_name" style="width:120px;">登陆密码：</span>
        <input type="password" readonly="readonly" value="${user.getLogin().password }" class="textbox textbox_225" value="" placeholder="登陆密码..." id="password" name="password"/>
       </li> --%>
       
       <li>
        <span class="item_name" style="width:120px;" name="address">收货地址：</span>
       	<input type="text" readonly="readonly" class="textbox textbox_295" name="city" value="${user.address }" placeholder="收货地址..."/>

       </li>
       <li>
        <span class="item_name" style="width:120px;">家庭住址：</span>
        <input type="text" readonly="readonly" class="textbox textbox_295" name="city" value="${user.city }" placeholder="家庭住址..."/>
       </li>
       
        <li>
        <span class="item_name" style="width:120px;">手机号码：</span>
        <input type="tel" readonly="readonly" class="textbox textbox_225" name="tel" value="${user.tel }" placeholder="手机号码..."/>
       </li>
       <li>
        <span class="item_name" style="width:120px;"></span>
        <!-- <input type="submit" class="link_btn" id="sub_1" value="更新/保存"/>      
        <input type="reset" class="link_btn" value="重新填写"/> -->
        <a href="collection" class="link_btn">返回上一级</a>
       </li>
      </ul>
 </div>
</section>
</form>
</body>
</html>