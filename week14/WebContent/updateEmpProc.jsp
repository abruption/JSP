<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
		String empname = request.getParameter("empname");
		String empdept = request.getParameter("empdept");
		String empjob = request.getParameter("empjob");
		int empsal = Integer.parseInt(request.getParameter("empsal"));
		
		PreparedStatement pstat = null;
		int result = 0;
		
		String sql = "update emp set empdept=?, empjob=?, empsal=? where empno=?";
		
		pstat = conn.prepareStatement(sql);
		pstat.setString(1, empdept);
		pstat.setString(2, empjob);
		pstat.setInt(3, empsal);
		pstat.setString(4, empno);
		
		result = pstat.executeUpdate();
		
		request.setAttribute("result", result);
		request.setAttribute("empno", empno);
		
		pstat.close();
		conn.close();
	%>
	<jsp:forward page="updateEmpResult.jsp"></jsp:forward>
</body>
</html>