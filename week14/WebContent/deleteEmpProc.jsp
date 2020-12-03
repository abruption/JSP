<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%@ include file="connectDB.jsp" %>
	<%
		request.setCharacterEncoding("utf-8");
		String empno = request.getParameter("empno");
		
		PreparedStatement pstat = null;
		int result = 0;
		
		String sql = "delete from emp where empno=?";
		
		pstat = conn.prepareStatement(sql);
		pstat.setString(1, empno);
		
		result = pstat.executeUpdate();
		
		request.setAttribute("result", result);
		
		pstat.close();
		conn.close();
	%>
	<jsp:forward page="deleteEmpResult.jsp"></jsp:forward>
</body>
</html>