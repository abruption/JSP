<%@ page import="org.w3c.dom.*"%> 
<%@ page import="javax.xml.parsers.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="shortcut icon" href="/favicon.ico" type="image/x-icon">
<link rel="icon" href="/favicon.ico" type="image/x-icon">
<title>Insert title here</title>
</head>
<style>
#tekbeCompnayList, #invoiceNumberText {
    width: 500px;
    height: 30px;
    padding-left: 10px;
    font-size: 18px;
    color: #0000ff;
    border: 1px solid #006fff;
    border-radius: 3px;
}

#tekbeCompnayName, #invoiceNumber{
  color:black; 
  font-weight: bold; 
  margin-right: 20px;
  font-size: 18px;
}

#myButton1 {
  background: #6893b0;
  background-image: -webkit-linear-gradient(top, #6893b0, #2980b9);
  background-image: -moz-linear-gradient(top, #6893b0, #2980b9);
  background-image: -ms-linear-gradient(top, #6893b0, #2980b9);
  background-image: -o-linear-gradient(top, #6893b0, #2980b9);
  background-image: linear-gradient(to bottom, #6893b0, #2980b9);
  -webkit-border-radius: 0;
  -moz-border-radius: 0;
  border-radius: 0px;
  font-family: Arial;
  color: #ffffff;
  font-size: 20px;
  padding: 5px 5px 5px 5px;
  text-decoration: none;
}

#myButton1:hover {
  background: #3cb0fd;
  background-image: -webkit-linear-gradient(top, #3cb0fd, #3498db);
  background-image: -moz-linear-gradient(top, #3cb0fd, #3498db);
  background-image: -ms-linear-gradient(top, #3cb0fd, #3498db);
  background-image: -o-linear-gradient(top, #3cb0fd, #3498db);
  background-image: linear-gradient(to bottom, #3cb0fd, #3498db);
  text-decoration: none;
}

table {
    font-family: arial, sans-serif;
    border-collapse: collapse;
    width: 100%;
}

td, th {
    border: 1px solid #dddddd;
    text-align: left;
    padding: 8px;
}

tr:nth-child(even) {
    background-color: #dddddd;
}

</style>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.24.0/moment.min.js"></script>
<script type="text/javascript">



$(document).ready(function(){
	
	var myKey = "K8VhAxC030LyfGX2CWzTuw"; // sweet tracker에서 발급받은 자신의 키 넣는다.
	
	// 택배사 목록 조회 company-api
    $.ajax({
        type:"GET",
        dataType : "json",
        url:"http://info.sweettracker.co.kr/api/v1/companylist?t_key="+myKey,
        success:function(data){
        		
        		// 방법 1. JSON.parse 이용하기
        		var parseData = JSON.parse(JSON.stringify(data));
         		console.log(parseData.Company); // 그중 Json Array에 접근하기 위해 Array명 Company 입력
        		
        		// 방법 2. Json으로 가져온 데이터에 Array로 바로 접근하기
        		var CompanyArray = data.Company; // Json Array에 접근하기 위해 Array명 Company 입력
        		console.log(CompanyArray); 
        		
        		var myData="";
        		$.each(CompanyArray,function(key,value) {
            			myData += ('<option value='+value.Code+'>' +'key:'+key+', Code:'+value.Code+',Name:'+value.Name + '</option>');        				
        		});
        		$("#tekbeCompnayList").html(myData);
        }
    });
	
	
	
	$("#myButton1").click(function() {
		var myKey = "z240k250g079e120n010r010d0";
		var t_invoice = $('#invoiceNumberText').val();
		
    	$.ajax({
        	type:"GET",
        	dataType : "xml",
        	async: false,
        	url:"https://unipass.customs.go.kr:38010/ext/rest/cargCsclPrgsInfoQry/retrieveCargCsclPrgsInfo?crkyCn="+myKey+"&hblNo="+t_invoice+"&blYy=2020",
        	success:function(data){
        		var invoiceData = "";
        		var myTracking="";
        		var header ="";
        		
        		var title = $(data).find("prnm").text();
        		var status = $(data).find("csclPrgsStts").text();
        		var process = $(data).find("prgsStts").text();
        		var imports = $(data).find("dsprNm").text();
        		var importtime = $(data).find("etprDt").text();
        		var customs = $(data).find("etprCstm").text();
        		
        	
        		
        		invoiceData += ('<tr>');            	
        		invoiceData += ('<th>'+"상품명"+'</td>');     				
        		invoiceData += ('<th>'+title+'</td>');     				
        		invoiceData += ('</tr>');
        		invoiceData += ('<tr>');            	
        		invoiceData += ('<th>'+"통관진행상태"+'</td>');     				
        		invoiceData += ('<th>'+status+'</td>');     				
        		invoiceData += ('</tr>'); 
        		invoiceData += ('<tr>');            	
        		invoiceData += ('<th>'+"진행상태"+'</td>');     				
        		invoiceData += ('<th>'+process+'</td>');     				
        		invoiceData += ('</tr>'); 
        		invoiceData += ('<tr>');            	
        		invoiceData += ('<th>'+"입항명"+'</td>');     				
        		invoiceData += ('<th>'+imports+'</td>');     				
        		invoiceData += ('</tr>'); 
        		invoiceData += ('<tr>');            	
        		invoiceData += ('<th>'+"입항일"+'</td>');     				
        		invoiceData += ('<th>'+importtime+'</td>');     				
        		invoiceData += ('</tr>'); 
        		invoiceData += ('<tr>');            	
        		invoiceData += ('<th>'+"세관명"+'</td>');     				
        		invoiceData += ('<th>'+customs+'</td>');     				
        		invoiceData += ('</tr>'); 
        		$("#result1").html(invoiceData);
        		
        	
        		
        		header += ('<tr>');            	
        		header += ('<th>'+"장치장명"+'</th>');
        		header += ('<th>'+"반출입 내용"+'</th>');
        		header += ('<th>'+"처리구분"+'</th>');
        		header += ('<th>'+"처리일시"+'</th>');     				
    			header += ('</tr>');  
		
    			var temp = $(data).find("cargCsclPrgsInfoDtlQryVo");
    			
	       
				$(data).find('cargCsclPrgsInfoDtlQryVo').each(function (){
    				
					var customname = $(this).find("shedNm").text();
					var customdetail = $(this).find("rlbrCn").text();
		        	var progress = $(this).find("cargTrcnRelaBsopTpcd").text();
		        	var date = $(this).find("rlbrDttm").text(); 
						
    				myTracking += ('<tr>');            	
    				myTracking += ('<td>'+customname+'</td>');
    				myTracking += ('<td>'+customdetail+'</td>');
    				myTracking += ('<td>'+progress+'</td>');
    				myTracking += ('<td>'+date+'</td>');   				
        			myTracking += ('</tr>');   
    			});  

        		$("#result2").html(header+myTracking);
        		
        		
        		if(status == "통관목록심사완료" || "수입신고수리" || "반출완료"){		// 배송조회 API 호출
        			
        			var myKey = "K8VhAxC030LyfGX2CWzTuw"; 
        			var t_code = $('#tekbeCompnayList option:selected').attr('value');
					var t_invoice = $('#invoiceNumberText').val();
        			
        			$.ajax({
                        type:"GET",
                        dataType : "json",
                        url:"http://info.sweettracker.co.kr/api/v1/trackingInfo?t_key="+myKey+"&t_code="+t_code+"&t_invoice="+t_invoice,
                        success:function(data){
                        	console.log(data);
                        	var myInvoiceData = "";
                        	if(data.status == false){
                        		myInvoiceData += ('<p>'+data.msg+'<p>');
                        	}else{
        	            		/* myInvoiceData += ('<tr>');            	
        	            		myInvoiceData += ('<th>'+"보내는사람"+'</td>');     				
        	            		myInvoiceData += ('<th>'+data.senderName+'</td>');     				
        	            		myInvoiceData += ('</tr>'); */     
        	            		myInvoiceData += ('<tr>');            	
        	            		myInvoiceData += ('<th>'+"제품정보"+'</td>');     				
        	            		myInvoiceData += ('<th>'+data.itemName+'</td>');     				
        	            		myInvoiceData += ('</tr>');     
        	            		myInvoiceData += ('<tr>');            	
        	            		myInvoiceData += ('<th>'+"송장번호"+'</td>');     				
        	            		myInvoiceData += ('<th>'+data.invoiceNo+'</td>');     				
        	            		myInvoiceData += ('</tr>');     
        	            		myInvoiceData += ('<tr>');            	
        	            		/* myInvoiceData += ('<th>'+"받는주소"+'</td>');     				
        	            		myInvoiceData += ('<th>'+data.receiverAddr+'</td>');     				
        	            		myInvoiceData += ('</tr>'); */           	                		
                        	}
                			
                        	
                        	$("#myPtag").html(myInvoiceData)
                        	
                        	var trackingDetails = data.trackingDetails;
                        	
                        	
                    		var myTracking="";
                    		var header ="";
                    		header += ('<tr>');            	
                    		header += ('<th>'+"시간"+'</th>');
                    		header += ('<th>'+"장소"+'</th>');
                    		header += ('<th>'+"유형"+'</th>');
                    		header += ('<th>'+"전화번호"+'</th>');     				
                			header += ('</tr>');     
                    		
                    		$.each(trackingDetails,function(key,value) {
        	            		myTracking += ('<tr>');            	
                    			myTracking += ('<td>'+value.timeString+'</td>');
                    			myTracking += ('<td>'+value.where+'</td>');
                    			myTracking += ('<td>'+value.kind+'</td>');
                    			myTracking += ('<td>'+value.telno+'</td>');     				
        	            		myTracking += ('</tr>');        			            	
                    		});
                    		
                    		$("#myPtag2").html(header+myTracking);
                        	
                        }
                    });
        		}    
    		
        	}
        });
	});
});
	
	


</script>

<body>
	<span id="tekbeCompnayName">택배회사명 : </span>
	<select id="tekbeCompnayList" name="tekbeCompnayList"></select><br/><br/>
	
	<span id="invoiceNumber">H/BL 번호 또는 운송장번호 : </span>
	<input type="text" id="invoiceNumberText" name="invoiceNumberText">
	<button type="button" id="myButton1">조회하기 </button>
<br/>
<br/>
	<div>
		<table id="result1"></table>
	</div>
	
	<div>
		<table id="result2"></table>
	</div>
	
	<br/>
	<br/>
	<br/>
	<br/>
	
	<div>
		<p><b>택배 조회 결과</b></p>
		<table id="myPtag"></table>
	</div>
	<div>
		<table id="myPtag2"></table>
	</div>
<br/>
</body>
</html>