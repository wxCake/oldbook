<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>校园旧书互换</title>
<link type="text/css" rel="stylesheet" href="../css/style.css" />
<script type="text/javascript" src="../scripts/function-manage.js"></script>
<c:if test="${empty sessionScope.name}">
	<script type="text/javascript">
alert('请先登录');
location.href="..//login.jsp";
</script>
</c:if>
</head>
<body>
	<div id="header" class="wrap">
		<div class="title">校园旧书交易管理界面</div>
		<div class="help">
			<a href="../indexSelect">返回前台</a>
		</div>
		<div class="navbar">
			<ul class="clearfix">
				<li class="current"><a href="index.jsp">首页</a></li>
				<li><a href="user">用户</a></li>
				<li><a href="productSelect">旧书</a></li>
				<li><a href="productClass">分类</a></li>
				<li><a href="ordersel">订单</a></li>
				<li><a href="newsselect">公告</a></li>
			</ul>
		</div>
	</div>
	<div id="childNav">
		<div class="welcome wrap">管理员admin，您正在使用后台管理系统。</div>
	</div>
	<div id="position" class="wrap">
		您现在的位置：<a href="index.jsp">校园旧书交易</a> &gt; 管理后台
	</div>
	<div id="main" class="wrap">

		<div class="main">
			<h2>管理首页</h2>
			<div id="welcome" class="manage" style="margin: 95px auto">
				<div class="shadow">
					<em class="corner lb"></em> <em class="corner rt"></em>
					<div class="box">
						<div class="msg">
							<p style="font-size: 20px; color: blue">请进行您的选择</p>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="clear"></div>
	</div>
	<%@ include file="/include/footer.jsp"%>
</body>
</html>
