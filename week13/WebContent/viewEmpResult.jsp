<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>사원 정보 조회 결과</h3>
	<form action="viewEmp.jsp">
		<table border="1">
			<tr>
				<td>id</td><td>${id }</td>
			</tr>
			<tr>
				<td>이름</td><td>${name}</td>
			</tr>
			<tr>
				<td>부서코드</td><td>${dept }</td>
			</tr>
			<tr>
				<td>업무</td><td>${job }</td>
			</tr>
			<tr>
				<td>급여</td><td>${sal }</td>
			</tr>
		</table>
		<br><br>
		<input type="submit" value="돌아가기">
	</form>
</body>
</html>