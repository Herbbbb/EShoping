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
    <dd><a href="orderList.do">订单列表</a></dd>
   </dl>
  </li>
  <li>
   <p class="btm_infor">© 大连千锋教育 版权所有</p>
  </li>
 </ul>
</aside>

<section class="rt_wrap content mCustomScrollbar">
 <div class="rt_content">
      <div class="page_title">
       <h2 class="fl">产品回收站</h2>
       <a class="fr top_rt_btn">返回上一页</a>
      </div>
      <section class="mtb">
       <select class="select">
        <option>下拉菜单</option>
        <option>男装</option>
        <option>家电</option>
       </select>
       <input type="text" class="textbox textbox_225" placeholder="输入产品关键词或产品货号..."/>
       <input type="button" value="查询" class="group_btn"/>
      </section>
      <table class="table">
       <tr>
        <th>缩略图</th>
        <th>产品名称</th>
        <th>单价</th>
        <th>分类</th>
        <th>库存</th>
        <th>操作</th>
       </tr>
       <c:forEach var="product" items="${page.list }">
       <tr>
        <td class="center"><img src="products/${product.imgPath }" width="50" height="50"/></td>
        <td>${product.proName }</td>
        <td class="center"><strong class="rmb_icon">${product.price }</strong></td>
        <td class="center">${product.proType }</td>
       
        <td class="center">${product.counts }</td>
        <td class="center">
         <a href="productDetail?proId=${product.proId }" title="预览" class="link_icon" target="_blank">&#118;</a>
         <a href="#" id="recycle" title="恢复到产品列表" class="link_icon">&#47;</a>
         <a href="#" id="delete" title="彻底删除" class="link_icon">&#100;</a>
        </td>
       </tr>
       </c:forEach>
      </table>
      <aside class="paging">
       <a href="downProductServlet?pageNow=1">第一页</a>
       <a href="downProductServlet?pageNow=${page.getPre() }">上一页</a>
       <a>…</a>
       <a href="downProductServlet?pageNow=${page.getNext() }">下一页</a>
       <a href="downProductServlet?pageNow=${page.totalPage }">最后一页</a>
       <a href="javascript:;">共${page.totalPage }页</a>
      </aside>
 </div>
</section>
</body>
</html>

