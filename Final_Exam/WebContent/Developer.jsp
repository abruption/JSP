<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Corona-INFO :: Demo Page</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    
    
    <!-- Bootstrap core CSS -->
	<link href="css/bootstrap.min.css" rel="stylesheet">
	<link rel="canonical" href="https://getbootstrap.com/docs/4.5/examples/dashboard/">
	
	<!-- Custom fonts for this template-->
    <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">
	
	 <!-- Custom styles for this template -->
    <link href="css/dashboard.css" rel="stylesheet">
    <link href="css/all.min.css" rel="stylesheet" type="text/css">
    <link rel="css/stylesheet" href="dark-mode.css">
    
</head>

    <style>
      .bd-placeholder-img {
        font-size: 1.125rem;
        text-anchor: middle;
        -webkit-user-select: none;
        
        -moz-user-select: none;
        -ms-user-select: none;
        user-select: none;
	    }
	

   
      @media (min-width: 768px) {
        .bd-placeholder-img-lg {
          font-size: 3.5rem;
        }
      }
      
	[data-theme="dark"] {
  		background-color: #111 !important;
  		color: #eee;
		}

	[data-theme="dark"] .bg-light {
	  background-color: #333 !important;
	}

	[data-theme="dark"] .bg-white {
  	background-color: #000 !important;
	}

	[data-theme="dark"] .bg-black {
 		 background-color: #eee !important;
	}
      
    </style>

<body>



<!-- JSP include File  -->
<jsp:include page="Header.jsp"></jsp:include>

<jsp:include page="SideBar.jsp"></jsp:include>
      
<main role="main" class="col-md-9 ml-sm-auto col-lg-10 px-md-4">

<br>
<h1><span class="badge bg-primary text-light">Developer</span></h1>
<br>

<!-- 개발환경 Field -->
<div class="card">
  <div class="card-header">
    <h6>개발환경</h6>
  </div>
  <div class="card-body">
    <blockquote class="blockquote mb-0">
    <p>Front-End</p>
      <footer class="blockquote-footer"><a href="https://getbootstrap.kr">Bootstrap</a></footer>
      <footer class="blockquote-footer"><a href="chartjs.org">ChartJS</a></footer>
      <footer class="blockquote-footer"><a href="momentjs.com">MomentJS</a></footer><br>
    
      <p>Back-End</p>
      <footer class="blockquote-footer">JSP</footer>
      <footer class="blockquote-footer"><a href="tomcat.apache.org">Apache Tomcat 9.0.37</a></footer>
      <footer class="blockquote-footer"><a href="https://www.mysql.com">MySQL 8.0.21 Homebrew</a></footer>
      <footer class="blockquote-footer"><a href="https://www.data.go.kr/tcs/dss/selectApiDataDetailView.do?publicDataPk=15043376">공공데이터 포털(data.go.kr) 보건복지부_코로나19 감염_현황 API</a></footer><br>
    </blockquote>
  </div>
</div>
<!-- End of 개발환경 Field -->
<br>

<div class="card text-center">
  <div class="card-body">
    <h5 class="card-title">인하공업전문대학 컴퓨터정보과 201644091 이연국</h5>
    <p class="card-text">본 사이트는 JSP 과목의 프로젝트 결과물입니다.</p>
    
  </div>
  <div class="card-footer text-muted"><a href="mailto:hashcode@kakao.com" class="btn btn-primary">Contact Us</a></div></div>

<br>
<jsp:include page="Footer.jsp"></jsp:include>     

</main>      


<!-- Script File List -->
<script src="https://code.jquery.com/jquery-3.4.1.min.js" integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo=" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/feather-icons/4.9.0/feather.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.7.3/Chart.min.js"></script>
<script src="js/dashboard.js"></script>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.24.0/moment.min.js"></script>
<script src="js/moment.js"></script>
<script src="js/dark-mode-switch.min.js"></script>
<!-- End of Script File List -->

</body>
</html>