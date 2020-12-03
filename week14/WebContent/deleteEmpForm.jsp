<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<script type="text/javascript">
	function check(){
		if(comfirm("정말 삭제하시겠습니까?"))
			return true;
	}
	return false;
</script>
<body>
<h3>사원 정보 삭제 화면</h3>
<form action="deleteEmpProc.jsp" name="frm" onsubmit="return check()">
	<c:if test="${result == 1 }">
		<table border="1" style="width:300px; text-align: center;">
			<tr>
				<td bgcolor="orange">사원번호</td>
				<td>${empno }<input type="hidden" name="empno" value="${empno}"></td>
			</tr>
			<tr><td bgcolor="orange">이름</td><td>${empname }</td></tr>
			<tr><td bgcolor="orange">부서코드</td><td>${empdept }</td></tr>
			<tr><td bgcolor="orange">업무</td><td>${empjob }</td></tr>
			<tr><td bgcolor="orange">급여</td><td>${empsal }</td></tr>
			<tr>
				<td colspan="2">
					<input type="submit" value="삭제">&nbsp;<input type="reset" value="취소">
				</td>
			</tr>
		</table>
	</c:if>
</form><br><br>
</body>
</html>