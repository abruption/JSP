<%@ page import="week14.Emp" %>
<%@ page import="java.util.ArrayList" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%@ include file="connectDB.jsp" %> <!-- 데이터베이스 커넥션 생성 -->
	<%
		Statement stat 	= null;
		ResultSet rs 	= null;
		
		ArrayList<Emp> list = new ArrayList<>();	/* Emp 객체 형태로 ArrayList에 저장 */
		
		String sql = "select * from emp";
		
		stat = conn.createStatement();	/* Statement 객체 생성 */
		rs = stat.executeQuery(sql);	/* 쿼리 실행 */
		
		while(rs.next()){				/* 쿼리 실행 결과 출력 */
			Emp emp = new Emp();		/* 리스트에 저장할 Emp 객체 생성 */
			emp.setEmpno(rs.getString(1));
			emp.setEmpname(rs.getString(2));
			emp.setEmpdept(rs.getString(3));
			emp.setEmpjob(rs.getString(4));
			emp.setEmpsal(rs.getInt(5));
			list.add(emp);				/* 생성된 Emp 객체를 리스트에 저장 */
		}
		
		request.setAttribute("list", list);		/* 리스트를 request 영역에 저장 */
		
		rs.close();
		stat.close();
		conn.close();
		
		RequestDispatcher rd = request.getRequestDispatcher("queryEmpResult.jsp");
		rd.forward(request, response);
	%>
</body>
</html>