<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>校园旧书互换</title>
<link type="text/css" rel="stylesheet" href="../css/style.css" />
<script type="text/javascript" src="../scripts/function-manage.js"></script>
<script type="text/javascript">
  function jump2(p){
	  location.href='productSelect?cp='+p;
  }
  </script>
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
				<li class="current"><a href="productSelect">旧书</a></li>
				<li><a href="productClass">分类</a></li>
				<li><a href="ordersel">订单</a></li>
				<li><a href="newsselect">公告</a></li>
			</ul>
		</div>
	</div>
	<div id="childNav">
		<div class="welcome wrap">管理员${name.EU_USER_ID}您好，欢迎回到管理后台。</div>
	</div>
	<div id="position" class="wrap">
		您现在的位置：<a href="index.jsp">校园旧书交易</a> &gt; 管理旧书
	</div>
	<div id="main" class="wrap">
		<div class="main">
			<h2>旧书管理</h2>

			<div class="manage">
				<table class="list">
					<tr>
						<th>ID</th>
						<th>旧书名称</th>
						<th>操作</th>
					</tr>
					<c:forEach var="p" items="${eplist}">
						<tr>
							<td class="first w4 c">${p.EP_ID }</td>
							<td class="thumb"><img
								src="../images/product/${p.EP_FILE_NAME }" width="80"
								height="80" /><a href="../selectProductView?id=${p.EP_ID }"
								target="_blank">${p.EP_NAME }</a></td>
							<td class="w1 c"><a href="toProductUpdate?id=${p.EP_ID }">修改</a>
								<a href="javascript:productDel(${p.EP_ID })">删除</a></td>
						</tr>
					</c:forEach>
				</table>
			</div>
			<div class="pager">
				<ul class="clearfix">
					<li>当前:${cpage}/${tpage }页</li>
					<li><a href="productSelect?cp=1">首页</a></li>
					<li><a href="productSelect?cp=${cpage-1<=0 ? 1 : cpage-1 }">上一页</a></li>
					<li><a
						href="productSelect?cp=${cpage+1>=tpage ? tpage : cpage+1 }">下一页</a></li>
					<li><a href="productSelect?cp=${tpage }">尾页</a></li>
					<li><select onchange="jump2(this.value)">
							<c:forEach var="i" begin="1" end="${tpage}">
								<option ${i==cpage ? "selected" : "" } value="${i}">${i }页</option>
							</c:forEach>
					</select></li>
				</ul>
			</div>
		</div>
		<div class="clear"></div>
	</div>
	<%@ include file="/include/footer.jsp"%>
</body>
</html>

