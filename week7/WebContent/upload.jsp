<%@page import="java.io.File"%>
<%@page import="com.oreilly.servlet.multipart.*"%>
<%@page import="com.oreilly.servlet.MultipartRequest" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	request.setCharacterEncoding("utf-8");

	/* 파일 저장 위치 설정 */
	String fileSave = "/fileSave";

	/* 실제 파일이 저장되는 위치 */
	String real = application.getRealPath(fileSave);

	int max = 1024 * 1024 * 10;	// K byte, M byte, G byte 순서
	
	/* 파라미터(요청, 실제저장위치, 파일크기, 한글코드, 같은 이름의 파일이 들어온 경우 규칙) */
	MultipartRequest mr = new MultipartRequest(request, real, max, "utf-8", new DefaultFileRenamePolicy());
	
	String title	 = mr.getParameter("title");
	String writer	 = mr.getParameter("writer");
	String filename	 = mr.getFilesystemName("file");
	String original	 = mr.getOriginalFileName("file");
	File	file   	 = new File(real+"/"+filename);
	int		size	 = request.getContentLength();
%>

<h3>파일 업로드 결과</h3>
제목 : <%=title %><br>
작성자 : <%=writer %><br>
파일명 : <%=filename %><br>
파일원본명 : <%=original %><br>
파일크기 : <%=size %><p>

<form action="uploadViewForm.jsp" method="get">
	<input type="hidden" name="filename" value="<%=filename %>">
	<input type="submit" value="파일보기">
</form>
</body>
</html>