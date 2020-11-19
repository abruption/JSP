<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Insert title here</title>
</head>
<body>
<form action="BookInfo.jsp" method="post" enctype="multipart/form-data">
<table width="100%">
		<tr><td colspan="2" bgcolor="black" style="white">
			<jsp:include page="/menu.html" flush="false" />
			</td>
		</tr>
		<tr><td colspan="2" valign="middle" bgcolor="#DCDCDC" align="left">
				<h2>도서 등록</h2>
			</td>
			</tr>
		<tr>
			<td width="130px" align="center">
				<p><b>도서코드</b>	
			</td>
			<td>
				<input type="text" name="bookcode">
			</td>
		</tr>
		<tr>
			<td width="130px" align="center">
				<p><b>도서명</b>		
			</td>
			<td>
				<input type="text" name="bookname">
			</td>
		<tr>
		</tr>
			<td width="130px" align="center">
				<p><b>가격</b>		
			</td>
			<td>
				<input type="text" name="price">
			</td>
		</tr>
		<tr>
			<td width="130px" align="center">
				<p><b>저자</b>		
			</td>
			<td>
				<input type="text" name="writer">
			</td>
		</tr>
		<tr>
			<td width="130px" align="center">
				<p><b>출판사</b>		
			</td>
			<td>
				<input type="text" name="company">
			</td>
		</tr>
		<tr>
			<td width="130px" align="center">
				<p><b>출판일</b>		
			</td>
			<td>
				<input type="text" name="date">
			</td>
		</tr>
		<tr>
			<td width="130px" align="center">
				<p><b>총 페이지 수</b>	
			</td>
			<td>
				<input type="text" name="page">
			</td>
		</tr>
		<tr>
			<td width="130px" align="center">
				<p><b>상세정보</b>	
			</td>
			<td>
				<textarea placeholder="100자 이상 적어주세요." name="detail" cols="30" rows="5"></textarea>
			</td>
		</tr>
		<tr>
			<td width="130px" align="center">
				<p><b>분류</b>		
			</td>
			<td>
				<input type="text" name="categori">
			</td>
		</tr>
		<tr>
			<td width="130px" align="center">
				<p><b>재고 수</b>	
			</td>
			<td>
				<input type="text" name="left">
			</td>
		</tr>
		<tr>
			<td width="130px" align="center">
				<b>상태</b>		 
			</td>
			<td>
				<input type="radio" name="status" value="신규도서"><b>신규도서</b> 
				<input type="radio" name="status" value="중고도서"><b>중고도서</b> 
				<input type="radio" name="status" value="E-Book"><b>E-Book</b>
			</td>
		</tr>
		<tr>
			<td width="130px" align="center">
				<p><b>이미지</b>
			</td>
			<td>
				<input type="file" name="file" required="required">
			</td>
		</tr><tr>
			<td width="130px" align="center">
				   <input type="submit" name="save" value="등록">
			</td>
		</tr>
		<tr><td colspan="2" align="center">
			<jsp:include page="/footer.html" flush="false" />
			</td>
		</tr>
	</table>
	</form>
</body>
</html>