<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
</head>
<body>
<form action="" method="post">
<!--header-->
<header>
 <h1><img src="images/admin_logo.png"/></h1>
 <ul class="rt_nav">
  <li><a href="index.jsp" target="_blank" class="website_icon">站点首页</a></li>
  <li><a href="http://www.baidu.com" class="clear_icon">请求帮助</a></li>
  <li><a href="login.jsp" class="quit_icon">安全退出</a></li>
 </ul>
</header>
<!--aside nav-->
<!--aside nav-->
<aside class="lt_aside_nav content mCustomScrollbar">
 <h2><a href="index.jsp">起始页</a></h2>
 <ul>
  <li>
   <dl>
    <!--当前链接则添加class:active-->
    <dd><a href="product_list.jsp" class="active">商品列表</a></dd>
    <dd><a href="product_detail.jsp">添加商品</a></dd>
    <dd><a href="product_detail1.jsp">预览商品</a></dd>
    <dd><a href="recycle_bin.jsp">商品回收站</a></dd>
   </dl>
  </li>
  <li>
   <dl>
    <dt>订单信息</dt>
    <dd><a href="order_list.jsp">订单列表</a></dd>
   </dl>
  </li>
  <li>
   <p class="btm_infor">© DeathGhost.cn 版权所有</p>
  </li>
 </ul>
</aside>

<section class="rt_wrap content mCustomScrollbar">
 <div class="rt_content">
      <div class="page_title">
       <h2 class="fl">订单列表</h2>
       <a class="fr top_rt_btn add_icon">添加商品</a>
      </div>
      <section class="mtb">
       <select class="select">
        <option>订单状态</option>
        <option>待付款</option>
        <option>待发货</option>
        <option>待评价</option>
       </select>
       <input type="text" class="textbox textbox_225" placeholder="输入订单编号或收件人姓名/电话..."/>
       <input type="button" value="查询" class="group_btn"/>
      </section>
      <table class="table">
      <thead>
       <tr>
        <th>订单编号</th>
        <th>收件人</th>
        <th>联系电话</th>
        <th>收件人地址</th>
        <th>订单金额</th>
        <th>操作</th>
       </tr>
       </thead>
       <tbody>
       <c:forEach var="order" items="${orders }">
       <tr>
        <td class="center">${order.orderId }</td>
        <td>${order.userName }</td>
        <td>${order.tel }</td>
        <td>
         <address>${order.address }</address>
        </td>
        <td class="center"><strong class="rmb_icon">${order.totalPrice }</strong></td>
        <td class="center">
         <a href="orderDetail.do?userId=${order.userId }"  title="查看订单" class="link_icon" target="_blank">&#118;</a>
         <a href="deleteOrder.do?userId=${order.userId }" onclick="return confirm('是否删除${order.userName}的订单？')" title="删除" class="link_icon">&#100;</a>
        </td>
       </tr>
       </c:forEach>
       <!-- 
        <tr>
        <td class="center">201602011207</td>
        <td>何波</td>
        <td>18300000000</td>
        <td>
         <address>辽宁省大连市未央区幸福路222号</address>
        </td>
        <td class="center"><strong class="rmb_icon">59.00</strong></td>
        <td class="center">
         <a href="#" title="查看订单" class="link_icon" target="_blank">&#118;</a>
         <a href="#" title="删除" class="link_icon">&#100;</a>
        </td>
       </tr>
       <tr>
        <td class="center">201602011207</td>
        <td>赵伟超</td>
        <td>18300000000</td>
        <td>
         <address>北京市未央区幸福路222号</address>
        </td>
        <td class="center"><strong class="rmb_icon">59.00</strong></td>
        <td class="center">
         <a href="#" title="查看订单" class="link_icon" target="_blank">&#118;</a>
         <a href="#" title="删除" class="link_icon">&#100;</a>
        </td>
       </tr> -->
       </tbody>
      </table>
      <aside class="paging">
       <a>第一页</a>
       <a>1</a>
       <a>2</a>
       <a>…</a>
       <a>最后一页</a>
      </aside>
 </div>
</section>
</form>
</body>
</html>
