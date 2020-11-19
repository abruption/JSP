<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="upload.jsp" method="post" enctype="multipart/form-data">
		<table border="1">
			<caption>업로드 화면</caption>
				<tr><th>제목</th>
					<td>
					<input type="text" name="title" required="required"	autofocus="autofocus">
					</td></tr>
				<tr><th>작성자</th>
					<td><input type="text" name="writer" required="required"></td></tr>
				<tr><th>파일</th>
					<td><input type="file" name="file" required="required"></td></tr>
				<tr><th colspan="2"><input type="submit" value="확인"></th></tr>
		</table>
	</form>
</body>
</html>