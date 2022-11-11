<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>校园旧书互换-首页</title>
<link type="text/css" rel="stylesheet" href="css/style.css" />
<script type="text/javascript" src="scripts/function.js"></script>
<script type="text/javascript">
function selectname(){
	  var name = document.getElementById("selectname").value;
	  location.href='selectProductList?name='+name;
}
function searchHot(name){
	location.href='selectProductList?name='+name;
}
</script>
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


	<div style="background: #0080ff;">
		<div id="register" class="wrap">
			<div class="shadow">
				<em class="corner lb"></em> <em class="corner rt"></em>
				<div></div>
				<div class="box" style="margin: 120px auto">
					<h1>登录</h1>
					<form id="loginForm" method="post" action="login"
						onsubmit="return checkForm(this)">
						<table>
							<tr>
								<td class="field">学号：</td>
								<td><input class="text" type="text" name="userName"
									onfocus="FocusItem(this)" onblur="CheckItem(this);" /><span></span></td>
							</tr>
							<tr>
								<td class="field">登录密码：</td>
								<td><input class="text" type="password" id="passWord"
									name="passWord" onfocus="FocusItem(this)"
									onblur="CheckItem(this);" /><span></span></td>
							</tr>
							<tr>
								<td class="field">验证码：</td>
								<td><input class="text verycode" type="text"
									name="veryCode" onfocus="FocusItem(this)"
									onblur="Checknum(this);" /><img id="veryCode" alt="看不清,换一张"
									style="cursor: hand;" src="usernum?<%=new Date().getTime() %>"
									onclick="change(this)" /><span id="msg"></span></td>
							</tr>
							<tr style="color: blue;">
								<td></td>
								<td><label class="ui-green"><input type="submit"
										name="submit" id="sub" value="立即登录" /></label></td>
							</tr>
						</table>
					</form>
				</div>
			</div>
			<div class="clear"></div>
		</div>
	</div>
	<div id="footer">Copyright &copy; 2022南华大学船山学院软件1803班王旭work.
		湘ICP备案20189350302号</div>
</body>
</html>

