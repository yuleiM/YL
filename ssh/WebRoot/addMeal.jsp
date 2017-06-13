<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>添加菜品</title>
<style type="text/css">
* {
	margin: 0;
	padding: 0;
}

body {
	font: 14px;
	background: #F5F5F5;
}

table {
	border-collapse: collapse;
}

img {
	border: 0;
}

li {
	list-style: none;
}

a {
	text-decoration: none;
	color: #000408;
	cursor: pointer;
}

A:hover {
	COLOR: #0000cc;
	TEXT-DECORATION: none
}

.header {
	width: 100%;
	height: 60px;
	background: #1e89e0;
}

.nav {
	width: 650px;
	height: 60px;
	margin: 0 auto;
}

.nav_st {
	display: block;
	height: 60px;
	line-height: 60px;
	text-align: center;
	font-size: 22px;
	color: #FFFFFF;
}

.mainbox {
	width: 100%;
	margin-top: 25px;
}

.context {
	width: 650px;
	margin: 0 auto;
}

.usna {
	display: block;
	width: 650px;
	height: 60px;
	font-size: 22px;
}
.se{
	display: block;
	width: 350px;
	height: 60px;
	font-size: 22px;
}
.sub {
	display: block;
	width: 500px;
	height: 60px;
	margin: 25px auto;
	background: #4CD964;
	border-radius: 10px;
	font-size: 22px;
	color: #FFFFFF;
}
</style>

</head>
<body>

	<!--
        	头部
        -->
	<div class="header">
		<div class="nav">
			<strong class="nav_st">添加菜品</strong>
		</div>
	</div>

	<div class="mainbox">
		<div class="context">
			<div class="list">
				<form action="register" method="post">
					<input type="text" class="usna" placeholder="菜名" name="meal.mealName"/>
					<select name="meal.mealseries.seriesId" class="se">
						<option value="">--请选择类型--</option>
						<c:forEach var="meal" items="${mealSeriesList}">
							<option value="${meal.seriesId}">${meal.seriesName}</option>
						</c:forEach>
					</select>
					 <input type="text" class="usna" placeholder="摘要" name="meal.mealSummarize"/>
					 <input type="text" class="usna" placeholder="介绍" name="meal.mealDescription"/> 
					 <input type="text" class="usna" placeholder="价格" name="meal.mealPrice"/> 
					 <input type="file" name="doc" placeholder="图片"/>
					 <input type="submit" class="sub" value="添加" />
					 <a href="javascript :;" onClick="javascript :history.back(-1);" style="display: block;width: 500px;height: 60px;margin: 25px auto;background: #4CD964;border-radius: 10px;font-size: 22px;color: #FFFFFF;line-height: 60px;text-align: center;">返回</a>
				</form>
			</div>
		</div>
	</div>
	
 	 <ul> 
 		<c:forEach var="meal" items="${mealSeriesList}"> 
 			<li> 
 				${meal.seriesName} 
 				<ul> 
 					<c:forEach var="m" items="${meal.meals}"> 
 						<li>${m.mealName}</li> 
 					</c:forEach> 
 				</ul> 
 			</li> 
 		</c:forEach> 
 	</ul>  
</body>
</html>
