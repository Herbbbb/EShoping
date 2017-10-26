<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>商城</title>
<link rel=stylesheet type=text/css href="css/lrtk.css">
<script type=text/javascript src="js/jquery.min.js"></script>
<script type=text/javascript src="js/jquery-1.11.1.js"></script>
<script type=text/javascript>
	$(document).ready(
			function() {
				$("#firstpane .menu_body:eq(0)").show();
				$("#firstpane p.menu_head").click(
						function() {
							$(this).addClass("current").next("div.menu_body")
									.slideToggle(300).siblings("div.menu_body")
									.slideUp("slow");
							$(this).siblings().removeClass("current");
						});
				$("#secondpane .menu_body:eq(0)").show();
				$("#secondpane p.menu_head").mouseover(
						function() {
							$(this).addClass("current").next("div.menu_body")
									.slideDown(500).siblings("div.menu_body")
									.slideUp("slow");
							$(this).siblings().removeClass("current");
						});
			});
</script>
<script type="text/javascript">
	var arr = new Array();
	arr[0] = "images/p_1.jpg";
	arr[1] = "images/p_2.jpg";
	var index = 0;
	function f1() {
		setInterval(f2, 2500);
	}
	function f2() {
		var picture = document.getElementById("img1");
		picture.src = arr[index];
		index++;
		if (index == 2) {
			index = 0;
		}
	}
</script>
<style type="text/css">
body {
	margin: 0px;
}

a {
	text-decoration: none;
	color: red;
}

#text1 {
	width: 500px;
	height: 30px;
}

#text2 {
	width: 50px;
	height: 37px;
}

.s2 {
	display: block;
	border-right: 1px solid black;
	float: right;
}

#div1 {
	width: 100%;
	height: 30px;
	background-image: url("images/p_3.png");
	font-size: 23px;
}

#div2 {
	width: 100%;
	height: 140px;
	background-color: #C91425;
	display: inline-block;
}

#div2_1 {
	width: 15.5%;
	height: 140px;
	float: left;
}

#div2_2 {
	width: 84.5%;
	height: 140px;
	margin-top: 50px;
	text-align: center;
	float: left;
}

#div3 {
	width: 100%;
	height: 450px;
	background-color: green;
}

#div4 {
	width: 100%;
	height: 430px;
}

#div4_1 {
	width: 18%;
	height: 430px;
	float: left;
}

#div4_2 {
	width: 82%;
	height: 430px;
	text-align: center;
	float: left;
	background-image: url("images/p_3.png");
}

#div5 {
	width: 100%;
	height: 180px;
	background-color: #3D3D45;
}

#s1 {
	margin-left: 120px;
}

img {
	width: 100%;
	height: 100%;
}

#imgs {
	width: 200px;
	height: 200px;
}

table {
	border: 1px solid black;
	margin: auto;
	text-align: center;
}

td {
	border: 1px solid black;
}
</style>
</head>
<body onload="f1()">
	<div id="div1">
		<span id="s1">请先</span><a href="#">登录</a><a href="#">注册</a><span
			class="s2"><a href="#">安全退出</a></span><span class="s2"><a
			href="#">我的订单</a></span><span class="s2"><a href="#">我的收藏</a></span>
	</div>
	<div id="div2">
		<div id="div2_1">
			<img src="images/logo.jpg" alt="图片" />
		</div>
		<div id="div2_2">
			<form action="" method="post">
				<input id="text1" type="text" value="输入商品名称" name="proName" /> <input
					id="text2" type="submit" value="搜索" />
			</form>
		</div>
	</div>
	<div id="div3">
		<img id="img1" alt="图片" src="images/p_2.jpg">
	</div>
	<div id="div4">
		<div id="div4_1">
			<div id="firstpane" class="menu_list">
				<p class="menu_head current">粗细粮</p>
				<div id="div4_1_1" style="display: none" class=menu_body>
					<c:forEach var="product" items="${products}">
						<c:if test="${product.proType=='粗细粮'}">
							<tr>
								<td><a href="#">${product.proName}</a></td>
							</tr>
						</c:if>
					</c:forEach>
				</div>
				<p class="menu_head">酒类</p>
				<div id="div4_1_2" style="display: none" class=menu_body>
					<c:forEach var="product" items="${products}">
						<c:if test="${product.proType=='酒类'}">
							<tr>
								<td><a href="#">${product.proName}</a></td>
							</tr>
						</c:if>
					</c:forEach>
				</div>
				<p class="menu_head">肉类</p>
				<div id="div4_1_3" style="display: none" class=menu_body>
					<c:forEach var="product" items="${products}">
						<c:if test="${product.proType=='肉类'}">
							<tr>
								<td><a href="#">${product.proName}</a></td>
							</tr>
						</c:if>
					</c:forEach>
				</div>
				<p class="menu_head">水果</p>
				<div id="div4_1_4" style="display: none" class=menu_body>
					<c:forEach var="product" items="${products}">
						<c:if test="${product.proType=='水果'}">
							<tr>
								<td><a href="#">${product.proName}</a></td>
							</tr>
						</c:if>
					</c:forEach>
				</div>
			</div>
		</div>
		<div id="div4_2">
			<p><h1>商品列表</h1></p>
			<table>
				<tbody>
					<tr>
						<c:forEach var="product" items="${page.list}">
							<td><a href="#"><img id="imgs"
									src="products/${product.imgPath}" alt="图片" /></a></td>
							<td>${product.proName}</td>
						</c:forEach>
					</tr>
				</tbody>
			</table>
			<a href="sale?pageNow=1">首页</a> <a
				href="sale?pageNow=${page.getPre()}">上一页</a> <a
				href="sale?pageNow=${page.getNext()}">下一页</a> <a
				href="sale?pageNow=${page.getTotalPage()}">尾页</a>
		</div>
	</div>
	<div id="div5"></div>
</body>
</html>