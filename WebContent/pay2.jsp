<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import="com.qianfeng.pojo.PseudoOrder"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en">
<head>
	<meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
	<title>购物车页面</title>
	<link rel="stylesheet" href="css/base1.css" type="text/css" />
	<link rel="stylesheet" href="css/shop_common.css" type="text/css" />
	<link rel="stylesheet" href="css/shop_header.css" type="text/css" />
	<link rel="stylesheet" href="css/shop_gouwuche.css" type="text/css" />
    <script type="text/javascript" src="js/jquery1.js" ></script>
    <script type="text/javascript" src="js/topNav.js" ></script>
    <script type="text/javascript" src="js/jquery.goodnums.js" ></script>
    <script type="text/javascript" src="js/shop_gouwuche.js" ></script>

    <style type="text/css">
    .shop_bd_shdz_title{width:1000px; margin-top: 10px; height:50px; line-height: 50px; overflow: hidden; background-color:#F8F8F8;}
    .shop_bd_shdz_title h3{width:120px; text-align: center; height:40px; line-height: 40px; font-size: 14px; font-weight: bold;  background:#FFF; border:1px solid #E8E8E8; border-radius:4px 4px 0 0; float: left;  position: relative; top:10px; left:10px; border-bottom: none;}
    .shop_bd_shdz_title p{float: right;}
    .shop_bd_shdz_title p a{margin:0 8px; color:#555555;}

	.shop_bd_shdz_lists{width:1000px;}
	.shop_bd_shdz_lists ul{width:1000px;}
	.shop_bd_shdz_lists ul li{width:980px; border-radius: 3px; margin:5px 0; padding-left:18px; line-height: 40px; height:40px; border:1px solid #FFE580; background-color:#FFF5CC;}
	.shop_bd_shdz_lists ul li label{color:#626A73; font-weight: bold;}
	.shop_bd_shdz_lists ul li label span{padding:10px;}
	.shop_bd_shdz_lists ul li em{margin:0 4px; color:#626A73;}
	.shop_bd_shdz{width:1000px; margin:10px auto 0;}
	.shop_bd_shdz_new{border:1px solid #ccc; width:998px;}
	.shop_bd_shdz_new div.title{width:990px; padding-left:8px; line-height:35px; height:35px; border-bottom:1px solid #ccc; background-color:#F2F2F2; font-color:#656565; font-weight: bold; font-size:14px;}
	.shdz_new_form{width:980px; padding:9px;}
	.shdz_new_form ul{width:100%;}
	.shdz_new_form ul li{clear:both; width:100%; padding:5px 0; height:25px; line-height: 25px;}
	.shdz_new_form ul li label{float:left;width:100px; text-align: right; padding-right: 10px;}
	.shdz_new_form ul li label span{color:#f00; font-weight: bold; font-size:14px; position: relative; left:-3px; top:2px;}
    </style>

	<script type="text/javascript">
	jQuery(function(){
		jQuery("#new_add_shdz_btn").toggle(function(){
			jQuery("#new_add_shdz_contents").show(500);
		},function(){
			jQuery("#new_add_shdz_contents").hide(500);
		});
	});
	function f(){
		//判断哪个是checked状态
		var chk = document.getElementsByName("radio");
   		 for (var i = 0; i < chk.length; i++) {
   		 	//老师
    		if(chk[0].checked){
    			document.getElementById("form").action = "address";
    			//小计
				var money1 = $("#xiaoji_001").html();
				var money2 = $("#xiaoji_003").html();
				$("form").attr("action","address?subtotal1=" + money1 + "&subtotal2=" + money2);	
				
			}else if(chk[1].checked){
				document.getElementById("form").action = "address";
				//小计
				var money1 = $("#xiaoji_001").html();
				var money2 = $("#xiaoji_003").html();
				$("form").attr("action","address?subtotal1=" + money1 + "&subtotal2=" + money2);				
			}else if(chk[2].checked){
				document.getElementById("form").action = "address";
				
				//小计
				var money1 = $("#xiaoji_001").html();
				var money2 = $("#xiaoji_003").html();
				$("form").attr("action","address?subtotal1=" + money1 + "&subtotal2=" + money2);			}
		}
   		 
	} 
	
	</script>
</head>
<body>
		<!-- Header  -wll-2013/03/24 -->
		<div class="shop_hd">
		<!-- Header TopNav -->
		<div class="shop_hd_topNav">
			<div class="shop_hd_topNav_all">
				<!-- Header TopNav Left -->
				<div class="shop_hd_topNav_all_left">
					<p>您好，欢迎来到<b><a href="/">ShoopNC商城</a></b>[<a href="">登录</a>][<a href="">注册</a>]</p>
				</div>
				<!-- Header TopNav Left End -->

				<!-- Header TopNav Right -->
				<div class="shop_hd_topNav_all_right">
					<ul class="topNav_quick_menu">

						<li>
							<div class="topNav_menu">
								<a href="index.jsp" class="topNavHover">首页</a>
							</div>
						</li>
                       <li>
							<div class="topNav_menu">
								<a href="collection.jsp" class="topNavHover">我的收藏</a>
							</div>
						</li>

						<li>
							<div class="topNav_menu">
								<a href="car.jsp" class="topNavHover">购物车<b>0</b>种商品<i></i></a>
								<div class="topNav_menu_bd" style="display:none;">
						            <p>还没有商品，赶快去挑选！</p>
						        </div>
							</div>
						</li>

						<li>
							<div class="topNav_menu">
								<a href="login.jsp" class="topNavHover">安全退出</a>
							</div>
						</li>

					</ul>
				</div>
			</div>
				<!-- Header TopNav Right End -->
			</div>
		</div>
	<!-- Header  -wll-2013/03/24 END-->
	<!-- 面包屑 注意首页没有 -->
	<div class="shop_hd_breadcrumb">
		<strong>当前位置：</strong>
		<span>
			<a href="index.jsp">首页</a>&nbsp;›&nbsp;
			<a href="">我的商城</a>&nbsp;›&nbsp;
			<a href="">我的购物车</a>
		</span>
	</div>
	<form action="" method="post" id="form">
	<!-- 购物车 Body -->
	<div class="shop_gwc_bd clearfix">
		<div class="shop_gwc_bd_contents clearfix">
			<!-- 收货地址 title -->
			<div class="shop_bd_shdz_title">
				<h3>收货人地址</h3>
			</div>
			<div class="clear"></div>
			<!-- 收货人地址 Title End -->
			<div class="shop_bd_shdz clearfix">
			<!-- 发送收货地址，存进数据库 -->
					<div class="shop_bd_shdz_lists clearfix">
					<ul>
						<li id="li1">寄送至：<input type="radio" id="radio1" name="radio" checked="checked" value="北京北京市昌平区回龙观东大街王俊(收)1336699232[默认地址]"/><span id="span1">北京北京市昌平区回龙观东大街王俊(收)1336699232[默认地址]</span></li>
						<li>寄送至：<input type="radio" id="radio2" name="radio" value="天津天津市昌平区回龙观东大街王俊(收)1336699232"/><span id="span2">天津天津市昌平区回龙观东大街王俊(收)1336699232</span></li>
						<li>寄送至：<input type="radio" id="radio3" name="radio" value="辽宁大连市高新园区东软B5栋千锋王俊(收)133669923"/><span id="span3">辽宁大连市高新园区东软B5栋千锋王俊(收)133669923</span></li>	
					</ul>
					</div>

			</div>
			<!-- 购物车列表 -->
			<div class="shop_bd_shdz_title">
				<h3>确认购物清单</h3>
			</div>
			<div class="clear"></div>
			<!-- 以下是买家下单的商品详细信息 -->
			<table>
				<thead>
					<tr>
						<th colspan="2"><span>商品</span></th>
						<th><span>单价(元)</span></th>
						<th><span>数量</span></th>
						<th><span>小计</span></th>
						<th><span>操作</span></th>
					</tr>
				</thead>
				<tbody>
						<!-- 获取各种订单信息 -->
					<tr>
						<td class="gwc_list_pic"><img src="products/${product.imgPath}" width="100px" height="100px" >
							<input type="hidden" name="imgPath" value="${product.imgPath}">
 						</td>
						<td class="gwc_list_title1">${product.proName}
							<input type="hidden" value="${product.proName}" name="proName">
						 </td>
						<td class="gwc_list_danjia"><span>￥<strong id="danjia_001">${product.price}</strong></span>
							
						</td>
						<td class="gwc_list_shuliang"><span>
							<a class="good_num_jian this_good_nums" did="danjia_001" xid="xiaoji_001" ty="-" valId="goods_001" href="javascript:void(0);">-</a><input type="text" value="1" id="goods_001" class="good_nums" name="num1"/>
							<a href="javascript:void(0);" did="danjia_001" xid="xiaoji_001" ty="+" class="good_num_jia this_good_nums" valId="goods_001">+</a></span></td>
						<td class="gwc_list_xiaoji"><span>￥<strong id="xiaoji_001" class="good_xiaojis">${product.price}</strong></span></td>
						<td class="gwc_list_caozuo"><a href="javascript:void(0);" class="shop_good_delete">删除</a></td>
					</tr>
					
					<tr>
						<td class="gwc_list_pic"><a href=""><img src="products/${product.imgPath}" width="100px" height="100px"/></a>
 							<input type="hidden" name="imgPath" value="${product.imgPath}">
 						</td>
						<td class="gwc_list_title2">${product.proName}
							<input type="hidden" value="${product.proName}" name="proName">
						</td>
						<td class="gwc_list_danjia"><span>￥<strong id="danjia_003">${product.price}</strong></span></td>
						<td class="gwc_list_shuliang"><span><a class="good_num_jian this_good_nums" did="danjia_003" xid="xiaoji_003" ty="-" valId="goods_003" href="javascript:void(0);">-</a><input TYPE="text" VALUE="1" id="goods_003" class="good_nums" name="num2"/><a href="javascript:void(0);" did="danjia_003" xid="xiaoji_003" ty="+" class="good_num_jia this_good_nums" valId="goods_003">+</a></span></td>
						<td class="gwc_list_xiaoji"><span >￥<strong id="xiaoji_003" class="good_xiaojis">${product.price}</strong></span></td>
						<td class="gwc_list_caozuo"><a href="javascript:void(0);" class="shop_good_delete">删除</a></td>
					</tr>
				</tbody>
				<tfoot>
					<tr>
						<td colspan="6">
							<div class="gwc_foot_zongjia">商品总价(不含运费)<span>￥<strong id="good_zongjia">${pro.price + pro.price}</strong></span></div>
<!-- 								<input type="hidden" name="totalMoney" value="10000">
 -->							<div class="gwc_foot_zongjia">确认结账前请先点击确认信息，以防信息错误</div>
							<div class="clear"></div>
							<div class="gwc_foot_links">
								<a href="productDetail?proId=${pro.proId }" class="go">返回上一级</a>
								<input type="submit" class="go" value="确认信息" onclick="f()">
								
							</div>
						</td>
					</tr>
				</tfoot>
			</table>
		</form>
			<!-- 买家下单的商品详细信息结束 -->
		</div>
	</div>
	<!-- 购物车 Body End -->

	<!-- Footer - wll - 2013/3/24 -->
	<div class="clear"></div>
	<div class="shop_footer">
            <div class="shop_footer_link">
                <p>
                    <a href="index.jsp">首页</a>|
                    <a href="">招聘英才</a>|
                    <a href="">广告合作</a>|
                    <a href="">关于ShopCZ</a>|
                    <a href="">关于我们</a>
                </p>
            </div>
            <div class="shop_footer_copy">
                <p>Copyright 2007-2013 ShopCZ Inc.,All rights reserved.<br />d by ShopCZ 2.4 </p>
            </div>
        </div>
	<!-- Footer End -->

</body>
</html>