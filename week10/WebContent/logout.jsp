<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	Cookie[] cookies = request.getCookies();
	if(cookies != null && cookies.length > 0){
		for(Cookie c : cookies){
			if(c.getName().equals("id")){
				Cookie cookie = new Cookie("id", "");
				cookie.setMaxAge(0);
				response.addCookie(cookie);
			}
		}
	}
%>
<h3>로그아웃</h3>
로그아웃하였습니다.
</body>
</html>