<%@page import="java.io.FileReader" %>
<%@page import="java.io.BufferedReader" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>절대 경로를 이용한 파일 읽기</h3>
	<%
		// 같은 WebContent 폴더에 있다고 해서 바로 읽어올 수 없다.
		// String		path = "test.txt";
	
		// 반드시 workspace 경로를 통해 프로젝트 폴더까지 지정해주어야 한다.
		String path = "/Users/yeonguk/Desktop/JSP/week4/WebContent/test.txt";
		BufferedReader br = new BufferedReader(new FileReader(path));
		
		while(true){
			String str = br.readLine();
			if(str == null) break;
			out.println(str+"<br>");
		}
		br.close();
	%>
</body>
</html>