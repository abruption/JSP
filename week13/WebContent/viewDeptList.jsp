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
<h3>부서 목록 보기</h3>
	<table border="1" width="100%" style="text-align: center;">
	<tr>
		<td>부서코드</td><td>부서이름</td><td>근무지</td>
	</tr>
	<%
			// 1. JDBC 드라이버 로딩
			Class.forName("com.mysql.jdbc.Driver");
		
			Connection conn = null;
			Statement  stat = null;
			ResultSet  rs	= null;
			
			String jdbcDriver = "jdbc:mysql://localhost:3306/jspDB?useSSL=false&serverTimezone=UTC";
			
			String dbUser = "root";
			String dbPass = "1234";
			
			String sql = "select * from dept";
			
			// 2. 데이터베이스 커넥션 생성
			conn = DriverManager.getConnection(jdbcDriver, dbUser, dbPass);
			
			// 3. Statement 생성
			stat = conn.createStatement();
			
			// 4. 쿼리 실행
			rs = stat.executeQuery(sql);

			
			// 5. 쿼리 실행 결과 출력
			while(rs.next()){
				out.println("<tr><td>");
				out.println(rs.getString("deptNo") + "</td><td>");
				out.println(rs.getString("deptName") + "</td><td>");
				out.println(rs.getString("deptLoc") + "</td></tr>");
			}
			
			// 6. 사용한 Statement 종료
			rs.close();
			
			// 7. 커넥션 종료
			conn.close();
	%>
	</table>
</body>
</html>