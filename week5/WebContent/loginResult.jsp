<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<br>

<%
	String id = request.getParameter("id");
	String pw = request.getParameter("password");
	
	if(id.equals("admin") && pw.equals("1234")){
		out.println(id + "님, 안녕하세요!");
	} else if(!id.equals("admin")){
		out.println("아이디가 틀립니다.");
	} else if(!pw.equals("1234")){
		out.println("비밀번호가 틀립니다.");
	}
%>

<br>
<form>
	<input type="button" value="돌아가기" onclick="location.href='index.jsp'">
</form>
</body>
</html>