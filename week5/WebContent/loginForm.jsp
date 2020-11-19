<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>★ 로그인 화면 ★</h3>
	<form action="loginResult.jsp" method="post">
	<table border="1">
  	<tr>
    	<td align="center">아이디</td>
    	<td><input type="text" name="id"></td>
  	</tr>
  	<tr>
    	<td>비밀번호</td>
    	<td><input type="password" name="password"></td>
  	</tr>
  	<tr>
    	<td colspan="2" align="center"><input type="submit" value="로그인"></td>
  	</tr>
	</table>
	</form>
</body>
</html>