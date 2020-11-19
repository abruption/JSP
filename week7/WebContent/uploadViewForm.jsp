<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	String filename = request.getParameter("filename");
%>
<table border="1" width="300px" style="text-align:center;">
	<caption>업로드 파일</caption>
	<tr>
		<th>텍스트</th>
		<td><a href="fileView.jsp?filename="<%=filename %>>텍스트 파일 보기</a></td>
	</tr>
	<tr>
		<th>이미지</th>
		<td><a href="imageView.jsp?filename="<%=filename %>>이미지 파일 보기</a></td>
	</tr>
	<tr>
		<th>음악</th>
		<td><a href="musicListen.jsp?filename="<%=filename %>>음악 파일 듣기</a></td>
	</tr>
</table>
<br>
<button onclick="loction.href='uploadForm.jsp'">돌아가기</button>
</body>
</html>