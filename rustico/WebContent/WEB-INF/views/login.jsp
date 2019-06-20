<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
<title>Login Page</title>
</head>
<body>
	<form action="${pageContext.request.contextPath}/verify" method = "post">
<table width="20%" bgcolor="0099CC" align="center">

<tr>
<td colspan=2><font size=4><b>Login</b></font></td>
</tr>

<tr>
<td>Username:</td>
<td><input type="text" size=25 name="userName"></td>
</tr>

<tr>
<td>Password:</td>
<td><input type="Password" size=25 name="pwd"></td>
</tr>

<tr>
<td ><input type="Reset"></td>
<td><input type="submit" value="Login"></td>
</tr>

</table>
</form>
</body>
</html>