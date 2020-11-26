<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		int empno = Integer.parseInt(request.getParameter("empno"));
		
		// 1. JDBC 드라이버 로딩
		Class.forName("com.mysql.jdbc.Driver");
			
		Connection conn = null;
		Statement  stat = null;
		ResultSet  rs	= null;
				
		String jdbcDriver = "jdbc:mysql://localhost:3306/jspDB?useSSL=false&serverTimezone=UTC";
				
		String dbUser = "root";
		String dbPass = "1234";
			
		String sql = "select * from emp where empno = " + empno;
				
		// 2. 데이터베이스 커넥션 생성
		conn = DriverManager.getConnection(jdbcDriver, dbUser, dbPass);
				
		// 3. Statement 생성
		stat = conn.createStatement();
				
		// 4. 쿼리 실행
		rs = stat.executeQuery(sql);

				
		// 5. 쿼리 실행 결과 출력
		while(rs.next()){
			request.setAttribute("id", rs.getString("empno"));
			request.setAttribute("name", rs.getString("empname"));
			request.setAttribute("dept", rs.getString("empdept"));
			request.setAttribute("job", rs.getString("empjob"));
			request.setAttribute("sal", rs.getString("empsal"));
		}
				
		// 6. 사용한 Statement 종료
		rs.close();
				
		// 7. 커넥션 종료
		conn.close();
	%>
	<jsp:forward page="viewEmpResult.jsp"></jsp:forward>
</body>
</html>