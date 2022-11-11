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
		div>
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
		<div class="welcome wrap">管理员${name.EU_USER_ID}您好，欢迎回到管理后台。</div>
	</div>
	<div id="position" class="wrap">
		您现在的位置：<a href="index.jsp">校园旧书交易</a> &gt; 修改分类
	</div>
	<div id="main" class="wrap">
		<div class="main">
			<h2>修改分类</h2>
			<div class="manage" style="margin: 95px auto">
				<form action="doProductClassUpdate">
					<table class="form">
						<tr>
							<td class="field">父分类：</td>
							<td><input type="hidden" name="id" value="${epc.EPC_ID }" />
								<select name="parentId">
									<option value="0">根栏目</option>
									<c:forEach var="epc1" items="${epclist}">
										<c:if test="${epc1.EPC_PARENT_ID==0}">
											<c:if test="${epc.EPC_PARENT_ID==epc1.EPC_ID}">
												<option value="${epc1.EPC_ID }" selected="selected">${epc1.EPC_NAME }</option>
											</c:if>
											<c:if test="${epc.EPC_PARENT_ID!=epc1.EPC_ID}">
												<option value="${epc1.EPC_ID }">${epc1.EPC_NAME }</option>
											</c:if>
										</c:if>
									</c:forEach>
							</select></td>
						</tr>
						<tr>
							<td class="field">分类名称：</td>
							<td><input type="text" class="text" name="className"
								value="${epc.EPC_NAME }" /></td>
						</tr>
						<tr>
							<td>&nbsp;</td>
							<td><label class="ui-blue"><input type="submit"
									name="submit" value="提交" /></label></td>
						</tr>
					</table>
				</form>
			</div>
		</div>
		<div class="clear" style="margin: 200px auto"></div>
	</div>
	<%@ include file="/include/footer.jsp"%>
</body>
</html>

