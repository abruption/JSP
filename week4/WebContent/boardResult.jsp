<%@page import="java.io.FileReader"%>
<%@page import="java.io.BufferedReader"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>게시판 내용</h3>
	<%
		request.setCharacterEncoding("utf-8");
		String 		real = request.getParameter("view");
		BufferedReader br = new BufferedReader(new FileReader(real));
		
		while(true){
			String str = br.readLine(); 
			if(str==null) break;
			out.println(str + "<br>");
		}
		br.close();
	%>
</body>
</html>