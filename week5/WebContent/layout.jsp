<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table width="400" border="1" cellpadding="0" cellspacing="0">
		<tr><td colspan="2">
			<jsp:include page="/top.jsp" flush="false"/>
			</td>
		</tr>
		<tr><td width="100" valign="top">
			<jsp:include page="/left.jsp" flush="false"/>
			</td>
			<td width="300" valigh="top">
				<!--  내용 부분 : 시작 -->
				레이아웃 1<br><br><br>
				<!--  내용 부분 : 종료 -->
			</td>
		</tr>
		<tr><td colspan="2">
			<jsp:include page="/bottom.jsp" flush="false" />
			</td>
		</tr>
	</table>
</body>
</html>