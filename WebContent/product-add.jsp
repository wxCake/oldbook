<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>校园旧书互换</title>
<link type="text/css" rel="stylesheet" href="css/style.css" />
<script type="text/javascript" src="scripts/function-manage.js"></script>
</head>
<body>
	<div id="header" class="wrap">
		<div class="title">校园旧书交易平台</div>
		<div>&nbsp;</div>
		<div class="help">
			<input
				style="width: 400px; height: 30px; border-color: #4d59fd; border-width: 2px; font-size: 15px;"
				type="text" id="selectname" value="${search_words }" /><input
				type="button"
				style="width: 110px; height: 33px; background: #4d59fd; border-color: #4d59fd; color: #fff; font-size: 15px; border-width: 0px;"
				onclick="javascript:selectname()" value="🔍" /><a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a>
			<c:if test="${name!=null}">
				<a href="selectdd?dd=${name.EU_USER_ID }">我的订单</a>
			</c:if>
			<c:if test="${name!=null}">当前用户${name.EU_USER_ID }</c:if>
			<a href="ShopSelect" class="shopping">购物车</a>
			<c:if test="${name==null}">
				<a href="login.jsp">登录</a>|<a href="register.jsp">注册</a>
			</c:if>
			<c:if test="${name!=null}">
				<a href="zx">退出</a>
			</c:if>
			<c:if test="${name.EU_STATUS==2}">
				<a href="manage/index.jsp">去后台</a>
			</c:if>
		</div>
		<div>&nbsp;</div>
		<div class="navbar">
			<ul class="clearfix">
				<li class="current"><a href="selectProductList">◀首页</a></li>
			</ul>
		</div>
	</div>

	<div>&nbsp;</div>
	<div id="position" class="wrap">
		您现在的位置：<a href="selectProductList">首页</a> &gt; 发布
	</div>
	<div id="main" class="wrap">
		<div class="main">
			<h2 style="font-size: 25px">发布旧书</h2>
			<div class="manage" style="margin: 100px auto">
				<form action="doProductAdd" method="post"
					enctype="multipart/form-data">
					<table class="form">
						<tr>
							<td class="field" style="font-size: 18px">旧书名称：</td>
							<td><input type="text" class="text" name="productName" /></td>
						</tr>
						<tr>
							<td class="field" style="font-size: 18px">所属分类：</td>
							<td><select name="parentId">
									<c:forEach var="f" items="${flist}">
										<option value="${f.EPC_ID }" disabled="disabled">${f.EPC_NAME }</option>
										<c:forEach var="c" items="${clist}">
											<c:if test="${f.EPC_ID==c.EPC_PARENT_ID}">
												<option value="${f.EPC_ID }-${c.EPC_ID }">&nbsp;&nbsp;${c.EPC_NAME }</option>
											</c:if>
										</c:forEach>
									</c:forEach>
							</select></td>
						</tr>
						<tr>
							<td class="field" style="font-size: 18px">旧书封面：</td>
							<td><input type="file" class="text" name="photo" /></td>
						</tr>
						<tr>
							<td class="field" style="font-size: 18px">旧书价格：</td>
							<td><input type="text" class="text tiny" name="productPrice" />
								元(整数)</td>
						</tr>
						<tr>
							<td class="field" style="font-size: 18px">描述：</td>
							<td><input type="text" class="text" name="productDesc" /></td>
						</tr>
						<tr>
							<td class="field" style="font-size: 18px">库存：</td>
							<td><input type="text" class="text tiny" name="productStock" /></td>
						</tr>
						<tr>
							<td></td>
							<td><label class="ui-blue"><input type="submit"
									name="submit" value="添加" /></label></td>
						</tr>
					</table>
				</form>
			</div>
		</div>
		<div class="clear"></div>
	</div>
	<%@ include file="/include/footer.jsp"%>
</body>
</html>

