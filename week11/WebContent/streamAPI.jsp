<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	${varList = [2,11,7,4,8,5]; '' } 
	1. 합계 :  ${varList.stream().sum() }<br>
	2. 최대 값 : ${varList.stream().max().get() }<br>
	3. 최소 값 : ${varList.stream().min().get() }<br>
	4. 평균 값 : ${varList.stream().average().get() }<br>
	5. 2의 배수 : ${varList.stream().filter(x -> x % 2 == 0).toList() }<br>
	6. 제곱근 : ${varList.stream().map(x -> x* x).toList() }<br>
	7. 오름차순 : ${varList.stream().sorted().toList() }<br>
	8. 배열 개수 : ${varList.stream().count() }<br>
	<hr>
	<b>배열 재선언</b><br>
	9. 오름차순 : ${vals=[20,17,30,2,9,23]; sortedVals=vals.stream().sorted().toList()}<br>
	10. 내림차순 : ${vals=[20,17,30,2,9,23]; sortedVals=vals.stream().sorted((x1,x2) -> x1<x2?1:-1).toList() }<br>
</body>
</html>