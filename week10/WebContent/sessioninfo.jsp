<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page session="true" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	Date time = new Date();
	SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
%>
세션 ID : <%=session.getId() %><br>
<% time.setTime(session.getCreationTime()); %>
세션 생성시간 : <%=sdf.format(time) %><br>
<% time.setTime(session.getLastAccessedTime()); %>
최근 접근시간 : <%=sdf.format(time) %>
</body>
</html>