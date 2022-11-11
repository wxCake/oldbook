<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
				<li class="current"><a href="productClass">分类</a></li>
				<li><a href="ordersel">订单</a></li>
				<li><a href="newsselect">公告</a></li>
			</ul>
		</div>
	</div>
	<div id="childNav">
		<div style="text-align: left; margin-left: 633px;">
			<input
				style="width: 70px; height: 30px; border-width: 0px; border-radius: 3px; background: #8080ff; cursor: pointer; outline: none; font-family: Microsoft YaHei; color: white; font-size: 15px;"
				type="button" class="add"
				onclick="location.href='productClass-add.jsp'" value="添加分类" />
		</div>
	</div>
	<div id="position" class="wrap">
		您现在的位置：<a href="index.jsp">校园旧书交易</a> &gt; 管理分类
	</div>
	<div id="main" class="wrap">
		<div class="main">
			<h2>分类管理</h2>
			<div class="manage">
				<table class="list">
					<tr>
						<th>ID</th>
						<th>分类名称</th>
						<th>操作</th>
					</tr>
					<c:forEach var="epc" items="${epclist}">
						<c:if test="${epc.EPC_PARENT_ID == 0}">
							<tr>
								<td class="first w4 c">${epc.EPC_ID}</td>
								<td>${epc.EPC_NAME}</td>
								<td class="w1 c"><a
									href="toProductClassUpdate?id=${epc.EPC_ID}">修改</a> <a
									href="productClassDel?id=${epc.EPC_ID}">删除</a></td>
							</tr>
							<c:forEach var="epc2" items="${epclist}">
								<c:if
									test="${epc.EPC_ID==epc2.EPC_PARENT_ID&&epc2.EPC_ID!=epc2.EPC_PARENT_ID}">
									<tr>
										<td class="first w4 c">${epc2.EPC_ID}</td>
										<td class="childClass">${epc2.EPC_NAME}</td>
										<td class="w1 c"><a
											href="toProductClassUpdate?id=${epc2.EPC_ID}">修改</a> <a
											href="javascript:productClassDel(${epc2.EPC_ID})">删除</a></td>
									</tr>
								</c:if>
							</c:forEach>
						</c:if>
					</c:forEach>
				</table>
			</div>
		</div>
		<div class="clear"></div>
	</div>
	<%@ include file="/include/footer.jsp"%>
</body>
</html>

