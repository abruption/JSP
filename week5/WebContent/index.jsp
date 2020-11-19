<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	Date nowTime = new Date();
	SimpleDateFormat sf = new SimpleDateFormat("yyyy년 MM월 dd일 hh:mm:ss");
	// <jsp:include page="/menu.jsp" flush="false"/>
	
%>


<table width="500">
		<tr><td bgcolor="black" style="white">
			<jsp:include page="/menu.jsp" flush="false"/>
			</td>
		</tr>
		<tr><td width="100" height="150" valign="middle" bgcolor="#DCDCDC" align="center">
				<br><b>웹 쇼핑몰에 오신 것을 환영합니다</b><br><br>
			</td>
			</tr>
		<tr>
			<td align="center">
				<br><b>Welcome to Web Market!</b><br><br>
				현재 접속 시각 : <%=sf.format(nowTime) %>
			</td>
		</tr>
		<tr><td align="center">
			<jsp:include page="/footer.jsp" flush="false" />
			</td>
		</tr>
	</table>
</body>
</html>