<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>无标题文档</title>
<link href="css/base.css" rel="stylesheet" type="text/css" />
<link href="css/supplie.css" rel="stylesheet" type="text/css" />
<link href="css/style1.css" rel="stylesheet" type="text/css" />

<link href="css/common.css" rel="stylesheet" type="text/css" />
<link href="css/style2.css" rel="stylesheet" type="text/css" />
<script src="js/jquery-1.8.3.min.js" type="text/javascript"></script>
<script src="js/jquery.SuperSlide.2.1.1.js" type="text/javascript"></script>
<script src="js/common_js.js" type="text/javascript"></script>
<script src="js/footer.js" type="text/javascript"></script>
</head>
<style>
.paging{margin:8px 0;overflow:hidden;text-align:right;}
.paging a{background:#19a97b;

border:1px #139667 solid;color:white;padding:5px 8px;display:inline-block;cursor:pointer;}

#100{
	hidden;
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
</style>
<body>
<!--头部导航-->
<!-- <div class="nofix_head">
    <div class="top wrapper">
        <div class="float-lt margin-b10">
            <ul>
            	<li>
      				<div class="Collection">欢迎-<a href="#">赵伟超</a></div>
            	</li>
            </ul>
        </div>
        <div class="float-rt">
            <ul>
                <li><a href="main.jsp" target="_blank">首页</a></li>
                <li><a href="collection.jsp">我的收藏</a></li>
                <li><a href="car.jsp">我的订单</a></li>
                <li><a id="linkOrder" href="login.jsp">安全退出</a></li>
            </ul>
        </div>
    </div>
</div> -->
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
  </div>
<!--网站头部-->
<div class="sup-wid">
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
<!-- <div id="div2">
		<div id="div2_1" style="float: left;">
			<img src="images/logo.jpg" alt="图片" />
		</div>
		<div id="div2_2" style="float: left;background-image: ">
			<form action="" method="post">
				<input id="text1" type="text" value="输入商品名称" name="proName" /> <input
					id="text2" type="submit" value="搜索" />
			</form>
		</div>
	</div> -->
	<!-- <div><img src="images/TB27.gif" width="100%"/></div> -->
	
	<div id="div3">
		<img id="img1" alt="图片" src="images/p_2.jpg">
	</div>
    <!-- <div class="company-profile">
        <div class="logo">
        	<div><img src="images/shop_logo.jpg"  width="300" height="192"/></div>
            <div class="margin-l50 margin-t10">
	            <form action="shop" method="post">
	           
	            	<div class="shoucang" >
	            	<input type="submit" value="收藏店铺">
	            	商家ID
	            	<input type="hidden" value="100"  name="sellerId">
	            	用户ID
	            	<input type="hidden" value="1001"  name="userId">
	            	
	            	</div>
	            </form>
	                <div class="liuyan"><a href="findUs.jsp">联系我们</a></div>
            </div>
        </div>
        <div class="text-introduce"><span>江苏业祥科技股份有限公司</span>
            <p>南京业祥科技发展有限公司成立于2003年，位于南京市风景秀丽的科技创新型科技园区----中山科技园。是安全技术防范领域的专业企业；是安全技术防范领域的专业企业：集安全防范系统的设计研发、生产、销售及售后服务为一体的高科技企业。</p>
        </div>
    </div> -->
    <div class="mainbody">
        <div class="product-categories">
            <div class="title">产品分类</div>
            <div class="see-all">
                <div class="ck"><a href="#">查看所有产品</a></div>
                <ul class="fenlei">
                    <div class="pr_fenlei"><a href="#">茶叶</a></div>
                    <li><a href="detail.jsp">普洱</a></li>
                    <li><a href="detail.jsp">白茶</a></li>
                    <li><a href="detail.jsp">花茶</a></li>
                    <li><a href="detail.jsp">黑茶</a></li>
                </ul>
                <ul class="fenlei">
                    <div class="pr_fenlei"><a href="#">咖啡</a></div>
                    <li><a href="detail.jsp">猫屎</a></li>
                    <li><a href="detail.jsp">拿铁</a></li>
                    <li><a href="detail.jsp">美式</a></li>
                    <li><a href="detail.jsp">摩卡</a></li>
                    <li><a href="detail.jsp">速溶</a></li>
                </ul>
            </div>
            <!-- 左侧商品推荐 -->
            <div class="sidebar2">
                <div class="title">产品推荐</div>
                <div class="see-all">
                    <ul class="item-recommend">
                        <li><a href="detail.jsp"><img src="images/new-pro.jpg" width="172" height="150"  /></a></li>
                        <li><a href="detail.jsp">茶叶研发基地，拥有完备手续的流转土地面积1.2万亩</a></li>
                        <li class="price">¥<strong>165</strong></li>
                    </ul>
                    <ul class="item-recommend">
                        <li><a href="detail.jsp"><img src="images/new-pro.jpg" width="172" height="150"  /></a></li>
                        <li><a href="detail.jsp">茶叶研发基地，拥有完备手续的流转土地面积1.2万亩</a></li>
                        <li>¥<strong>165</strong></li>
                    </ul>
                </div>
            </div>
          <!-- 左侧商品推荐  END -->
        </div>
        
        <div class="new-pro">
            <div class="tit"><a href="">热销产品</a></div>
    <!-- 中间商品展示----分页 -->
            <div class="item4line1">
            	<c:forEach var="product" items="${page.list }">	
                <ul>
                    <li><a href="productDetail?proId=${product.proId }"><img src="products/${product.imgPath }" /></a></li>
                    <li><a href="productDetail?proId=${product.proId }">${product.proName }</a></li>
                    <li class="price"><strong>${product.price }</strong> <span>已售：1122000斤</span></li>
                </ul>
               </c:forEach>
    
            </div>
            <!-- 中间商品展示----END -->
            <!-- 分页按钮 -->
            <aside class="paging">
		       <a href="sale?pageNow=1">第一页</a>
		       <a href="sale?pageNow=${page.getPre() }">上一页</a>
		       <a>…</a>
		       <a href="sale?pageNow=${page.getNext() }">下一页</a>
		       <a href="sale?pageNow=${page.totalPage }">最后一页</a>
		      <a href="javascript:;">共${page.totalPage }页</a>
		      </aside>
            <!-- 分页按钮  END -->
        </div>
    </div>
</div>



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
</body>
</html>
