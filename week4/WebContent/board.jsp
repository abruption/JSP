<%@page import="java.io.*, java.util.Date" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>게시판 글쓰기 결과화면</h3>
	<%
		request.setCharacterEncoding("utf-8");
		String name		= request.getParameter("name");
		String title	= request.getParameter("title");
		String content	= request.getParameter("content");
		
		Date date = new Date();
		Long time = date.getTime();
		String fileName = time + ".txt";
		String filePath = application.getRealPath("/WEB-INF/board"+fileName);
		
		FileWriter writer = new FileWriter(filePath);
		try{
			String str = "제목 : " + title + "\n";
			str += "글쓴이 : " + name + "\n";
			str += content;
			writer.write(str);
			out.println("저장되었습니다.");
		} catch(IOException e){
			out.println("파일에 데이터를 저장할 수 없습니다.");
		} finally{
			writer.close();
		}
	%>
	<form action="boardResult.jsp"><br>
	<input type="hidden" name="view" value="<%=filePath%>">
	<input type="submit" value="내용보기"><br>
	</form>
</body>
</html>