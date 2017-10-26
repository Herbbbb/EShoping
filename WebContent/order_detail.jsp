<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8"/>
<title>后台管理系统</title>
<meta name="author" content="DeathGhost" />
<link rel="stylesheet" type="text/css" href="css/style.css">
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
</head>
<body>
<form action="" method="post">
<!--header-->
<header>
 <h1><img src="images/admin_logo.png"/></h1>
 <ul class="rt_nav">
  <li><a href="index.jsp" target="_blank" class="website_icon">站点首页</a></li>
  <li><a href="#" class="clear_icon">清除缓存</a></li>
  <li><a href="#" class="admin_icon">DeathGhost</a></li>
  <li><a href="#" class="set_icon">账号设置</a></li>
  <li><a href="login.html" class="quit_icon">安全退出</a></li>
 </ul>
</header>
<!--aside nav-->
<!--aside nav-->
<aside class="lt_aside_nav content mCustomScrollbar">
 <h2><a href="index.html">起始页</a></h2>
 <ul>
  <li>
   <dl>
    <!--当前链接则添加class:active-->
    <dd><a href="product_list.html" class="active">商品列表</a></dd>
    <dd><a href="product_detail.jsp">添加商品</a></dd>
    <dd><a href="recycle_bin.html">商品回收站</a></dd>
   </dl>
  </li>
  <li>
   <dl>
    <dt>订单信息</dt>
    <dd><a href="orderList.do">订单列表</a></dd>
   </dl>
  </li>
 <!--  <li>
   <dl>
    <dt>会员管理</dt>
    <dd><a href="user_list.html">会员列表</a></dd>
    <dd><a href="user_rank.html">会员等级</a></dd>
   </dl>
  </li>

  <li>
   <dl>
    <dt>配送与支付设置</dt>
    <dd><a href="express_list.html">配送方式</a></dd>
    <dd><a href="pay_list.html">支付方式</a></dd>
   </dl>
  </li> --> 
  <li>
   <p class="btm_infor">© 大连千锋教育 版权所有</p>
  </li>
 </ul>
</aside>

<section class="rt_wrap content mCustomScrollbar">
 <div class="rt_content">
      <div class="page_title">
       <h2 class="fl">订单详情示例</h2>
      </div>
      <table class="table">
      <c:forEach var="preudo" items="${list }" end="0">
       <tr>
        <td>收件人：${preudo.userName }</td>
        <td>联系电话：${preudo.tel }</td>
        <td>收件地址：${preudo.address }</td>
        <td>付款时间：2016-02-01 13:56</td>
       </tr>
       </c:forEach>
       <tr>
        <td>下单时间：2016-02-01 13:56</td>
        <td>付款时间：2016-02-01 13:56</td>
        <td>确认时间：2016-02-01 13:56</td>
        <td>评价时间时间：---</td>
       </tr>
       <tr>
        <td>订单状态：<a>已付款，待发货</a></td>
        <td colspan="3">订单备注：<mark>帮我检查好呀~谢谢~</mark></td>
        </tr>
      </table>
      <table class="table">
      <thead>
      	<tr>
      		<td>订单号</td>
      		<td>商品图片</td>
      		<td>商品名称</td>
      		<td>购买人id</td>
      		<td>商品价格</td>
      		<td>订购数量</td>
      		<td>小计</td>
      	</tr>
      </thead>
      <tbody>
       <c:forEach var="pseudo" items="${list }">
       <tr>
       <td>${pseudo.orderId }</td>
        <td class="center"><img src="products/${pseudo.imgPath }" width="50" height="50"/></td>
        <td>${pseudo.proName }</td>
        <td class="center">${pseudo.userId }</td>
        <td class="center"><strong class="rmb_icon">${pseudo.price }</strong></td>
        <td class="center"><strong>${pseudo.proNum }</strong></td>
        <td class="center"><strong class="rmb_icon">${pseudo.subtotal }</strong></td>
       </tr>
       </c:forEach>
       <!-- 
       <tr>
       <td>1001</td>
        <td class="center"><img src="upload/goods01.jpg" width="50" height="50"/></td>
        <td>骑行服</td>
        <td class="center">A15902</td>
        <td class="center"><strong class="rmb_icon">59.00</strong></td>
        <td class="center"><strong>1</strong></td>
        <td class="center"><strong class="rmb_icon">59.00</strong></td>
       </tr>
       <tr>
       <td>1001</td>
        <td class="center"><img src="upload/goods02.jpg" width="50" height="50"/></td>
        <td>骑行手套</td>
        <td class="center">A15902</td>
        <td class="center"><strong class="rmb_icon">59.00</strong></td>
        <td class="center">
         <p>颜色：蓝色</p>
         <p>尺码：XXL码</p>
        </td>
        <td class="center"><strong>2</strong></td>
        <td class="center"><strong class="rmb_icon">118.00</strong></td>
        <td class="center">包</td>
       </tr>
       <tr>
       	<td>1001</td>
        <td class="center"><img src="upload/goods03.jpg" width="50" height="50"/></td>
        <td>西装</td>
        <td class="center">A15902</td>
        <td class="center"><strong class="rmb_icon">59.00</strong></td>
        <td class="center">
         <p>颜色：蓝色</p>
         <p>尺码：XXL码</p>
        </td>
        <td class="center"><strong>1</strong></td>
        <td class="center"><strong class="rmb_icon">59.00</strong></td>
        <td class="center">包</td>
       </tr> -->
       </tbody>
      </table>
      <aside class="mtb" style="text-align:right;">
       <label>管理员操作：</label>
       <input type="text" class="textbox textbox_295" placeholder="管理员操作备注"/>
       <input type="button" value="打印订单" class="group_btn"/>
       <input type="button" value="确认订单" class="group_btn"/>
       <input type="button" value="配货" class="group_btn"/>
       <input type="button" value="发货" class="group_btn"/>
       <a href="orderList.do"><input type="button" value="返回上一级" class="group_btn"/></a>
      
      </aside>
 </div>
</section>
</form>
</body>
</html>