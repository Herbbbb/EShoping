<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

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
    <dd><a href="product_list" class="active">商品列表</a></dd>
    <dd><a href="product_detail.jsp">添加商品</a></dd>
    <dd><a href="gotoShopServlet">预览商品</a></dd>
    <dd><a href="recycle_bin.do">商品回收站</a></dd>
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

<style>
.dataStatistic{width:400px;height:200px;border:1px solid #ccc;margin:0 auto;margin:10px;overflow:hidden}
#cylindrical{width:400px;height:200px;margin-top:-15px}
#line{width:400px;height:200px;margin-top:-15px}
#pie{width:400px;height:200px;margin-top:-15px}
</style>
<section class="rt_wrap content mCustomScrollbar">

 <div class="rt_content">
     <h1 style="color:red;font-size:20px;font-weight:bold;text-align:center;">
     	2017第一季度销售情况分析</h1>
<!--统计图-->
<section style="overflow:hidden">
    <!--柱状图-->
    <div class="dataStatistic fl">
     <div id="cylindrical">
     </div>
    </div>
    <!--线性图-->
    <div class="dataStatistic fl">
     <div id="line">
     </div>
    </div>
    <!--饼状图-->
    <div class="dataStatistic fl">
     <div id="pie">
     </div>
    </div>
</section>   		
      <table class="table">
       <tr>
        <th>商品名</th>
        <th>上架日期</th>
        <th>浏览量</th>
        <th>下单量</th>
        <th>同比增长</th>
        <th>收入</th>
        <th>操作</th>
       </tr>
       <tr>
        <td style="width:265px;"><div class="cut_title ellipsis">男装</div></td>
        <td>2017-1-1</td>
        <td>1465</td>
        <td>5</td>
        <td>-9%</td>
        <td>4089</td>
        <td>
         <a href="#">详情</a>
        </td>
       </tr>
       <tr>
        <td style="width:265px;"><div class="cut_title ellipsis">元宵</div></td>
        <td>2017-1-1</td>
        <td>19034</td>
        <td>431</td>
        <td>45%</td>
        <td>6899</td>
        <td>
         <a href="#">详情</a>
        </td>
       </tr>
       <tr>
        <td style="width:265px;"><div class="cut_title ellipsis">羽绒服</div></td>
        <td>2017-1-3</td>
        <td>879</td>
        <td>12</td>
        <td>2%</td>
        <td>2198</td>
        <td>
         <a href="#">详情</a>
        </td>
       </tr>
      </table>
      <aside class="paging">
       <a>第一页</a>
       <a>1</a>
       <a>2</a>
       <a>…</a>
       <a>最后一页</a>
      </aside>
     </section>
     <section>
      <h2><strong style="color:grey;">分列内容布局</strong></h2>
      <ul class="ulColumn2">
       <li>
        <span class="item_name" style="width:120px;">商品名称：</span>
        <input type="text" class="textbox textbox_295" placeholder="文本信息提示..."/>
        <span class="errorTips">错误提示信息...</span>
       </li>
       <li>
        <span class="item_name" style="width:120px;">品牌：</span>
        <select class="select">
         <option>选择品牌</option>
        </select>
        <span class="errorTips">错误提示信息...</span>
       </li>
       <li>
        <span class="item_name" style="width:120px;">是否热销：</span>
        <label class="single_selection"><input type="radio" name="name"/>推荐</label>
        <label class="single_selection"><input type="radio" name="name"/>不推荐</label>
       </li>
       <li>
        <span class="item_name" style="width:120px;">摘要：</span>
        <textarea placeholder="摘要信息" class="textarea" style="width:500px;height:100px;"></textarea>
       </li>
       <li>
        <span class="item_name" style="width:120px;">上传图片：</span>
        <label class="uploadImg">
         <input type="file"/>
         <span>上传图片</span>
        </label>
       </li>
       <li>
        <span class="item_name" style="width:120px;"></span>
        <input type="submit" class="link_btn"/>
       </li>
      </ul>
     </section>
     <!--tabStyle-->
     <script>
     $(document).ready(function(){
		 //tab
		 $(".admin_tab li a").click(function(){
		  var liindex = $(".admin_tab li a").index(this);
		  $(this).addClass("active").parent().siblings().find("a").removeClass("active");
		  $(".admin_tab_cont").eq(liindex).fadeIn(150).siblings(".admin_tab_cont").hide();
		 });
		 });
     </script>
     <section>
      <ul class="admin_tab">
       <li><a class="active">自定义标题</a></li>
       <li><a>自定义标题</a></li>
       <li><a>...可追加</a></li>
      </ul>
      <!--tabCont-->
      <div class="admin_tab_cont" style="display:block;">添加时，对其增加一个父级，tabContent01子项无样式，具体情况单独定义。</div>
      <div class="admin_tab_cont">tabContent02，内容根据具体数据二次单独定义，公共样式单独调用</div>
      <div class="admin_tab_cont">可追加</div>
     </section>
          <section>
      <ul class="admin_tab">
       <li><a class="active">自定义标题</a></li>
       <li><a>自定义标题</a></li>
       <li><a>...可追加</a></li>
      </ul>
      <!--tabCont-->
      <div class="admin_tab_cont" style="display:block;">
      <!--左右分栏：左侧栏目-->
       <div class="cont_col_lt mCustomScrollbar" style="height:500px;">
           <table class="table fl">
            <tr>
             <th>角色</th>
             <th>操作</th>
            </tr>
            <tr>
             <td class="center">顶级管理员</td>
             <td class="center"><a class="inner_btn">DeathGhost</a></td>
            </tr>
            <tr>
             <td class="center">采购人员</td>
             <td class="center"><a class="inner_btn">DeathGhost</a></td>
            </tr>
           </table>
           <table class="table fl" style="margin-top:8px;">
            <tr>
             <th>角色</th>
             <th>操作</th>
            </tr>
            <tr>
             <td class="center">顶级管理员</td>
             <td class="center"><a class="inner_btn">DeathGhost</a></td>
            </tr>
            <tr>
             <td class="center">采购人员</td>
             <td class="center"><a class="inner_btn">DeathGhost</a></td>
            </tr>
           </table>
       </div>
       <!--左右分栏：右侧栏-->
       <div class="cont_col_rt">
           <table class="table fl">
            <tr>
             <th>资源</th>
             <th>描述</th>
             <th>操作</th>
            </tr>
            <tr>
             <td class="center">测试</td>
             <td>数据信息过多（扩展性太大），不建议使用此布局，以免数据溢出。</td>
             <td class="center"><a class="inner_btn">DeathGhost</a></td>
            </tr>
            <tr>
             <td class="center">测试</td>
             <td>数据信息过多（扩展性太大），不建议使用此布局，以免数据溢出。</td>
             <td class="center"><a class="inner_btn">DeathGhost</a></td>
            </tr>
           </table>
       </div>
      </div>
      <div class="admin_tab_cont">tabContent02，内容根据具体数据二次单独定义，公共样式单独调用</div>
      <div class="admin_tab_cont">可追加</div>
     </section>
    <!--结束：以下内容则可删除，仅为素材引用参考-->

 </div>
</section>
<script src="js/amcharts.js" type="text/javascript"></script>
<script src="js/serial.js" type="text/javascript"></script>
<script src="js/pie.js" type="text/javascript"></script>
<script type="text/javascript">
    $(document).ready(function (e) {
        GetSerialChart();
        MakeChart(json);
    });
    var json = [
  { "name": "1.1", "value": "35" },
  { "name": "15", "value": "60" },
  { "name": "22", "value": "22" },
  { "name": "2.5", "value": "65" },
  { "name": "10", "value": "35" },
  { "name": "17", "value": "22" },
  { "name": "3.5", "value": "43" },
  { "name": "10日", "value": "55" }
  ]
    //柱状图  
    function GetSerialChart() {

        chart = new AmCharts.AmSerialChart();
        chart.dataProvider = json;
        //json数据的key  
        chart.categoryField = "name";
        //不选择      
        chart.rotate = false;
        //值越大柱状图面积越大  
        chart.depth3D = 20;
        //柱子旋转角度角度
        chart.angle = 30;
        var mCtCategoryAxis = chart.categoryAxis;
        mCtCategoryAxis.axisColor = "#efefef";
        //背景颜色透明度
        mCtCategoryAxis.fillAlpha = 0.5;
        //背景边框线透明度
        mCtCategoryAxis.gridAlpha = 0;
        mCtCategoryAxis.fillColor = "#efefef";
        var valueAxis = new AmCharts.ValueAxis();
        //左边刻度线颜色  
        valueAxis.axisColor = "#ccc";
        //标题
        valueAxis.title = "用户浏览量";
        //刻度线透明度
        valueAxis.gridAlpha = 0.2;
        chart.addValueAxis(valueAxis);
        var graph = new AmCharts.AmGraph();
        graph.title = "value";
        graph.valueField = "value";
        graph.type = "column";
        //鼠标移入提示信息
        graph.balloonText = "测试数据[[category]] [[value]]";
        //边框透明度
        graph.lineAlpha = 0.3;
        //填充颜色 
        graph.fillColors = "#b9121b";
        graph.fillAlphas = 1;

        chart.addGraph(graph);

        // CURSOR
        var chartCursor = new AmCharts.ChartCursor();
        chartCursor.cursorAlpha = 0;
        chartCursor.zoomable = false;
        chartCursor.categoryBalloonEnabled = false;
        chart.addChartCursor(chartCursor);

        chart.creditsPosition = "top-right";

        //显示在Main div中
        chart.write("cylindrical");
    }
    //折线图
    AmCharts.ready(function () {
        var chart = new AmCharts.AmSerialChart();
        chart.dataProvider = json;
        chart.categoryField = "name";
        chart.angle = 30;
        chart.depth3D = 20;
        //标题
        //chart.addTitle("3D折线图Demo", 15);  
        var graph = new AmCharts.AmGraph();
        chart.addGraph(graph);
        graph.valueField = "value";
        //背景颜色透明度
        graph.fillAlphas = 0.3;
        //类型
        graph.type = "line";
        //圆角
        graph.bullet = "round";
        //线颜色
        graph.lineColor = "#8e3e1f";
        //提示信息
        graph.balloonText = "[[name]]: [[value]]";
        var categoryAxis = chart.categoryAxis;
        categoryAxis.autoGridCount = false;
        categoryAxis.gridCount = json.length;
        categoryAxis.gridPosition = "start";
        chart.write("line");
    });
    //饼图
    //根据json数据生成饼状图，并将饼状图显示到div中
    function MakeChart(value) {
        chartData = eval(value);
        //饼状图
        chart = new AmCharts.AmPieChart();
        chart.dataProvider = chartData;
        //标题数据
        chart.titleField = "name";
        //值数据
        chart.valueField = "value";
        //边框线颜色
        chart.outlineColor = "#fff";
        //边框线的透明度
        chart.outlineAlpha = .8;
        //边框线的狂宽度
        chart.outlineThickness = 1;
        chart.depth3D = 20;
        chart.angle = 30;
        chart.write("pie");
    }
</script>
</body>
</html>

