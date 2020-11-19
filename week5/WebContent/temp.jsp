<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>통관 조회</h3>
	<form action="loginResult.jsp" method="post">
	<table border="1">
  	<tr>
    	<td align="center">H/WAB 또는 운송장번호</td>
    	<td><input type="text" name="number"></td>
  	</tr>
  	<tr>
    	<td align="center">택배사</td>
    	<td><select name="corp">
    		<option value="cj">CJ대한통운</option>
    		<option value="lotte">롯데택배</option>
    		<option value="hj">한진택배</option>
    		</select>
    		</td>
  	</tr>
  	<tr>
    	<td colspan="2" align="center"><input type="submit" value="조회"></td>
  	</tr>
	</table>
	</form>
</body>
</html>