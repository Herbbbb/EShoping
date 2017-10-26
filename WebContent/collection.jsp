<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/common.css" rel="stylesheet" type="text/css" />
<link href="css/style2.css" rel="stylesheet" type="text/css" />
<link href="css/user_style.css" rel="stylesheet" type="text/css" />
<link href="skins/all.css" rel="stylesheet" type="text/css" />
<script src="js/jquery-1.8.3.min.js" type="text/javascript"></script>
<script src="js/jquery.SuperSlide.2.1.1.js" type="text/javascript"></script>
<script src="js/common_js.js" type="text/javascript"></script>
<script src="js/footer.js" type="text/javascript"></script>
<script src="js/iCheck.js" type="text/javascript"></script>
<script src="js/custom.js" type="text/javascript"></script>
<script type="text/javascript">
	$(function(){
		$(".delete").click(function(){
			var p = $(this).next();
			var proId = p.html();
			$.ajax({
				type: "post",
				url: "deletelovegoods",
				data: "proId=" + proId,
				dataType: "text",
				success: function(msg){
					if(msg != ""){
						alert(msg);
						window.location.href = "collection";
					}
				}
			});
		});
	});
	$(function(){
		$(".a_3").click(function(){
			var a_3 = $(this);
			var sellerId = a_3.parent().parent().children().eq(0).html();
			$.ajax({
				type: "post",
				url: "deletecollectshop",
				dataType: "text",
				data: "sellerId=" + sellerId,
				success: function(msg){
					if(msg != ""){
						alert(msg);
						window.location.href = "collection";
					}
				}
			});
			
		});
	});
	function showTime(){
		var myDate = new Date();
		myDate.getYear();        //获取当前年份(2位)
		myDate.getFullYear();    //获取完整的年份(4位,1970-????)
		myDate.getMonth();       //获取当前月份(0-11,0代表1月)
		myDate.getDate();        //获取当前日(1-31)
		myDate.getDay();         //获取当前星期X(0-6,0代表星期天)
		myDate.getTime();        //获取当前时间(从1970.1.1开始的毫秒数)
		myDate.getHours();       //获取当前小时数(0-23)
		myDate.getMinutes();     //获取当前分钟数(0-59)
		myDate.getSeconds();     //获取当前秒数(0-59)
		myDate.getMilliseconds();    //获取当前毫秒数(0-999)
		myDate.toLocaleDateString();     //获取当前日期
		var mytime=myDate.toLocaleTimeString();     //获取当前时间
		var time = myDate.toLocaleString( ); 
		var str = $("#time").html();
		$("#time").html("");
		$("#time").html(str + time);
	}
</script>
<style type="text/css">
	table{
		width: 100%;
		border: 1px solid #888888;
	}
	tr td {
		border: 1px solid;
		text-align: center;
	}

</style>
<title>会员中心-我的收藏</title>
</head>
<body onload="showTime()">
<head>
 <div id="header_top">
  <div id="top">
    <div class="Inside_pages">
      <!-- <div class="Collection"><a href="#" class="green">请登录</a> <a href="#" class="green">免费注册</a></div> -->
	<div class="hd_top_manu clearfix">
	  <ul class="clearfix">
	  <li class="hd_menu_tit" data-addclass="hd_menu_hover"> <a href="index.jsp">首页</a> </li>
	   <li class="hd_menu_tit" data-addclass="hd_menu_hover"><a href="collection">我的收藏</a></li>
        <li class="hd_menu_tit" data-addclass="hd_menu_hover"><a href="car.jsp">我的购物车<b>(23)</b></a></li>	
       <li class="hd_menu_tit" data-addclass="hd_menu_hover"><a href="login.jsp">安全退出</a></li>	
	  </ul>
	</div>
    </div>
  </div>
  <div id="header"  class="header page_style">
  <div class="logo"><a href="index.html"><img src="images/logo.png" /></a></div>
  <!--结束图层-->
  <div class="Search">
        <div class="search_list">
            <ul>
                <li class="current"><a href="#">产品</a></li>
            </ul>
        </div>
        <div class="clear search_cur">
           <input name="searchName" id="searchName" class="search_box" onkeydown="keyDownSearch()" type="text">
           <input name="" type="submit" value="搜 索"  class="Search_btn"/>
        </div>
        <div class="clear hotword">热门搜索词：香醋&nbsp;&nbsp;&nbsp;茶叶&nbsp;&nbsp;&nbsp;草莓&nbsp;&nbsp;&nbsp;葡萄&nbsp;&nbsp;&nbsp;菜油</div>
</div>
 <!--购物车样式-->
 <div class="hd_Shopping_list" id="Shopping_list">
   <div class="dorpdown-layer">
    <div class="spacer"></div>
	 <!--<div class="prompt"></div><div class="nogoods"><b></b>购物车中还没有商品，赶紧选购吧！</div>-->		
	 <div class="Shopping_style">
	 <div class="p-total">共<b>1</b>件商品　共计<strong>￥ 515.00</strong></div>
	  <a href="Shop_cart.html" title="去购物车结算" id="btn-payforgoods" class="Shopping">去购物车结算</a>
	 </div>	 
   </div>
 </div>
</div>
<!--菜单栏-->
	<div class="Navigation" id="Navigation">
			</div>
	<script>$("#Navigation").slide({titCell:".Navigation_name li",trigger:"click"});</script>
    </div>
</head>
<!--用户中心收藏样式-->
<div class="user_style clearfix">
 <div class="user_center clearfix">
     <div class="left_style">
     <div class="menu_style">
     <div class="user_title">用户中心</div>
     <div class="user_Head">
     <div class="user_portrait">
      <a href="#" title="修改头像" class="btn_link"></a> <img src="images/people.png">
      <div class="background_img"></div>
      </div>
      <div class="user_name">
       <p><span class="name">${user.userName }</span><a href="updateuser">[修改信息]</a></p>
       <p id="time">访问时间: </p>
       </div>           
     </div>
     <div class="sideMen">
     <!--菜单列表图层-->
     <dl class="accountSideOption1">
      <dt class="transaction_manage"><em class="icon_1"></em>订单管理</dt>
      <dd>
        <ul>
          <li> <a href="#">我的订单</a></li>
        </ul>
      </dd>
    </dl>
     <dl class="accountSideOption1">
      <dt class="transaction_manage"><em class="icon_2"></em>会员管理</dt>
        <dd>
      <ul>
        <li> <a href="finduser"> 用户信息</a></li>
        <li> <a href="collection"> 我的收藏</a></li>
      <!--   <li> <a href="#"> 我的留言</a></li> -->
      </ul>
    </dd>
    </dl>
     <dl class="accountSideOption1">
      <dt class="transaction_manage"><em class="icon_3"></em>账户管理</dt>
      <dd>
       <ul>
        <li><a href="#">账户余额</a></li>
        <li><a href="#">消费记录</a></li>   
      </ul>
     </dd>
    </dl>
    </div>
      <script>jQuery(".sideMen").slide{titCell:"dt", targetCell:"dd",trigger:"click",defaultIndex:0,effect:"slideDown",delayTime:300,returnDefault:true});</script>
   </div>
 </div>
 <!--收藏样式-->
  <div class="right_style">
  <div class="title_style"><em></em>我的收藏</div> 
  <div class="Favorites_slideTxtBox">
     <div class="hd"><ul><li>收藏的商品</li><li>收藏的店铺</li></ul></div>
     <div class="bd">
        <ul class="commodity_list clearfix">
         <div class="Number_Favorites">共${list.size() }件藏品</div>
         <div class="clearfix">
         <c:forEach items="${list }" var="product"> 
	         <li class="collect_p">
	         <em class="iconfont  delete" ></em>
	         <p hidden="hidden">${product.proId }</p>
	         <a href="#" class="buy_btn">立即购买</a>
	       <div class="collect_info">
	        <div class="img_link"> <a href="#" class="center "><img src="products/${product.imgPath }"></a></div>
	        <dl class="xinxi">
	         <dt><a href="#" class="name">${product.proName }</a></dt>
	         <dd><span class="Price"><b>￥</b>${product.price }</span><span class="collect_Amount"><i class="iconfont icon-shoucang"></i>${product.price }</span></dd>         
	        </dl>
	        </div>
	       </li>
         </c:forEach>
       </div>
       <div class="Paging">
    <div class="Pagination">
    <a href="#">首页</a>
     <a href="#" class="pn-prev disabled">&lt;上一页</a>
	 <a href="#" class="on">1</a>
	 <a href="#">2</a>
	 <a href="#">3</a>
	 <a href="#">4</a>
	 <a href="#">下一页&gt;</a>
	 <a href="#">尾页</a>	
     </div>
    </div>
        </ul>
        <ul class="Shops_list">
        <div class="Number_Favorites">共收藏${shops.size() }家店铺</div>
        <li class="">
          <div class="shop_logo">
          	<table class="Number_Favorites">
          		<tr>
          			<td>店铺编号</td>
          			<td>个人操作</td>
          		</tr>
	          	<c:forEach items="${shops }" var="shop">
	          		<tr>
	          			<td>${shop.sellerId }</td>
	          			<td><a class="a_2">进入店铺</a><a class="a_3">删除店铺</a></td>
	          		</tr>
	          	</c:forEach>
          	</table>
          </div>
          <div class="shop_content">
          	
          </div>
        </li>
        </ul>
     </div>
   </div>
   <script>jQuery(".Favorites_slideTxtBox").slide({trigger:"click"});</script>
  </div>
 </div>
</div>
<!--网站地图-->
<div class="fri-link-bg clearfix">
    <div class="fri-link">
        <div class="logo left margin-r20"><img src="images/fo-logo.jpg" width="152" height="81" /></div>
        <div class="left"><img src="images/qd.jpg" width="90"  height="90" />
            <p>扫描下载APP</p>
        </div>
       <div class="">
    <dl>
	 <dt>新手上路</dt>
	 <dd><a href="#">售后流程</a></dd>
     <dd><a href="#">购物流程</a></dd>
     <dd><a href="#">订购方式</a> </dd>
     <dd><a href="#">隐私声明 </a></dd>
	</dl>
	<dl>
	 <dt>配送与支付</dt>
	 <dd><a href="#">保险需求测试</a></dd>
     <dd><a href="#">专题及活动</a></dd>
     <dd><a href="#">挑选保险产品</a> </dd>
     <dd><a href="#">常见问题 </a></dd>
	</dl>
	<dl>
	 <dt>售后保障</dt>
	 <dd><a href="#">保险需求测试</a></dd>
     <dd><a href="#">专题及活动</a></dd>
     <dd><a href="#">挑选保险产品</a> </dd>
     <dd><a href="#">常见问题 </a></dd>
	</dl>
	<dl>
	 <dt>支付方式</dt>
	 <dd><a href="#">保险需求测试</a></dd>
     <dd><a href="#">专题及活动</a></dd>
     <dd><a href="#">挑选保险产品</a> </dd>
     <dd><a href="#">常见问题 </a></dd>
	</dl>	
    <dl>
	 <dt>帮助中心</dt>
	 <dd><a href="#">保险需求测试</a></dd>
     <dd><a href="#">专题及活动</a></dd>
     <dd><a href="#">挑选保险产品</a> </dd>
     <dd><a href="#">常见问题 </a></dd>
	</dl>
     <dl>
	 <dt>帮助中心</dt>
	 <dd><a href="#">保险需求测试</a></dd>
     <dd><a href="#">专题及活动</a></dd>
     <dd><a href="#">挑选保险产品</a> </dd>
     <dd><a href="#">常见问题 </a></dd>
	</dl>
	   
   </div>
    </div>
</div>
<!--网站地图END-->
<!--网站页脚-->
<div class="copyright">
    <div class="copyright-bg">
        <div class="hotline">为生活充电在线 <span>招商热线：6888868</span> 客服热线：400-888888</div>
        <div class="hotline co-ph">
            <p>版权所有Copyright ©大连千锋教育</p>
        </div>
    </div>
</div>
</body>
</html>
