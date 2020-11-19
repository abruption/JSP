<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
로그인 상태<br>
<%=session.getAttribute("id") %> 님 반갑습니다! <br><br>

<h3>메인 화면</h3>

<form action="sessionLogout.jsp">
	<input type="submit" value="로그아웃">
</form>
</body>
</html>