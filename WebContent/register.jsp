<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>校园旧书互换</title>
<link type="text/css" rel="stylesheet" href="css/style.css" />
<script type="text/javascript" src="scripts/function.js"></script>
<script type="text/javascript" src="scripts/calendar.js"></script>
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
				<div class="box">
					<h1>填填您的信息哦亲</h1>
					<ul class="steps clearfix">

					</ul>
					<form id="regForm" method="post" action="register"
						onsubmit="return checkForm(this);">
						<table>
							<tr>
								<td class="field">学号：</td>
								<td><input class="text" type="text" name="userName"
									onfocus="FocusItem(this)"
									onblur="CheckItem(this),check(this.value);"
									placeholder="输入您唯一的学号" /><span id="sp"></span></td>
							</tr>
							<tr>
								<td class="field">姓名：</td>
								<td><input type="text" class="text" name="name"
									placeholder="输入您的真实姓名" /></td>
							</tr>
							<tr>
								<td class="field">登录密码：</td>
								<td><input class="text" type="password" id="passWord"
									name="passWord" onfocus="FocusItem(this)"
									onblur="CheckItem(this);" placeholder="输入您的密码" /><span></span></td>
							</tr>
							<tr>
								<td class="field">确认密码：</td>
								<td><input class="text" type="password" name="rePassWord"
									onfocus="FocusItem(this)" onblur="CheckItem(this);"
									placeholder="再输入一遍密码" /><span></span></td>
							</tr>
							<tr>
								<td class="field">性别：</td>
								<td><input type="radio" name="sex" value="T"
									checked="checked" />男 <input type="radio" name="sex" value="F" />女</td>
							</tr>
							<tr>
								<td class="field">出生日期：</td>
								<td><input type="text" name="birthday"
									onfocus="c.showMoreDay = false;c.show(this);" /></td>
							</tr>
							<tr>
								<td class="field">邮箱：</td>
								<td><input type="text" class="text" name="email" value=""
									placeholder="输入您可用的邮箱" /></td>
							</tr>
							<tr>
								<td class="field">手机号码：</td>
								<td><input type="text" class="text" name="mobile" value=""
									placeholder="输入您能拨通的号码" /></td>
							</tr>
							<tr>
								<td class="field">班级：</td>
								<td><input type="text" class="text" name="address" value=""
									placeholder="例如：软件1803班" /></td>
							</tr>
							<tr>
								<td class="field">验证码：</td>
								<td><input class="text verycode" type="text"
									name="veryCode" onfocus="FocusItem(this)"
									onblur="Checknum(this);" /><img id="veryCode" alt="换一张"
									style="cursor: hand;" src="usernum?<%=new Date().getTime() %>"
									onclick="change(this)" /><span id="msg"></span></td>
							</tr>
							<tr>
								<td></td>
								<td><label class="ui-green"><input type="submit"
										name="submit" disabled=true id="sub" value="确定" /></label></td>
							</tr>
						</table>
					</form>
				</div>
			</div>
			<div class="clear"></div>
		</div>
		<div id="footer">Copyright &copy; 2022南华大学船山学院软件1803班王旭work.
			湘ICP备案20189350302号</div>
</body>
</html>

