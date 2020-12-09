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
<h1><span class="badge bg-success text-light">관련 사이트</span></h1>
<br>


<div class="card">
  <div class="card-header">
    <h6>개발환경</h6>
  </div>
  <div class="card-body">
    <blockquote class="blockquote mb-0">
    <p>국가별 코로나-19 바이러스 감염증 정보 주소</p>
      <footer class="blockquote-footer"><a href="https://www.cdc.gov">미국 질병통제예방센터(Center for Disease Control)</a></footer>
      <footer class="blockquote-footer"><a href="https://www.canada.ca/en/health-canada.html">캐나다 공중보건국(Public Health Agency of Canada)</a></footer>
      <footer class="blockquote-footer"><a href="https://www.ecdc.europa.eu/en">유럽 질병통제 예방센터(European Centre for disease Prevention and Control)</a></footer>
      <footer class="blockquote-footer"><a href="https://www.moh.gov.sg/">싱가포르 보건부(Ministry of Health)</a></footer>
      <footer class="blockquote-footer"><a href="https://www.health.gov.au/news/health-alerts/novel-coronavirus-2019-ncov-health-alert">오스트레일리아 연방 정보 보건부(Australia Government Department of Health)</a></footer>
      <footer class="blockquote-footer"><a href="https://www.infektionsschutz.de/coronavirus-sars-cov-2.html">독일 연방 보건 교육 센터(Federal Center of Health Education)</a></footer>
      <footer class="blockquote-footer"><a href="https://www.chp.gov.hk/tc/index.html">홍콩 건강 보호 센터(Center for Health Protection)</a></footer><br>
    
      <p>실시간 감염정보</p>
      <footer class="blockquote-footer"><a href="https://gisanddata.maps.arcgis.com/apps/opsdashboard/index.html#/bda7594740fd40299423467b48e9ecf6">전세계 실시간 감염 지도 (By. Johns Hopkins)</a></footer>
      <footer class="blockquote-footer"><a href="http://ncov.mohw.go.kr/">한국 내 코로나바이러스 정보 (질병관리청)</a></footer><br>
      
      <p>데이터베이스</p>
      <footer class="blockquote-footer"><a href="https://www.ncbi.nlm.nih.gov/labs/virus/vssi/#/virus?SeqType_s=Nucleotide&VirusLineage_ss=Wuhan%20seafood%20market%20pneumonia%20virus,%20taxid:2697049">NCBI Virus</a> : 미국 NCBI(National Center for Biotechnology information)에서 운영하는 바이러스 유전자 데이터 베이스</footer>
      <footer class="blockquote-footer"><a href="https://pubmed.ncbi.nlm.nih.gov/?term=2019-Ncov">PubMed</a> : 신종코로나바이러스 논문 검색 결과</footer>
      <footer class="blockquote-footer"><a href="https://www.cdc.gov/coronavirus/2019-ncov/publications.html">CDC</a> : 신종코로나바이러스 관련 자료</footer><br>
      
      <p>WHO</p>
      <footer class="blockquote-footer"><a href="https://www.who.int/emergencies/diseases/novel-coronavirus-2019">예방수칙, 의료 기술적 가이드라인, 최신 레포드 등 제공</a></footer>
      <footer class="blockquote-footer"><a href="https://www.who.int/health-topics/coronavirus">코로나-19 바이러스 현황</a></footer>
      <footer class="blockquote-footer"><a href="https://www.who.int/news-room/q-a-detail/q-a-coronaviruses">코로나-19 바이러스 Q&A</a></footer><br>
    </blockquote>
  </div>
</div>


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