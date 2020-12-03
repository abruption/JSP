<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>

<script type="text/javascript">
	function check() {
		if(!frm.empno.value){
			alert("사원번호를 입력하세요.");
			frm.empno.focus();
			return false;
		}
		if(!frm.empname.value){
			alert("이름을 입력하세요.");
			frm.empname.focus();
			return false;
		}
		if(!frm.empdept.value){
			alert("부서코드를 입력하세요.");
			frm.empdept.focus();
			return false;
		}
		if(!frm.empjob.value){
			alert("업무를 입력하세요.");
			frm.empjob.focus();
			return false;
		}
		if(!frm.empsal.value){
			alert("급여를 입력하세요.");
			frm.empsal.focus();
			return false;
		}
		return true;
	}
</script>

<body>
	<form action="inputEmpProc.jsp" name="frm" onsubmit="return check()">
		<table border="1" style="text-align: center;">
			<tr><td colspan="2">사원 등록 화면</td></tr>
			<tr>
				<td bgcolor="orange">사원번호</td>
				<td><input type="text" name="empno" autofocus="autofocus"></td>
			</tr>
			<tr>
				<td bgcolor="orange">이름</td>
				<td><input type="text" name="empname"></td>
			</tr>
			<tr>
				<td bgcolor="orange">부서코드</td>
				<td><input type="text" name="empdept"></td>
			</tr>
			<tr>
				<td bgcolor="orange">업무</td>
				<td><input type="text" name="empjob"></td>
			</tr>
			<tr>
				<td bgcolor="orange">급여</td>
				<td><input type="number" name="empsal"></td>
			</tr>
			<tr>
				<td colspan="2">
					<input type="submit" value="등록">&nbsp;<input type="reset" value="취소">
				</td>
			</tr>
			</table>
			</form>	<br><br>
			<form action="menu.jsp"><input type="submit" value="메뉴화면"></form>
</body>
</html>