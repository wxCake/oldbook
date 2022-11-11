<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>校园旧书互换</title>
<link type="text/css" rel="stylesheet" href="../css/style.css" />
<script type="text/javascript" src="../scripts/function-manage.js"></script>
</head>
<body>
	<div id="header" class="wrap">
		<div class="title">校园旧书交易管理界面</div>
		<div class="help">
			<a href="../indexSelect">返回前台页面</a>
		</div>
		<div class="navbar">
			<ul class="clearfix">
				<li><a href="index.jsp">首页</a></li>
				<li><a href="user">用户</a></li>
				<li><a href="productSelect">旧书</a></li>
				<li><a href="productClass">分类</a></li>
				<li class="current"><a href="ordersel">订单</a></li>
				<li><a href="newsselect">公告</a></li>
			</ul>
		</div>
	</div>
	<div id="childNav">
		<div class="welcome wrap">管理员${name.EU_USER_ID}您好，欢迎回到管理后台。</div>
	</div>
	<div id="position" class="wrap">
		您现在的位置：<a href="index.jsp">校园旧书交易</a> &gt; 处理订单
	</div>
	<div id="main" class="wrap">
		<div class="main">
			<h2>处理订单</h2>
			<div class="manage">
				<form action="douporder">
					<table class="form">
						<tr>
							<td class="field">订单ID：</td>
							<td><input type="text" class="text" name="orderId"
								value="${order.EO_ID }" readonly="readonly" /></td>
						</tr>
						<tr>
							<td class="field">订购人姓名：</td>
							<td><input type="text" class="text" name="name"
								value="${order.EO_USER_NAME }" readonly="readonly" /></td>
						</tr>
						<tr>
							<td class="field">收货地址</td>
							<td><input type="text" class="text" name="addres"
								value="${order.EO_USER_ADDRESS }" readonly="readonly" /></td>
						</tr>
						<tr>
							<td class="field">总价格</td>
							<td><input type="text" class="text" name="cost"
								value="${order.EO_COST }" readonly="readonly" /></td>
						</tr>
						<tr>
							<td class="field">订单状态</td>
							<td><select name="tatus"
								onchange="change(this,${order.EO_STATUS })">
									<option value="1"
										${order.orderStatusStr=="未送达" ? "selected" : ""}>未送达</option>
									<option value="2"
										${order.orderStatusStr=="已送达" ? "selected" :""}>已送达</option>
									<option value="3"
										${order.orderStatusStr=="订单已完成" ? "selected" : ""}>订单已完成</option>

							</select></td>
						</tr>
						<tr>
							<td></td>
							<td><label class="ui-blue"><input type="submit"
									name="submit" value="更新" /></label></td>
						</tr>
					</table>
				</form>
			</div>
		</div>
		<div class="main">
			<h2>订单详细</h2>
			<div class="manage">
				<table border="1" width="600px" height="100px" bordercolor="red">
					<tr align="center">
						<td class="field">旧书名称</td>
						<td class="field">旧书封面</td>
						<td class="field">旧书价格</td>
						<td class="field">购买数量</td>
						<td class="field">旧书库存</td>
					</tr>
					<c:forEach var="d" items="${dlist}">
						<tr align="center">
							<td>${d.EP_NAME }</td>
							<td><img src="../images/product/${d.EP_FILE_NAME }"
								height="100" width="100" /></td>
							<td>${d.EP_PRICE }</td>
							<td>${d.EOD_QUANTITY }</td>
							<td>${d.EP_STOCK }</td>
						</tr>
					</c:forEach>
				</table>
			</div>
		</div>
		<div class="clear"></div>
	</div>
	<%@ include file="/include/footer.jsp"%>
</body>
</html>
