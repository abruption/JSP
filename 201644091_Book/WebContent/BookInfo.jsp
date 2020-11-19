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
	
	String bookcode	 = mr.getParameter("bookcode");
	String bookname	 = mr.getParameter("bookname");
	String price	 = mr.getParameter("price");
	String writer	 = mr.getParameter("writer");
	String company	 = mr.getParameter("company");
	String date		 = mr.getParameter("date");
	String pages	 = mr.getParameter("page");
	String detail	 = mr.getParameter("detail");
	String categori	 = mr.getParameter("categori");
	String left		 = mr.getParameter("left");
	String status	 = mr.getParameter("status");
	String filename	 = mr.getFilesystemName("file");
%>

<form action="BookList.jsp" method="post" enctype="multipart/form-data">
<table width="100%">
		<tr><td colspan="2" bgcolor="black" style="white">
			<jsp:include page="/menu.html" flush="false" />
			</td>
		</tr>
		<tr><td colspan="2" valign="middle" bgcolor="#DCDCDC" align="left">
				<h2>도서 정보</h2>
			</td>
		</tr>
		<tr>
		<td rowspan="12" width="300" height="300" ><img alt="<%=filename %>" src="fileSave/<%=filename %>" align="center" width="90%" height="100%" onerror="this.style.display='none'" /></td>
		<td><h1 style="display:inline"><%=bookname %></h1></td>
		</tr>
		<tr>
		<td><b><%=detail %></b></td>
		</tr>
		<tr>
		<td><br><b>도서코드 : <%=bookcode %></b></td>
		</tr>
		<tr>
		<td><b>저자 : <%=writer %></b></td>
		</tr>
		<tr>
		<td><b>출판사 : <%=company %></b></td>
		</tr>
		<tr>
		<td><b>출판일 : <%=date %></b></td>
		</tr>
		<tr>
		<td><b>총 페이지 수: <%=pages %></b></td>
		</tr>
		<tr>
		<td><b>재고 수 : <%=left %></b></td>
		</tr>
		<tr>
		<td><b>분류 : <%=categori %></b></td>
		</tr>
		<tr>
		<td><b>상태 : <%=status %></b></td>
		</tr>
		<tr>
		<td><b>가격 : <%=price %>원</b></td>
		</tr>
		<tr>
			<td>
			<input type="hidden" name="hiddenname" value="<%=bookname %>">
			<input type="hidden" name="hiddendetail" value="<%=detail %>">
			<input type="hidden" name="hiddenvalue" value="<%=writer%> | <%=company%> | <%=price%>원">
			<input type="hidden" name="hiddenimg" value="<%=filename %>">
			<br><input type="submit" value="도서목록">
			</td>
		</tr>
		<tr><td align="center" colspan="2">
			<jsp:include page="/footer.html" flush="false" />
			</td>
		</tr>
</table>
</form>
</body>
</html>