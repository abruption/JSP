<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="org.w3c.dom.*" %>
<%@ page import="javax.xml.parsers.*" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Date" %>
<%@ page import="java.util.Locale" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.7.2/Chart.js"></script>
<body>

<%@ include file="connectDB.jsp" %>
<%
	Date date = new Date();
	SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss"); // Access Time
	SimpleDateFormat sdf2 = new SimpleDateFormat("yyyyMMdd");	// Lastest Data Time
	String detailtoday = sdf.format(date);
	String today = sdf2.format(date);
	
	
	// Get Yesterday date
	date = new Date(date.getTime()+(1000*60*60*24*-1));
	SimpleDateFormat dSdf = new SimpleDateFormat("yyyyMMdd", Locale.KOREA);
	String yesterday = dSdf.format(date);

	
	Statement stat = null;
	ResultSet rs = null;
	
	String sql = "select * from corona where Date="+today; 
	String ysql = "select * from corona where Date="+yesterday;	

	stat = conn.createStatement();
	rs = stat.executeQuery(sql);

	int result = 0;
	
	if(rs.next()){
		result = 1;
		request.setAttribute("createDt", rs.getString("createDt"));
		request.setAttribute("decideCnt", rs.getInt("decideCnt"));
		request.setAttribute("examCnt", rs.getInt("examCnt"));
		request.setAttribute("clearCnt", rs.getInt("clearCnt"));
		request.setAttribute("deathCnt", rs.getInt("deathCnt")); 
	}
	
	rs = stat.executeQuery(ysql);
	
	if(rs.next()){
		result = 1;
		request.setAttribute("ydecideCnt", rs.getInt("decideCnt"));
		request.setAttribute("yexamCnt", rs.getInt("examCnt"));
		request.setAttribute("yclearCnt", rs.getInt("clearCnt"));
		request.setAttribute("ydeathCnt", rs.getInt("deathCnt")); 
	}

	request.setAttribute("result", result);

	rs.close();
	stat.close();
	conn.close();
%>

<!-- Main Content Area -->
<main role="main" class="col-md-9 ml-sm-auto col-lg-10 px-md-4">
	<div class="sb-page-header pb-10 sb-page-header-dark bg-gradient-primary-to-secondary">
		<div class="container-fluid">
		<div class="sb-page-header-content py-5">
		<h1 class="sb-page-header-title">
		<div class="sb-page-header-title"></div>
		<span id="title">국내 종합상황판</span>
		</h1>
	<div class="sb-page-header-subtitle" id="content">'코로나19' 국내 종합상황판은 공공데이터 포털의 보건복지부 Open API를 기반으로 합니다.</div> 
	<br>
	
	<div class="sb-page-header-subtitle">최종 업데이트 시간 : ${createDt }</div>
	<div class="sb-page-header-subtitle">현재 접속시간 : <%=detailtoday %></div>
	</div></div></div>
	
	
	<div class="card mb-4">   
    <div class="card-header">일간 국내 코로나바이러스 현황표</div>
     <div class="card-body">
      <div class="chart-area"><div class="chartjs-size-monitor"><div class="chartjs-size-monitor-expand"><div class=""></div></div><div class="chartjs-size-monitor-shrink"><div class=""></div></div></div>
      <canvas id="korAreaChart" width="374" height="240" class="chartjs-render-monitor" style="display: block; width: 374px; height: 240px;"></canvas></div>
       <div class="card-footer">해당 자료는 질병관리청의 오전 브리핑을 기준으로 합니다.</div>   </div> </div>
	
		<!-- Chart.js Call -->
		<script src="js/korAreaChart.js"></script>
		<!-- End of Chart.js -->
	
<!-- Card Section -->
<!-- <h2>Card Section</h2> -->
	<div class="row">
		 <div class="col-lg-6 mb-4">
			<div class="card bg-primary text-white shadow">
				<div class="card-body" style="font-weight: bold; font-size:2.0em;">
					국내 검사중
				<div class="text-white-50 small"><b>${examCnt }명(+${examCnt-yexamCnt }명)</b></div>
				</div>
			</div>
		</div>

		<div class="col-lg-6 mb-4">
			<div class="card bg-warning text-white shadow">
				<div class="card-body" style="font-weight: bold; font-size:2.0em;">
					국내 확진환자
				<div class="text-white-50 small"><b>${decideCnt }명(+${decideCnt-ydecideCnt }명)</b></div>
				</div>
			</div>
		</div>
                                
		<div class="col-lg-6 mb-4">
			<div class="card bg-info text-white shadow">
				<div class="card-body" style="font-weight: bold; font-size:2.0em;">
					국내 격리해제
				<div class="text-white-50 small"><b>${clearCnt }명(+${clearCnt-yclearCnt }명)</b></div>
				</div>
			</div>
		</div>
                                
		
                                
		<div class="col-lg-6 mb-4">
			<div class="card bg-danger text-white shadow">
				<div class="card-body" style="font-weight: bold; font-size:2.0em;">
					국내 사망자
				<div class="text-white-50 small"><b>${deathCnt }명(+${deathCnt-ydeathCnt }명)</b></div>
				</div>
			</div>
		</div>

                                
		<!-- <div class="col-lg-6 mb-4">
			<div class="card bg-light text-black shadow">
				<div class="card-body">
					Light
				<div class="text-black-50 small">#f8f9fc</div>
				</div>
			</div>
		</div> -->
                                
     </div>
<!-- End of Card Section -->







</body>
</html>