<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>饿了么</title>
<link rel="stylesheet" href="css/main.css" type="text/css" />	
</head>
<body>
	<div class="header">
			<div class="nav">
				<span class="logo"><img src="images/2.png"/></span>
				<div class="nav_list">
					<ul class="nav_ul">
						<li>
							<a href="toShowMeal">首页</a>
						</li>
						<s:if test="(#session.admin==null) && (#session.user==null)">
						<li>
							<a href="register.html">用户注册</a>
						</li>
						<li>
							<a href="login.html">用户登录</a>
						</li>
						<li>
							<a href="login_admin.html">管理员登陆</a>
						</li>
						</s:if>
						<s:if test="#session.user!=null">
							<li><a href="modifyMyInfo.html">修改个人信息</a></li>
							<li><a href="shopCart.jsp">我的购物车</a></li>
							<li><a href="toMyOrders">我的订单</a></li>
							<li><a href="loginOut?type=userlogout">注销</a></li>
							<li><font style="color: red">欢迎您：${sessionScope.user.trueName }</font></li>					
						</s:if>
						<s:if test="#session.admin!=null">
							<li><a href="toAddMeal">添加餐品</a></li>
							<li><a href="toManageMeal">管理餐品</a></li>
							<li><a href="toManageOrders">订单处理</a></li>
							<li><a href="loginOut?type=adminlogout">注销</a>
							<li><font style="color: red">欢迎您：${sessionScope.admin.loginName }</font></li>
						</s:if>
					</ul>
				</div>
			</div>
		</div>

</body>
</html>