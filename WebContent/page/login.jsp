<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="${ctx}/page/Css/bootstrap.min.css">
<link rel="stylesheet" href="${ctx}/page/Css/login.css">
<style type="text/css"></style>

<title>登录页面</title>
</head>
<body>
	<s:action name="initroot" namespace="/"></s:action>
	<div class="loginBox">
		<div class="loginText"><p>用户登录</p></div>
		<form action="login.do" method="post">
			<!-- 下面是用户名输入框 -->
			<div class="input-group" style="margin: 0 30px;">
				<span class="input-group-addon" id="basic-addon1">@</span> <input
					id="userName" name="name" type="text"
					class="form-control" placeholder="账号"
					aria-describedby="basic-addon1">
			</div>
			<br>
			<!-- 下面是密码输入框 -->
			<div class="input-group" style="margin: 0 30px;">
				<span class="input-group-addon" id="basic-addon1">@</span> <input
					type="password" name="pwd" id="password"
					class="form-control" placeholder="密码"
					aria-describedby="basic-addon1">
			</div>
			<div style="text-align: center;" class="logrestype"><h id="showlogtype"/></div>
			<br>
			<!-- 下面是登录按钮，包括颜色控制 -->
			<div align="center">
				<input type="submit" value="登录" style="width: 6em"
					class="btn btn-default" /> 
				<input type="reset" value="重置"
					style="width: 6em; margin-left: 20px" class="btn btn-default" />
			</div>
		</form>
	</div>
</body>
</html>