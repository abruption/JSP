<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Insert title here</title>
</head>
<body>
<%
	Date nowTime = new Date();
	SimpleDateFormat sf = new SimpleDateFormat("yyyy년 MM월 dd일 hh:mm:ss");
%>

<table width="100%">
		<tr><td colspan="2" bgcolor="black" style="white">
			<jsp:include page="/menu.html" flush="false"/>
			</td>
		</tr>
		<tr>
			<td colspan="2" height="150px" bgcolor="#DCDCDC" align="center">
			<br><h1>도서 웹 쇼핑몰</h1><br>
			</td>
		</tr>
		<tr>
			<td align="center">
				<br><b>Welcome to Book Market!</b><br><br>
				현재 접속 시각 : <%=sf.format(nowTime) %>
			</td>
		</tr>
		<tr>
			<td colspan="2" align="center">
				<jsp:include page="/footer.html" flush="false" />
			</td>
		</tr>
</table>
</body>
</html>