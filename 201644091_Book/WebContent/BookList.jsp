<%@page import="java.io.File"%>
<%@page import="com.oreilly.servlet.multipart.*"%>
<%@page import="com.oreilly.servlet.MultipartRequest" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
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
	
	String hiddenname	 = mr.getParameter("hiddenname");
	String hiddendetail	 = mr.getParameter("hiddendetail");
	String hiddenvalue 	= mr.getParameter("hiddenvalue");
	String hiddenimg	 = mr.getParameter("hiddenimg");
%>


<table width="100%">
		<tr><td colspan="2" bgcolor="black" style="white">
			<jsp:include page="/menu.html" flush="false" />
			</td>
		</tr>
		<tr><td colspan="2" valign="middle" bgcolor="#DCDCDC" align="left">
				<h2>도서 목록</h2>
			</td>
		</tr>
		<tr>
		<td rowspan="3" width="300" height="300" ><img alt="<%=hiddenimg %>" src="fileSave/<%=hiddenimg %>" align="center" width="80%" height="80%" /></td>
		<td><h2><%=hiddenname %></h2>
		</tr>
		<tr>
		<td><b><%=hiddendetail %></b></td>
		</tr>
		<tr>
		<td><br><b><%=hiddenvalue%></b></td>
		</tr>
		<tr><td align="center" colspan="2">
			<jsp:include page="/footer.html" flush="false" />
			</td>
		</tr>
</table>
</body>
</html>