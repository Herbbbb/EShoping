<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
	$(function(){
		$("#upload").click(function(){
			var src = $(".addBorder").val();
		});
	});
	
	/* $(function(){
		$(".link_btn").click(function(){
			var file=$("#file").val();
			var path=file.substring(file.lastIndexOf("\\")+1);
			alert(path);
			$(".img11").attr("src","products/"+path);
			var select2 = $("#select2").val();
			$("#form1").attr("action", "uploadProduct");
		});
	}); */
	
	
	$(function(){
		$(".link_btn").click(function(){
			var files = $(this).files; 
			var file=$("#file").val();
			alert(file);
			var reader = new FileReader();       
			var path=reader.readAsDataURL(file[0]); 
			//var path=file.substring(file.lastIndexOf("\\")+1);
			alert(path);
			$(".img11").attr("src","products/"+path);
			var select2 = $("#select2").val();
			$("#form1").attr("action", "");
		});
	});
	
</script>
<style type="text/css">
	.center{
		margin-left: -940px;
		font-size: 15px;
	}

	.img11{
		width:80px;
		height:74px;
	}
</style>

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
<form action="" method="post" enctype="multipart/form-data" id="form1">
	<section class="rt_wrap content mCustomScrollbar">
	 <div class="rt_content">
	      <div class="page_title">
	       <h2 class="fl">商品详情</h2>
	      </div>
	     <section>
	      <ul class="ulColumn2">
	      <li>
	        <span class="item_name" style="width:120px;">商品编号：</span>
	        <input type="text" name="proId" class="textbox textbox_295" placeholder="商品名称..."/>
	       </li>
	       <li>
	        <span class="item_name" style="width:120px;">商品名称：</span>
	        <input type="text" name="proName" class="textbox textbox_295" placeholder="商品名称..."/>
	       </li>
	       <li>
	        <span class="item_name" style="width:120px;">商品价格：</span>
	        <input type="text" name="price" class="textbox textbox_295" placeholder="商品价格..."/>
	       </li>
	       <li>
	        <span class="item_name" style="width:120px;">商品库存：</span>
	        <input type="text" name="counts" class="textbox textbox_295" placeholder="商品库存..."/>
	       </li>
	      
	       <li>
	        <span class="item_name" style="width:120px;">分类：</span>
	        <select name="select2" class="select" id="select2">
	         <option>选择产品分类</option>
	         <option>家电</option>
	         <option>日用</option>
	         <option>水果</option>
	        </select>
	       </li>
	      
	       <li>
	       <c:out value="${path }"></c:out>
	        <span class="item_name" style="width:120px;">上传图片：</span>
	        <label class="uploadImg" ><img  src="products/${path }" class="img11" id="proimg" ">
	        <input type="file" class="addBorder" name="file" id="file" />	       
	        </label>
	        <input type="submit" class="link_btn" id="upload" value="上传图片" >
       </li>
	       <li>
	        <span class="item_name" style="width:120px;">产品详情：</span>
	        <script id="editor" name="editor" type="text/plain" style="width:1024px;height:400px;margin-left:120px;margin-top:0;"></script>
	           <!--ueditor可删除下列信息-->
	           <div id="btns" style="margin-left:120px;margin-top:8px;">
	        </div>
	       </li>
	       <li>
	        <span class="item_name" style="width:120px;"></span>
	        <input type="submit" class="link_btn" value="保存"/>
	       </li>
	      </ul>
	     </section>
	 </div>
	</section>
</form>
<script src="js/ueditor.config.js"></script>
<script src="js/ueditor.all.min.js"> </script>
<script type="text/javascript">

    //实例化编辑器
    //建议使用工厂方法getEditor创建和引用编辑器实例，如果在某个闭包下引用该编辑器，直接调用UE.getEditor('editor')就能拿到相关的实例
    var ue = UE.getEditor('editor');


    function isFocus(e){
        alert(UE.getEditor('editor').isFocus());
        UE.dom.domUtils.preventDefault(e)
    }
    function setblur(e){
        UE.getEditor('editor').blur();
        UE.dom.domUtils.preventDefault(e)
    }
    function insertHtml() {
        var value = prompt('插入html代码', '');
        UE.getEditor('editor').execCommand('insertHtml', value)
    }
    function createEditor() {
        enableBtn();
        UE.getEditor('editor');
    }
    function getAllHtml() {
        alert(UE.getEditor('editor').getAllHtml())
    }
    function getContent() {
        var arr = [];
        arr.push("使用editor.getContent()方法可以获得编辑器的内容");
        arr.push("内容为：");
        arr.push(UE.getEditor('editor').getContent());
        alert(arr.join("\n"));
    }
    function getPlainTxt() {
        var arr = [];
        arr.push("使用editor.getPlainTxt()方法可以获得编辑器的带格式的纯文本内容");
        arr.push("内容为：");
        arr.push(UE.getEditor('editor').getPlainTxt());
        alert(arr.join('\n'))
    }
    function setContent(isAppendTo) {
        var arr = [];
        arr.push("使用editor.setContent('欢迎使用ueditor')方法可以设置编辑器的内容");
        UE.getEditor('editor').setContent('欢迎使用ueditor', isAppendTo);
        alert(arr.join("\n"));
    }
    function setDisabled() {
        UE.getEditor('editor').setDisabled('fullscreen');
        disableBtn("enable");
    }

    function setEnabled() {
        UE.getEditor('editor').setEnabled();
        enableBtn();
    }

    function getText() {
        //当你点击按钮时编辑区域已经失去了焦点，如果直接用getText将不会得到内容，所以要在选回来，然后取得内容
        var range = UE.getEditor('editor').selection.getRange();
        range.select();
        var txt = UE.getEditor('editor').selection.getText();
        alert(txt)
    }

    function getContentTxt() {
        var arr = [];
        arr.push("使用editor.getContentTxt()方法可以获得编辑器的纯文本内容");
        arr.push("编辑器的纯文本内容为：");
        arr.push(UE.getEditor('editor').getContentTxt());
        alert(arr.join("\n"));
    }
    function hasContent() {
        var arr = [];
        arr.push("使用editor.hasContents()方法判断编辑器里是否有内容");
        arr.push("判断结果为：");
        arr.push(UE.getEditor('editor').hasContents());
        alert(arr.join("\n"));
    }
    function setFocus() {
        UE.getEditor('editor').focus();
    }
    function deleteEditor() {
        disableBtn();
        UE.getEditor('editor').destroy();
    }
    function disableBtn(str) {
        var div = document.getElementById('btns');
        var btns = UE.dom.domUtils.getElementsByTagName(div, "button");
        for (var i = 0, btn; btn = btns[i++];) {
            if (btn.id == str) {
                UE.dom.domUtils.removeAttributes(btn, ["disabled"]);
            } else {
                btn.setAttribute("disabled", "true");
            }
        }
    }
    function enableBtn() {
        var div = document.getElementById('btns');
        var btns = UE.dom.domUtils.getElementsByTagName(div, "button");
        for (var i = 0, btn; btn = btns[i++];) {
            UE.dom.domUtils.removeAttributes(btn, ["disabled"]);
        }
    }

    function getLocalData () {
        alert(UE.getEditor('editor').execCommand( "getlocaldata" ));
    }

    function clearLocalData () {
        UE.getEditor('editor').execCommand( "clearlocaldata" );
        alert("已清空草稿箱")
    }
</script>
</body>
</html>
