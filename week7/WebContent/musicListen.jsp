<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	String fileName = request.getParameter("filename");
%>
	<h3>음악 파일 듣기</h3>
	음악  파일명 = <%=fileName %><br><br>
	<audio autoplay controls>
		<source src="fileSave/"<%=fileName %> type="audio/mp3">
	</audio>
	<br><button onclick="location.href='uploadForm.jsp'">돌아가기</button>
</body>
</html>