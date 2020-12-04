<%@ page import="java.sql.*" %>
<%@ page import="org.w3c.dom.*" %>
<%@ page import="javax.xml.parsers.*" %>
<%@ page import="java.text.*" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%@ include file="connectDB.jsp" %>
<%
	Date date = new Date();
	SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss"); // Access Time
	SimpleDateFormat sdf2 = new SimpleDateFormat("yyyyMMdd");	// Lastest Data Time
	
	// Get Yesterday date
	date = new Date(date.getTime()+(1000*60*60*24*-1));
	SimpleDateFormat dSdf = new SimpleDateFormat("yyyyMMdd", Locale.KOREA);
	String yesterday = dSdf.format(date);

	
	
	Statement stat = null;
	ResultSet rs = null;

	String sql = "select * from corona where Date="+yesterday;	// 질병관리청 업데이트 전
	/* String sql = "select * from corona where Date="+sdf2.format(date); */

	stat = conn.createStatement();
	rs = stat.executeQuery(sql);

	int result = 0;
	String createDt = null;

	
	if(rs.next()){
		result = 1;
		createDt = rs.getString("createDt");
		request.setAttribute("createDt", rs.getString("createDt"));
		/* request.setAttribute("empname", rs.getString("empname"));
		request.setAttribute("empdept", rs.getString("empdept"));
		request.setAttribute("empjob", rs.getString("empjob"));
		request.setAttribute("empsal", rs.getInt("empsal")); */ 
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
		<div class="sb-page-header-title">
		<span id="title">국내 종합상황판</span>
		</h1>
	<div class="sb-page-header-subtitle" id="content">'코로나19' 국내 종합상황판은 질병관리본부의 공공API로 제작됩니다.</div> 
	<br>
	
	<div class="sb-page-header-subtitle">최종 업데이트 시간 : ${createDt }</div>
	<div class="sb-page-header-subtitle">현재 접속시간 : <%=sdf.format(date) %></div>
	</div></div></div>
	
	
	<div class="card mb-4">   
    <div class="card-header">일간 국내 코로나바이러스 현황(수동업데이트)</div>
     <div class="card-body">
      <div class="chart-area"><div class="chartjs-size-monitor"><div class="chartjs-size-monitor-expand"><div class=""></div></div><div class="chartjs-size-monitor-shrink"><div class=""></div></div></div>
      <canvas id="korAreaChart" width="374" height="240" class="chartjs-render-monitor" style="display: block; width: 374px; height: 240px;"></canvas></div>
       <div class="card-footer">질병관리본부의 오전브리핑을 기준으로 제작되었습니다.</div>   </div> </div>
	
	<!-- Card Body Area -->
	<div class="col-xl-3 col-md-6 mb-4">
    	<div class="card border-left-primary shadow h-100 py-2">
    		<div class="card-body">
    			<div class="row no-gutters align-items-center">
   					 <div class="col mr-2">
    					<div class="text-xs font-weight-bold text-primary text-uppercase mb-1">Earnings (Monthly)</div>
							<div class="h5 mb-0 font-weight-bold text-gray-800">$40,000</div>
    				</div>
    				<div class="col-auto">
    					<i class="fas fa-calendar fa-2x text-gray-300"></i>
                    </div>
               </div>
           </div>
      </div>
  </div>
	<!-- End of Card Body Aread -->
	
	
	
	
	
	
<!-- Card Section -->
<h2>Card Section</h2>
	<div class="row">
		 <div class="col-lg-6 mb-4">
			<div class="card bg-primary text-white shadow">
				<div class="card-body">
					Primary
				<div class="text-white-50 small">#4e73df</div>
				</div>
			</div>
		</div>

		<div class="col-lg-6 mb-4">
			<div class="card bg-success text-white shadow">
				<div class="card-body">
					Success
				<div class="text-white-50 small">#1cc88a</div>
				</div>
			</div>
		</div>
                                
		<div class="col-lg-6 mb-4">
			<div class="card bg-info text-white shadow">
				<div class="card-body">
					Info
				<div class="text-white-50 small">#36b9cc</div>
				</div>
			</div>
		</div>
                                
		<div class="col-lg-6 mb-4">
			<div class="card bg-warning text-white shadow">
				<div class="card-body">
					Warning
				<div class="text-white-50 small">#f6c23e</div>
				</div>
			</div>
		</div>
                                
		<div class="col-lg-6 mb-4">
			<div class="card bg-danger text-white shadow">
				<div class="card-body">
					Danger
				<div class="text-white-50 small">#e74a3b</div>
				</div>
			</div>
		</div>
                                
		<div class="col-lg-6 mb-4">
			<div class="card bg-secondary text-white shadow">
				<div class="card-body">
					Secondary
				<div class="text-white-50 small">#858796</div>
				</div>
			</div>
		</div>
                                
		<div class="col-lg-6 mb-4">
			<div class="card bg-light text-black shadow">
				<div class="card-body">
					Light
				<div class="text-black-50 small">#f8f9fc</div>
				</div>
			</div>
		</div>
                                
		<div class="col-lg-6 mb-4">
			<div class="card bg-dark text-white shadow">
				<div class="card-body">
					Dark
				<div class="text-white-50 small">#5a5c69</div>
				</div>
			</div>
		</div>
     </div>
<!-- End of Card Section -->

</body>
</html>