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
function check() {
	var num=parseInt(document.getElementById("y").value);
	if(num<0){
		document.getElementById("yy").innerHTML="<font color='red'>价格不能为负数</font>";
		document.getElementById("sub").disabled=true;
	}else{
		document.getElementById("yy").innerHTML="";
		document.getElementById("sub").disabled=false;
	}
}  
function check2() {
	var num=parseInt(document.getElementById("k").value);
	if(num<0){
		document.getElementById("kk").innerHTML="<font color='red'>库存不能为负数</font>";
		document.getElementById("sub").disabled=true;
	}else{
		document.getElementById("kk").innerHTML="";
		document.getElementById("sub").disabled=false;
	}
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
		您现在的位置：<a href="index.jsp">校园旧书交易</a> &gt; 旧书修改
	</div>
	<div id="main" class="wrap">
		<div class="main">
			<h2>修改旧书信息</h2>
			<div class="manage" style="margin: 95px auto">
				<form action="doProductUpdate" method="post"
					enctype="multipart/form-data">
					<table class="form">
						<tr>
							<td class="field">旧书名称：</td>
							<td><input type="text" class="text" name="productName"
								value="${p.EP_NAME }" /></td>
							<td><input type="hidden" name="id" value="${p.EP_ID }" /></td>
						</tr>
						<tr>
							<td class="field">所属分类：</td>
							<td><select name="parentId">
									<c:forEach var="f" items="${flist}">
										<option value="${f.EPC_ID }" disabled="disabled">${f.EPC_NAME }</option>
										<c:forEach var="c" items="${clist}">
											<c:if test="${f.EPC_ID==c.EPC_PARENT_ID}">
												<c:if test="${p.EPC_CHILD_ID==c.EPC_ID}">
													<option value="${f.EPC_ID }-${c.EPC_ID }"
														selected="selected">&nbsp;&nbsp;${c.EPC_NAME }</option>
												</c:if>
												<c:if test="${p.EPC_CHILD_ID!=c.EPC_ID}">
													<option value="${f.EPC_ID }-${c.EPC_ID }">&nbsp;&nbsp;${c.EPC_NAME }</option>
												</c:if>
											</c:if>
										</c:forEach>
									</c:forEach>
							</select></td>
						</tr>
						<tr>
							<td class="field">旧书封面：</td>
							<td><input type="file" class="text" name="photo"
								value="${p.EP_FILE_NAME }" /></td>
						</tr>
						<tr>
							<td class="field">旧书价格：</td>
							<td><input type="text" class="text tiny" name="productPrice"
								value="${p.EP_PRICE }" onblur="check()" id="y" /> 元<span id="yy"></span></td>
						</tr>
						<tr>
							<td class="field">描述：</td>
							<td><input type="text" class="text" name="productDesc"
								value="${p.EP_DESCRIPTION }" /></td>
						</tr>
						<tr>
							<td class="field">库存：</td>
							<td><input type="text" class="text tiny" name="productStock"
								value="${p.EP_STOCK }" onblur="check2()" id="k" /><span id="kk"></span></td>
						</tr>
						<tr>
							<td></td>
							<td><label class="ui-blue"><input type="submit"
									name="submit" value="修改" id="sub" /></label></td>
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

