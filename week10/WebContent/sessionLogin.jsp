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
	String password = request.getParameter("password");
	if(id.equals(password)) {
		// 아이디와 암호가 같으면 로그인에 성공한 것으로 간주
		session.setAttribute("id", id);
%>
<script type="text/javascript">
	alert("로그인에 성공하였습니다.");
	location.href="sessionLoginOK.jsp";
</script>
<% } else { // 로그인에 실패한 경우 %>
<script type="text/javascript">
	alert("로그인에 실패하였습니다.");
	history.go(-1);
</script>
<% } %>
</body>
</html>