<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>쿠키 목록</h1>
	<%
		Cookie[] cookies = request.getCookies();
	
		if(cookies != null & cookies.length > 0){
			for(Cookie c : cookies){
				out.println(c.getName() + " = " + c.getName() + "<br>");
			}
		} else {
			out.println("<h3>쿠키가 존재하지 않습니다.</h3>");
		}
	%>
</body>
</html>