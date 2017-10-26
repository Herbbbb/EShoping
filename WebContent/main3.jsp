<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/common.css" rel="stylesheet" type="text/css" />
<link href="css/style2.css" rel="stylesheet" type="text/css" />
<script src="js/jquery-1.8.3.min.js" type="text/javascript"></script>
<script src="js/jquery.SuperSlide.2.1.1.js" type="text/javascript"></script>
<script src="js/common_js.js" type="text/javascript"></script>
<script src="js/footer.js" type="text/javascript"></script>

<title>网站首页</title>
<style type="text/css">
input{
	display: block;
	float: left;
	width:80px;height: 30px;
	background-color: green;
}
</style>
<script type="text/javascript">
	function f(pageNow){
		window.location.href="sale?pageNow="+pageNow;
		 
	}
	function f1(pageNow){
		window.location.href="sale?pageNow="+pageNow;
		
	}
	function f2(pageNow){
		window.location.href="sale?pageNow="+pageNow;
		
	}
	function f3(pageNow){
		var num=pageNow%3==0?pageNow/3:pageNow/3+1;
		var page=Math.floor(num);
		window.location.href="sale?pageNow="+page;
		
	}
</script>
</head>

<body>
<head>
 <div id="header_top">
  <div id="top">
    <div class="Inside_pages">
    <!-- 用户名赵伟超那里，从cookie获取用户名 -->
      <div class="Collection">欢迎<a href="#">赵伟超</a>光临开心商城</div>
	<div class="hd_top_manu clearfix">
	  <ul class="clearfix">
	   <li class="hd_menu_tit" data-addclass="hd_menu_hover"><a href="collection">我的收藏</a></li>
        <li class="hd_menu_tit" data-addclass="hd_menu_hover"><a href="car.jsp">我的订单<b>(23)</b></a></li>	
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
	  <a href="Shop_cart.html" title="去购物车结算" id="btn-payforgoods" class="Shopping">去购物车结算</a>
	 </div>	 
   </div>
 </div>
</div>
<!--菜单栏-->
	<div class="Navigation" id="Navigation">
		 <ul class="Navigation_name">
			<li><a href="index.jsp">首页</a></li>
            <li><a href="shop.jsp">热门店铺</a></li>
            <li><a href="detail.jsp">热门商品</a></li>
			<li><a href="http://www.baidu.com">联系我们</a></li>
		 </ul>			 
		</div>
	<script>$("#Navigation").slide({titCell:".Navigation_name li",trigger:"click"});</script>
    </div>
</head>
<!--广告幻灯片样式-->
   	<div id="slideBox" class="slideBox">
			<div class="hd">
				<ul class="smallUl"></ul>
			</div>
			<div class="bd">
				<ul>
					<li><a href="detail.jsp" target="_blank"><div style="background:url(AD/ad-1.jpg) no-repeat; background-position:center; width:100%; height:450px;"></div></a></li>
					<li><a href="detail.jsp" target="_blank"><div style="background:url(AD/ad-2.jpg) no-repeat; background-position:center ; width:100%; height:450px;"></div></a></li>
					<li><a href="detail.jsp" target="_blank"><div style="background:url(AD/ad-1.jpg) no-repeat rgb(226, 155, 197); background-position:center; width:100%; height:475px;"></div></a></li>
                    <li><a href="detail.jsp" target="_blank"><div style="background:url(AD/ad-2.jpg) no-repeat #f7ddea; background-position:center; width:100%; height:450px;"></div></a></li>
                    <li><a href="detail.jsp" target="_blank"><div style="background:url(AD/ad-1.jpg) no-repeat  #F60; background-position:center; width:100%; height:450px;"></div></a></li>
				</ul>
			</div>
			<!-- 下面是前/后按钮-->
			<a class="prev" href="javascript:void(0)"></a>
			<a class="next" href="javascript:void(0)"></a>

		</div>
		<script type="text/javascript">
		jQuery(".slideBox").slide({titCell:".hd ul",mainCell:".bd ul",autoPlay:true,autoPage:true});
		</script>
 </div>

<!--内容样式-->
<div id="mian">
 <div class="clearfix marginbottom">
 <!--产品分类样式-->
  <div class="Menu_style" id="allSortOuterbox">
   <div class="title_name"><em></em>所有商品分类</div>
   <div class="content hd_allsort_out_box_new">
    <ul class="Menu_list">
      <li class="name">
		<div class="Menu_name"><a href="product_list.html" >茶品类</a> <span>&lt;</span></div>
		<div class="link_name">
		  <p>
          <a href="detail.jsp">茅台</a> | 
          <a href="detail.jsp">五粮液</a> | 
          <a href="detail.jsp">郎酒</a> | 
          <a href="detail.jsp">剑南春</a>        
          </p>
		</div>	 
		</li>
        <li class="name">
		<div class="Menu_name"><a href="#" >豆制品类</a><span>&lt;</span></div>
		<div class="link_name">
		 <a href="detail.jsp"> 面霜</a> | 
		 <a href="detail.jsp">眼霜</a> | 
		 <a href="detail.jsp"> 面膜</a> | 
		 <a href="detail.jsp">护肤套装</a>
		</div>
				
		</li>
        <li class="name">
		<div class="Menu_name"><a href="#" >菌菇类</a><span>&lt;</span></div>
		<div class="link_name">
		 <a href="detail.jsp"> 面霜</a>
		 <a href="detail.jsp">眼霜</a>
		 <a href="detail.jsp"> 面膜</a>
		 <a href="detail.jsp">护肤套装</a>
		</div>
				
		</li>
               <li class="name">
		<div class="Menu_name"><a href="#" >粮油五谷类</a><span>&lt;</span></div>
		<div class="link_name">
		 <a href="detail.jsp"> 面霜</a>
		 <a href="detail.jsp">眼霜</a>
		 <a href="detail.jsp"> 面膜</a>
		 <a href="detail.jsp">护肤套装</a>
		</div>
				
		</li>
               <li class="name">
		<div class="Menu_name"><a href="#" >禽蛋类</a><span>&lt;</span></div>
		<div class="link_name">
		 <a href="detail.jsp"> 面霜</a>
		 <a href="detail.jsp">眼霜</a>
		 <a href="detail.jsp"> 面膜</a>
		 <a href="detail.jsp">护肤套装</a>
		</div>
				
		</li>
               <li class="name">
		<div class="Menu_name"><a href="#" >蔬菜类类</a><span>&lt;</span></div>
		<div class="link_name">
		 <a href="detail.jsp"> 面霜</a>
		 <a href="detail.jsp">眼霜</a>
		 <a href="detail.jsp"> 面膜</a>
		 <a href="detail.jsp">护肤套装</a>
		</div>		
		</li>
    </ul>
   </div>
  </div>
  <script>$("#allSortOuterbox").slide({ titCell:".Menu_list li",mainCell:".menv_Detail",	});</script>
  <!--产品栏切换-->
  <div class="product_list left">
  		<div class="slideGroup">
			<div class="parBd">
					<div class="slideBoxs">
						<a class="sPrev" href="javascript:void(0)"></a>
						<ul>
						
					<c:forEach var="product" items="${products }">
							<li>
								<div class="pic"><a href="productDetail?proId=${product.proId }" target="_blank"><img src="products/${product.imgPath }" /></a></div>
								<div class="title">
                                <a href="productDetail?proId=${product.proId }" target="_blank" class="name">${product.proName }</a>
                                <h3><b>￥</b>${product.price}</h3>
                                </div>
							</li>
							 </c:forEach>
							
						</ul>
						<a class="sNext" href="javascript:void(0)"></a>
					</div><!-- slideBox End -->
			</div><!-- parBd End -->
		</div>
        <script type="text/javascript">
			/* 内层图片无缝滚动 */
			jQuery(".slideGroup .slideBoxs").slide({ mainCell:"ul",vis:4,prevCell:".sPrev",nextCell:".sNext",effect:"leftMarquee",interTime:50,autoPlay:true,trigger:"click"});
			/* 外层tab切换 */
			jQuery(".slideGroup").slide({titCell:".parHd li",mainCell:".parBd"});
		</script>
        <!--广告样式--三连发-->
        <div class="Ads_style">
        <form action="" method="get">
        	<c:forEach var="pro" items="${page.list }"> 
        	<a href="productDetail?proId=${pro.proId }"><img src="products/${pro.imgPath }"  width="318"/></a>
	      	</c:forEach> 
	        <!-- <a href="detail.jsp"><img src="images/AD_03.png"  width="318"/></a>
	        <a href="detail.jsp"><img src="images/AD_04.png" width="318"/></a>
	        <a href="detail.jsp"><img src="images/AD_06.png" width="318"/></a> -->
	        <div style="margin-left: 300px;">
	        <input type="button" value="首页"  onclick="f(${1})" >
	        <input type="button" value="上一页" onclick="f1(${page.getPre()})" >
	       <input type="button" value="下一页" onclick="f2(${page.getNext()})">
	       <input type="button" value="尾页" onclick="f3(${page.totalNumber})">
			</div>
	  </form>
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
        <div class="hotline">为生活充电在线 <span>招商热线：****-********</span> 客服热线：400-******</div>
        <div class="hotline co-ph">
            <p>版权所有Copyright ©大连千锋教育</p>
        </div>
    </div>
</div>
 <!--右侧菜单栏购物车样式-->
<div class="fixedBox">
  <ul class="fixedBoxList">
      <li class="fixeBoxLi user"><a href="#"> <span class="fixeBoxSpan"></span> <strong>消息中心</strong></a> </li>
    <li class="fixeBoxLi cart_bd" style="display:block;" id="cartboxs">
		<p class="good_cart">9</p>
			<span class="fixeBoxSpan"></span> <strong>购物车</strong>
			<div class="cartBox">
       		<div class="bjfff"></div><div class="message">购物车内暂无商品，赶紧选购吧</div>    </div></li>
    <li class="fixeBoxLi Service "> <span class="fixeBoxSpan"></span> <strong>客服</strong>
      <div class="ServiceBox">
        <div class="bjfffs"></div>
        <dl onclick="javascript:;">
		    <dt><img src="images/Service1.png"></dt>
		       <dd><strong>QQ客服1</strong>
		          <p class="p1">9:00-22:00</p>
		           <p class="p2"><a href="http://wpa.qq.com/msgrd?v=3&amp;uin=123456&amp;site=DGG三端同步&amp;menu=yes">点击交谈</a></p>
		          </dd>
		        </dl>
				<dl onclick="javascript:;">
		          <dt><img src="images/Service1.png"></dt>
		          <dd> <strong>QQ客服1</strong>
		            <p class="p1">9:00-22:00</p>
		            <p class="p2"><a href="http://wpa.qq.com/msgrd?v=3&amp;uin=123456&amp;site=DGG三端同步&amp;menu=yes">点击交谈</a></p>
		          </dd>
		        </dl>
	          </div>
     </li>
	 <li class="fixeBoxLi code cart_bd " style="display:block;" id="cartboxs">
			<span class="fixeBoxSpan"></span> <strong>微信</strong>
			<div class="cartBox">
       		<div class="bjfff"></div>
			<div class="QR_code">
			 <p><img src="images/erweim.jpg" width="180px" height="180px" /></p>
			 <p>微信扫一扫，关注我们</p>
			</div>		
			</div>
			</li>

    <li class="fixeBoxLi Home"> <a href="./"> <span class="fixeBoxSpan"></span> <strong>收藏夹</strong> </a> </li>
    <li class="fixeBoxLi BackToTop"> <span class="fixeBoxSpan"></span> <strong>返回顶部</strong> </li>
  </ul>
</div>

</body>

</html>
