<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	String id = request.getParameter("id");
	String pw = request.getParameter("password");
	
	if(id.equals(pw)){
		// 아이디와 암호가 같으면 로그인에 성공한 것으로 간주
		Cookie cookie = new Cookie("id", "password");
		response.addCookie(cookie);
		out.println("로그인에 성공하였습니다.");
	} else {
		out.println("로그인에 실패하였습니다.");
	}
%>
</body>
</html>