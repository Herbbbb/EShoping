<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>产品-产品详情</title>
<link href="css/base.css" rel="stylesheet" type="text/css" />
<link href="css/css1.css" rel="stylesheet" type="text/css" />
<link href="css/style1.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/jquery-1.8.3.min.js"></script>
<script src="js/jquery.simpleGal.js"></script>
<script type="text/javascript" src="js/jquery.imagezoom.min.js"></script>
<style>
img {
	max-width: none;
}
.tb-pic a {
	display: table-cell;
	text-align: center;
	vertical-align: middle;
}
.tb-pic a img {
	vertical-align: middle;
}
.tb-pic a {
*display:block;
*font-family:Arial;
*line-height:1;
}
.tb-thumb {
	margin: 10px 0 0;
	overflow: hidden;
}
.tb-thumb li {
	float: left;
	width: 86px;
	height: 86px;
	overflow: hidden;
	border: 1px solid #cdcdcd;
	margin-right: 5px;
}
.tb-thumb li:hover, .tb-thumb .tb-selected {
	width: 84px;
	height: 84px;
	border: 2px solid #799e0f;
}
.tb-s310, .tb-s310 a {
	height: 365px;
	width: 365px;
}
.tb-s310, .tb-s310 img {
	max-height: 365px;
	max-width: 365px;
}
.tb-booth {
	border: 1px solid #CDCDCD;
	position: relative;
	z-index: 1;
}
div.zoomDiv {
	z-index: 999;
	position: absolute;
	top: 0px;
	left: 0px;
	background: #ffffff;
	border: 1px solid #ccc;
	display: none;
	overflow: hidden;
}
div.zoomMask {
	position: absolute;
	background: url("images/mask.png") repeat;
	cursor: move;
	z-index: 1;
}
<!--弹出隐藏层-->
 .black_overlay {
	display: none;
	position: absolute;
	top: 0%;
	left: 0%;
	width: 100%;
	height: 1200px;
	background-color: black;
	z-index: 9999;
	-moz-opacity: 0.4;
	opacity: 0.40;
	filter: alpha(opacity=40);
}
.white_content {
	display: none;
	position: absolute;
	top: 20%;
	left: 40%;
	width: 400px;
	height: 175px;
	border: none;
	background-color: white;
	z-index: 100200;
	overflow: auto;
}
.white_content_small {
	display: none;
	position: absolute;
	top: 20%;
	left: 30%;
	width: 40%;
	height: 50%;
	background-color: white;
	z-index: 1002;
	overflow: auto;
}
.dialogbox {
	padding: 20px;
	line-height: 40px;
}
.addbtn {
	width: 22px;
	height: 22px;
	background: url(images/close2.png) no-repeat;
	margin-right: 5px;
	margin-top: 3px;
	border: none;
	float: right;
}
</style>
<script type="text/javascript">
//弹出隐藏层
function ShowDiv(show_div,bg_div){
document.getElementById(show_div).style.display='block';
document.getElementById(bg_div).style.display='block' ;
var bgdiv = document.getElementById(bg_div);
bgdiv.style.width = document.body.scrollWidth;
// bgdiv.style.height = $(document).height();
$("#"+bg_div).height($(document).height());
};
//关闭弹出层
function CloseDiv(show_div,bg_div)
{
document.getElementById(show_div).style.display='none';
document.getElementById(bg_div).style.display='none';
};

	//点击立即购买，将信息发送个后台
	$(function(){
		$(".buy").click(function(){
			
			//获取图片路径
			
			//获取商品名
			
			//获取单价
			
			
		}); 
	}) 
</script>
</head>

<body>

<!--头部导航-->
<div class="nofix_head">
    <div class="top wrapper">
        <div class="float-lt margin-b10">
            <ul>
      <div class="Collection">欢迎-<a href="#">赵伟超</a></div>
            </ul>
        </div>
        <div class="float-rt">
            <ul>
                <li><a href="index.jsp" target="_blank">首页</a></li>
                <li><a href="collection.jsp">我的收藏</a></li>
                <li><a href="car.jsp">我的订单</a><small class="num">23</small></li>
                <li><a id="linkOrder" href="login.jsp">安全退出</a></li>
            </ul>
        </div>
    </div>
</div>
<!--头部导航END--> 
<!--网站头部-->
<div class="sup-wid">
	<div><img src="images/TB27.gif" width="100%"/></div>
    <div class="supplie-top">

        <div class=" clear bread"><a href="index.jsp">首页</a> <span class="pipe">&gt;</span> <a href="shop.jsp">千锋供应商</a> <span class="pipe">&gt;</span> <a href="#">特级贡茶</a></div>
</div>
        <div class="pro_detail_img float-lt">
        <!-- 从数据库获取图片 -->
                <img src="products/${product.imgPath }" class="" />
            </div>
            <script type="text/javascript">
        $(function(){
				$("#h1").toggle(function(){
					$("#h1").css("background-image","url('images/iconfont-xingxingman_add.png')");
				},function(){
					$("#h1").css("background-image","url('images/iconfont-xingxingman_add.png') ");
				})
			}) 

</script>
        </div>
        <div class="float-lt pro_detail_con">
            <div class="pro_detail_score margin-t20">
                <ul>
                    <li class="margin-r20">评分</li>
                </ul>
                <ul>
                    <li style="width:16px; height:16px;"><img src="images/iconfont-xingxingman.png" width="16" height="16" /></li>
                    <li style="width:16px; height:16px;"><img src="images/iconfont-xingxingman.png" width="16" height="16" /></li>
                    <li style="width:16px; height:16px;"><img src="images/iconfont-xingxingman.png" width="16" height="16" /></li>
                    <li style="width:16px; height:16px;"><img src="images/iconfont-xingxingman.png" width="16" height="16" /></li>
                    <li style="width:16px; height:16px;"><img src="images/iconfont-xingxingkong.png" width="16" height="16" /></li>
                </ul>
            </div>
            <div class="clear"></div>
            <div class="pro_detail_price  margin-t20"><span class="margin-r20">市场价</span><span style=" font-size:16px"><s>${product.price+5 }</s></span></div>
            <div class="clear"></div>
            <div class="pro_detail_act margin-t20 fl"><span class="margin-r20">售价</span><span style="font-size:26px; font-weight:bold; color:#dd514c;">${product.price }</span></div>
            <div class="clear"></div>
            <div class="act_block margin-t5"><span>本商品可使用9999积分抵用￥9.99元</span></div>

            <div class="pro_detail_number margin-t20">
                <div class="margin-r20 float-lt">月成交量：<span class="colorred"><strong>${product.counts+1000 }</strong></span></div>
                <div class="clear"></div>
            </div>
            <div class="clear"></div>
            <div class="pro_detail_btn margin-t30">
                <ul>
                    <li class="pro_detail_shop"><a href="detail?proId=${product.proId }" id="buy">立即购买</a></li>
                    
  <!-- 进行商品收藏的处理，点击收藏在收藏页面加入对应的信息 -->
                    <li class="pro_detail_add"><a href="#" onclick="ShowDiv('MyDiv','fade')">加入收藏</a></li>
                </ul>
            </div>
        </div>
        </div>
    </div>
    <div class="clear"></div>
    <script>
		$(function(){
			$(".pro_tab li").each(function(i){
				$(this).click(function(){
					$(this).addClass("cur").siblings().removeClass("cur");
					$(".conlist .conbox").eq(i).show().siblings().hide();
				})
			})
		})
		function addCar(proId){
			alert(proId);
			$.ajax({
				type:"get",
				url:"addShopCarServlet",
				data:"proId="+proId,
				dataType:"text",
				success:function(data){
					alert(data);
				}
			})
		}
	</script>
    <div class="pro_con margin-t55" style="overflow:hidden;">
        <div class="pro_tab">
            <ul>
                <li class="cur">产品介绍</li>
                <li>评价</li>
                <li class="cur"><a href="gotoShopServlet?proId=${product.proId }">进入店铺</a></li>
                <li class="cur"><a href="#<%-- addShopCarServlet?proId=${product.proId } --%>" onclick="addCar(${product.proId})">加入购物车</a></li>
                <li class="cur"><a href="shopingCar.jsp">查看购物车</a></li>
            </ul>
        </div>
        <div class="conlist">
        <!-- 产品描述DIV -->
            <div class="conbox" style="display:block;">
            	${product.introduct }
            </div>
        <!-- 产品描述DIV END -->
        
        <!-- 评价DIV 后期做个分页效果-->
            <div class="conbox">
                <div class="pro_judge">
                    <ul>
                        <li class="cur">
                            <input name="RadioGroup1" type="radio" value="" checked="checked" id="RadioGroup1_0" />
                            全部（100）</li>
                        <li>
                            <input name="RadioGroup1" type="radio" value="" id="RadioGroup1_1" />
                            好评（80）</li>
                        <li>
                            <input name="RadioGroup1" type="radio" value="" id="RadioGroup1_2" />
                            中评（10）</li>
                        <li>
                            <input name="RadioGroup1" type="radio" value="" id="RadioGroup1_3" />
                            差评（10）</li>
                    </ul>
                    <table width="100%" border="0">
                        <tr>
                            <td width="80" align="left"><a href="" rel="images/01_mid.jpg" class="preview"><img src="images/01_mid.jpg" width="60" height="60" class="border_gry" /></a></td>
                            <td>茶泡出来颜色很好！味道很清香！非常喜欢！包装也很精致，下次还来买！好评！<br />
                                <br />
                                <span class="pro_judge_time">2014.1.3</span></td>
                            <td>张三</td>
                        </tr>
                        <tr>
                            <td width="80" align="left"><a href="" rel="images/01_mid.jpg" class="preview"><img src="images/01_mid.jpg" width="60" height="60" class="border_gry" /></a></td>
                            <td>茶泡出来颜色很好！味道很清香！非常喜欢！包装也很精致，下次还来买！好评！<br />
                                <br />
                                <span class="pro_judge_time">2014.1.3</span></td>
                            <td>张三</td>
                        </tr>
                        <tr>
                            <td width="80" align="left"><a href="" rel="images/01_mid.jpg" class="preview"><img src="images/01_mid.jpg" width="60" height="60" class="border_gry" /></a></td>
                            <td>茶泡出来颜色很好！味道很清香！非常喜欢！包装也很精致，下次还来买！好评！<br />
                                <br />
                                <span class="pro_judge_time">2014.1.3</span></td>
                            <td>张三</td>
                        </tr>
                        <tr>
                            <td width="80" align="left"><a href="" rel="images/01_mid.jpg" class="preview"><img src="images/01_mid.jpg" width="60" height="60" class="border_gry" /></a></td>
                            <td>茶泡出来颜色很好！味道很清香！非常喜欢！包装也很精致，下次还来买！好评！<br />
                                <br />
                                <span class="pro_judge_time">2014.1.3</span></td>
                            <td>张三</td>
                        </tr>
                        <tr>
                            <td width="80" align="left"><a href="" rel="images/01_mid.jpg" class="preview"><img src="images/01_mid.jpg" width="60" height="60" class="border_gry" /></a></td>
                            <td>茶泡出来颜色很好！味道很清香！非常喜欢！包装也很精致，下次还来买！好评！<br />
                                <br />
                                <span class="pro_judge_time">2014.1.3</span></td>
                            <td>张三</td>
                        </tr>
                        <tr>
                            <td width="80" align="left"><a href="" rel="images/01_mid.jpg" class="preview"><img src="images/01_mid.jpg" width="60" height="60" class="border_gry" /></a></td>
                            <td>茶泡出来颜色很好！味道很清香！非常喜欢！包装也很精致，下次还来买！好评！<br />
                                <br />
                                <span class="pro_judge_time">2014.1.3</span></td>
                            <td>张三</td>
                        </tr>
                        <tr>
                            <td width="80" align="left"><a href="" rel="images/01_mid.jpg" class="preview"><img src="images/01_mid.jpg" width="60" height="60" class="border_gry" /></a></td>
                            <td>茶泡出来颜色很好！味道很清香！非常喜欢！包装也很精致，下次还来买！好评！<br />
                                <br />
                                <span class="pro_judge_time">2014.1.3</span></td>
                            <td>张三</td>
                        </tr>
                        <tr>
                            <td width="80" align="left"><a href="" rel="images/01_mid.jpg" class="preview"><img src="images/01_mid.jpg" width="60" height="60" class="border_gry" /></a></td>
                            <td>茶泡出来颜色很好！味道很清香！非常喜欢！包装也很精致，下次还来买！好评！<br />
                                <br />
                                <span class="pro_judge_time">2014.1.3</span></td>
                            <td>张三</td>
                        </tr>
                        <tr>
                            <td width="80" align="left"><a href="" rel="images/01_mid.jpg" class="preview"><img src="images/01_mid.jpg" width="60" height="60" class="border_gry" /></a></td>
                            <td>茶泡出来颜色很好！味道很清香！非常喜欢！包装也很精致，下次还来买！好评！<br />
                                <br />
                                <span class="pro_judge_time">2014.1.3</span></td>
                            <td>张三</td>
                        </tr>
                    </table>
                </div>
            </div>
          <!-- 评价DIV  END-->
        </div>
    </div>
    <div class="hotpro">
        <div class="hotpro_title">热销产品</div>
        <div class="hotpro_box">
            <div class="pro-view-hot">
                <ul>
                    <li class="pro-img"><a href="#"><img src="images/pro-1.jpg" /></a></li>
                    <li class="price"><strong>￥ 36.00</strong><span>已销售227</span></li>
                    <li><a href="#" class="title">恒顺蜂蜜醋  10ml*24支 纯粮酿造 镇江香醋 江苏特产 礼盒礼品 </a></li>
                </ul>
                <ul>
                    <li class="pro-img"><a href="#"><img src="images/pro-1.jpg" /></a></li>
                    <li class="price"><strong>￥ 36.00</strong><span>已销售227</span></li>
                    <li><a href="#" class="title">恒顺蜂蜜醋  10ml*24支 纯粮酿造 镇江香醋 江苏特产 礼盒礼品 </a></li>
                </ul>
                <ul>
                    <li class="pro-img"><a href="#"><img src="images/pro-1.jpg" /></a></li>
                    <li class="price"><strong>￥ 36.00</strong><span>已销售227</span></li>
                    <li><a href="#" class="title">恒顺蜂蜜醋  10ml*24支 纯粮酿造 镇江香醋 江苏特产 礼盒礼品 </a></li>
                </ul>
                <ul>
                    <li class="pro-img"><a href="#"><img src="images/pro-1.jpg" /></a></li>
                    <li class="price"><strong>￥ 36.00</strong><span>已销售227</span></li>
                    <li><a href="#" class="title">恒顺蜂蜜醋  10ml*24支 纯粮酿造 镇江香醋 江苏特产 礼盒礼品 </a></li>
                </ul>
                <ul>
                    <li class="pro-img"><a href="#"><img src="images/pro-1.jpg" /></a></li>
                    <li class="price"><strong>￥ 36.00</strong><span>已销售227</span></li>
                    <li><a href="#" class="title">恒顺蜂蜜醋  10ml*24支 纯粮酿造 镇江香醋 江苏特产 礼盒礼品 </a></li>
                </ul>
                <ul style="margin-right:0;">
                    <li class="pro-img"><a href="#"><img src="images/pro-1.jpg" /></a></li>
                    <li class="price"><strong>￥ 36.00</strong><span>已销售227</span></li>
                    <li><a href="#" class="title">恒顺蜂蜜醋  10ml*24支 纯粮酿造 镇江香醋 江苏特产 礼盒礼品 </a></li>
                </ul>
            </div>
        </div>
    </div>
    
    <div class="helper">
        <div class="mod">
            <div class="mod-wrap">
                <h4><img src="images/h1.png" width="60" height="60" /><span>新手上路</span> </h4>
            </div>
        </div>
        <div class="mod">
            <div class="mod-wrap">
                <h4><img src="images/h2.png" width="60" height="60" /><span>如何支付</span> </h4>
            </div>
        </div>
        <div class="mod">
            <div class="mod-wrap">
                <h4><img src="images/h3.png" width="60" height="60" /><span>配送运输</span> </h4>
            </div>
        </div>
        <div class="mod mod-last">
            <div class="mod-wrap">
                <h4><img src="images/h4.png" width="60" height="60" /><span>售后服务</span> </h4>
            </div>
        </div>
        <div class="mod mod-last">
            <div class="mod-wrap">
                <h4><img src="images/h5.png" width="60" height="60" /><span>联系我们</span> </h4>
            </div>
        </div>
    </div>
    
</div>

<div class="clear">&nbsp;</div>


<!--网站地图-->
<div class="fri-link-bg">
    <div class="fri-link">
        <div class="logo float-lt margin-r20"><img src="images/fo-logo.jpg" width="152" height="81" /></div>
        <div class="float-lt"><img src="images/qd.jpg" width="90"  height="90" />
            <p>扫描下载APP</p>
        </div>
        <ul class="link-add float-lt ma">
            <li><a href="#" class="font14">网站栏目</a></li>
            <li><a href="#">网站栏目</a></li>
            <li><a href="#">网站栏目</a></li>
            <li><a href="#">网站栏目</a></li>
        </ul>
        <ul class="link-add float-lt">
            <li><a href="#" class="font14">网站栏目</a></li>
            <li><a href="#">网站栏目</a></li>
            <li><a href="#">网站栏目</a></li>
            <li><a href="#">网站栏目</a></li>
        </ul>
        <ul class="link-add float-lt">
            <li><a href="#" class="font14">网站栏目</a></li>
            <li><a href="#">网站栏目</a></li>
            <li><a href="#">网站栏目</a></li>
            <li><a href="#">网站栏目</a></li>
        </ul>
        <ul class="link-add float-lt">
            <li><a href="#" class="font14">网站栏目</a></li>
            <li><a href="#">网站栏目</a></li>
            <li><a href="#">网站栏目</a></li>
            <li><a href="#">网站栏目</a></li>
        </ul>
        <ul class="link-add float-lt">
            <li><a href="#" class="font14">网站栏目</a></li>
            <li><a href="#">网站栏目</a></li>
            <li><a href="#">网站栏目</a></li>
            <li><a href="#">网站栏目</a></li>
        </ul>
        <ul class="link-add float-lt">
            <li><a href="#" class="font14">网站栏目</a></li>
            <li><a href="#">网站栏目</a></li>
            <li><a href="#">网站栏目</a></li>
            <li><a href="#">网站栏目</a></li>
        </ul>
        <ul class="link-add float-lt">
            <li><a href="#" class="font14">网站栏目</a></li>
            <li><a href="#">网站栏目</a></li>
            <li><a href="#">网站栏目</a></li>
            <li><a href="#">网站栏目</a></li>
        </ul>
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
<!--网站页脚END-->
<!--商品添加成功DIV-->
<div id="fade" class="black_overlay"> </div>
<div id="MyDiv" class="white_content">
    <div  style="width:385px; height:30px; background:#1ba67f; padding-left:15px; color:#fff; line-height:30px; font-size:14px;"> <span onclick="CloseDiv('MyDiv','fade')">
        <input type="button" class="addbtn">
        </span>商品收藏 </div>
    <div class="dialogbox">
        <p>商品收藏成功！</p>
    </div>
</div>
</div>
</div>
<script type="text/javascript">
$(document).ready(function(){

	$(".jqzoom").imagezoom();
	
	$("#thumblist li a").mousemove(function(){
		$(this).parents("li").addClass("tb-selected").siblings().removeClass("tb-selected");
		$(".jqzoom").attr('src',$(this).find("img").attr("mid"));
		$(".jqzoom").attr('rel',$(this).find("img").attr("big"));
	});

});
</script>
</body>
</html>
