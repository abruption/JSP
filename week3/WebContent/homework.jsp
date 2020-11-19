<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.Map" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<% String value = request.getParameter("pet"); %>
	<h3>당신이 좋아하는 동물은 <%=value %>입니다.</h3>
</body>
</html>