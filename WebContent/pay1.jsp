<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<title>购物车</title>
<style type="text/css">
body{
	background-image: url("images/1.jpg");
}
table {
	width: 100%;
	border-collapse: collapse;
	border: 1px solid black;
	text-align: center;
	margin: auto;
	margin-top: 200px;
	background-color: #AEC7E1;
}

td {
	border: 1px solid black;
	height: 30px;
}

#input1 {
	width: 20px;
}

a {
	text-decoration: none;
}
body{
	margin: 0px;
}
img {
	width: 100%;
	height: 100%;
}
</style>
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		$(".allcheck").click(function() {
			if ($(this).is(":checked"))
				$(".check").prop("checked", true);
			else
				$(".check").prop("checked", false);
		});
	});

	function add(btn) {
		var count = parseInt($(btn).next().val()) + 1;
		$obj = $(btn).parent().siblings().eq(2).html();
		var total = parseInt($obj);
		if (total > 0) {
			total = total - 1;
			$(btn).next().val(count);
			$(btn).parent().siblings().eq(2).html(total);
		}
		checkOut();
	}

	function sub(btn) {
		var count = parseInt($(btn).prev().val()) - 1;
		if (count > -1) {
			$obj = $(btn).parent().siblings().eq(2).html();
			var total = parseInt($obj);
			total = total + 1;
			$(btn).prev().val(count);
			$(btn).parent().siblings().eq(2).html(total);
		}
		checkOut();
	}

	function del(btn) {
		$(btn).parent().parent().remove();
		checkOut();
	}

	function checkOut() {
		var money = 0;
		$obj = $("tbody>tr");
		for (var i = 0; i < $obj.length; i++) {
			money += $obj.eq(i).children().eq(3).html()
					* $obj.eq(i).children().eq(4).children().eq(1).val();
		}
		$("tfoot>tr").eq(0).children().eq(0).children().eq(1).html(money);
	}
	function show() {
		$("td").show();
		$("a").show();
	}
	function delAll() {
		$obj = $("tbody>tr");
		for (var i = 0; i < $obj.length; i++) {
			if ($obj.eq(i).children().eq(0).children().eq(0).is(":checked")) {
				$obj.eq(i).remove();
			}
		}
	}
</script>
</head>
<body>
	<form action="" method="post">
		<table>
			<thead>
				<tr>
					<td style="display: none">全选<input type="checkbox"
						class="allcheck" /></td>
					<td>商品名称</td>
					<td>库存</td>
					<td>价格</td>
					<td>数量</td>
					<td>操作</td>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td style="display: none"><input class="check" type="checkbox" /></td>
					<td>数学</td>
					<td>20</td>
					<td>15</td>
					<td><input type="button" value="+" onclick="add(this)" /> <input
						id="input1" type="text" value="0" /> <input type="button"
						value="-" onclick="sub(this)" /></td>
					<td><input type="button" value="移除" onclick="del(this)" /></td>
				</tr>
				<tr>
					<td style="display: none"><input class="check" type="checkbox" /></td>
					<td>语文</td>
					<td>25</td>
					<td>10</td>
					<td><input type="button" value="+" onclick="add(this)" /> <input
						id="input1" type="text" value="0" /> <input type="button"
						value="-" onclick="sub(this)" /></td>
					<td><input type="button" value="移除" onclick="del(this)" /></td>
				</tr>
			</tbody>
			<tfoot>
				<tr>
					<td colspan="6"><span>总计：￥</span><span></span><a href="done.jsp">去结算</a><a
						href="main.jsp">&nbsp;&nbsp;继续购物</a><a href="#" onclick="show()">&nbsp;&nbsp;编辑</a><a
						href="#" style="display: none" onclick="delAll()">
							&nbsp;&nbsp;批量删除</a></td>
				</tr>
			</tfoot>
		</table>
	</form>
</body>
</html>