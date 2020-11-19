<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3>로그인 여부 검사</h3>

<%
	boolean sw = false;
	Cookie[] cookies = request.getCookies();
	if(cookies != null && cookies.length > 0){
		for(Cookie c : cookies){
			if(c.getName().equals("id")){
				out.println("아이디 " + c.getValue() + "로 로그인 한 상태");
				sw = true;
				break;
			}
		}
	}
	if(sw == false){
		out.println("로그인 하지 않은 상태입니다.");
	}
	
%>

</body>
</html>