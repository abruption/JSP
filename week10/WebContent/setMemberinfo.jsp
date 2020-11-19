<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	session.setAttribute("id", "admin");	// "변수명", "값"
	session.setAttribute("name", "홍길동");	// "변수명", "값"
%>
세션에 정보를 저장하였습니다.
</body>
</html>