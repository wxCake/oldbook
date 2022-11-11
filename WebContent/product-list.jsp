<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>校园旧书互换</title>
<link type="text/css" rel="stylesheet" href="css/style.css" />
<script type="text/javascript" src="scripts/function.js"></script>
<style type="text/css">
.lunbo {
	position: relative;
	left: 30px;
}

.lunbo img {
	width: 1000px;
	height: 300px;
}
</style>
<script type="text/javascript">
  function jump(p){
	  location.href='selectProductList?cp='+p;
  }
  </script>
<script type="text/javascript">
function selectname(){
	  var name = document.getElementById("selectname").value;
	  location.href='selectProductList?name='+name;
}
function searchHot(name){
	location.href='selectProductList?name='+name;
}
var index = 1;
function lunbo(){
    index ++ ;
    //判断index是否大于4
    if(index > 4){
        index = 1;
    }
    //获取img对象
    var img = document.getElementById("lunbo_img");
    img.src = "images/img"+index+".png";
}
//2.定义定时器
setInterval(lunbo,2000);
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
				<a href="selectdd?dd=${name.EU_USER_ID }">个人中心</a>
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
				<c:choose>
					<c:when test="${empty selected_fid}">
						<li class="current"><a href="selectProductList">首页</a></li>
					</c:when>
					<c:otherwise>
						<li><a href="selectProductList">首页</a></li>
					</c:otherwise>
				</c:choose>
				<c:forEach var="f" items="${flist}">
					<c:choose>
						<c:when test="${selected_fid == f.EPC_ID}">
							<li class="current"><a
								href="selectProductList?fid=${f.EPC_ID }">${f.EPC_NAME }</a></li>
						</c:when>
						<c:otherwise>
							<li><a href="selectProductList?fid=${f.EPC_ID }">${f.EPC_NAME }</a></li>
						</c:otherwise>
					</c:choose>
				</c:forEach>
				<c:if test="${name!=null}">
					<input type="button" class="add"
						onclick="location.href='productAdd'" value="我要发布" />
				</c:if>
			</ul>
		</div>
	</div>
	<div id="position" class="wrap">
		您现在的位置：<a href="indexSelect">首页</a> &gt; <a href="selectProductList">旧书分类</a>
		&gt; ${title }
	</div>
	<div id="main" class="wrap">
		<!--轮播图模块 -->
		<div class="lunbo">
			<img id="lunbo_img" src="images/img4.png">
		</div>
		<div class="main">
			<div class="product-list">
				<h2>${title }</h2>

				<div class="clear"></div>
				<ul class="product clearfix">
					<c:forEach var="p" items="${list}">
						<li>
							<dl>
								<dt>
									<a href="selectProductView?id=${p.EP_ID }" target="_blank"><img
										src="images/product/${p.EP_FILE_NAME }" /></a>
								</dt>
								<dd class="title">
									<a href="selectProductView?id=${p.EP_ID }" target="_blank">${p.EP_NAME }</a>
								</dd>
								<dd class="price">￥${p.EP_PRICE }.00</dd>
							</dl>
						</li>
					</c:forEach>

				</ul>
				<div class="clear"></div>
				<div class="pager">
					<ul class="clearfix">
						<li>当前:${cpage}/${tpage }页</li>
						<li><a href="selectProductList?cp=1">首页</a></li>
						<li><a
							href="selectProductList?cp=${cpage-1<=0 ? 1 : cpage-1 }">上一页</a></li>
						<li><a
							href="selectProductList?cp=${cpage+1>=tpage ? tpage : cpage+1 }">下一页</a></li>
						<li><a href="selectProductList?cp=${tpage }">尾页</a></li>
						<li><select onchange="jump(this.value)">
								<c:forEach var="i" begin="1" end="${tpage}">
									<option ${i==cpage ? "selected" : "" } value="${i}">${i }页</option>
								</c:forEach>
						</select></li>
					</ul>
				</div>
			</div>

		</div>
		<div class="clear"></div>
	</div>
	<div id="footer">Copyright &copy; 2022南华大学船山学院软件1803班王旭work.
		湘ICP备案20189350302号</div>
</body>
</html>
