<%@ page import="java.net.URLEncoder" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3>쿠키 값 변경</h3>
<%
	Cookie[] cookies = request.getCookies();
	if(cookies != null && cookies.length > 0){
		for(Cookie c : cookies){
			if(c.getName().equals("name")){
				Cookie cookie = new Cookie("name", URLEncoder.encode("JSP프로그래밍", "utf-8"));
				response.addCookie(cookie);
			}
		}
	}
%>
name 쿠키의 값을 변경하였습니다.
</body>
</html>