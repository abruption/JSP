<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width", initial-scale="1">
<link rel="stylesheet" href="css/bootstrap.css">
<title>해외직구 통관조회 및 배송조회 :: INHA-PASS</title>
</head>

<style>
	.wrap {
		min-height: 100%;
		position: relative;
		padding-bottom: 19px; /* footer height */
	}
</style>

<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
<script src="js/bootstrap.js"></script>

<body>
	<div class="wrap">
	
	<!--  Header 부분 시작  -->
	<jsp:include page="header.jsp" flush="false"></jsp:include>
	<!--  Header 부분 종료  -->	
	
	<div class="container">
			<div class="jumbotron">
				<jsp:include page="Unipass.jsp" flush="false" />
			</div>
		</div>
		
	<!-- Footer 부분 시작 -->
 	<jsp:include page="footer.jsp" flush="false" /> 
	<!-- Footer 부분 종료 -->	
	
	</div>
</body>
</html>


<!-- 6078611155162, 6078611154789, 424008445420, 800524169745, 6077879833016, 800516665550, 6089623842  -->