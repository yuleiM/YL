
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>注册</title>
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
			<strong class="nav_st">用户注册</strong>
		</div>
	</div>

	<div class="mainbox">
		<div class="context">
			<div class="list">
				<form action="register" method="post">
					<input type="text" class="usna" placeholder="用户名" name="user.loginName"/>
					 <input type="password" class="usna" placeholder="密码" name="user.loginPwd"/>
					 <input type="text" class="usna" placeholder="真实姓名" name="user.trueName"/>
					 <input type="text" class="usna" placeholder="电话号码" name="user.phone"/> 
					 <input type="text" class="usna" placeholder="电子邮件" name="user.email"/> 
					  <input type="text" class="usna" placeholder="默认地址" name="user.address"/> 
					 <input type="submit" class="sub" value="注册" />
				</form>
			</div>

		</div>
	</div>
</body>
</html>
