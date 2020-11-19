<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="java.text.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	request.setCharacterEncoding("utf-8");
	SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
	Date date = new Date();
	String strDate = sdf.format(date);
%>
<jsp:useBean id="Book" class="week9.Book"/>
<jsp:setProperty property="code" name="Book" value="<%=Book.getCode() %>"/>
<jsp:setProperty property="title" name="Book" value="<%=Book.getTitle() %>"/>
<jsp:setProperty property="writer" name="Book" value="<%=Book.getWriter() %>"/>
<jsp:setProperty property="pubDate" name="Book" value="<%=strDate %>"/>

<h2> ❖ 도서 등록 결과 ❖ </h2>
<table border="1">
	<tr><td>코드</td>
		<td>제목</td>	
		<td>저자</td>
		<td>출판일자</td>
	</tr>
	<tr>
		<td><jsp:getProperty property="code" name="Book"/></td>
		<td><jsp:getProperty property="title" name="Book"/></td>
		<td><jsp:getProperty property="writer" name="Book"/></td>
		<td><jsp:getProperty property="pubDate" name="Book"/></td>
	</tr>
</table>
</body>
</html>