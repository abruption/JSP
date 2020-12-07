package api;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import java.sql.*;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;
import java.text.SimpleDateFormat;
import java.util.Date;


public class CoronaDB {

    // tag값의 정보를 가져오는 메소드
	private static String getTagValue(String tag, Element eElement) {
	    NodeList nlList = eElement.getElementsByTagName(tag).item(0).getChildNodes();
	    Node nValue = (Node) nlList.item(0);
	    if(nValue == null) 
	        return null;
	    return nValue.getNodeValue();
	}

	public static void main(String[] args) {
		String decideCnt = null;
		String examCnt = null;
		String resutlNegCnt = null;
		String deathCnt = null;
		String clearCnt = null;
		String createDt = null;
		
		Date now = new Date();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMdd");
		String Date = sdf.format(now);

		try{
			while(true){
				// parsing할 url 지정(API 키 포함해서)
				String url = "http://openapi.data.go.kr/openapi/service/rest/Covid19/getCovid19InfStateJson?serviceKey=yljMUbKrYNMLNeJXl0v7YYo4HUhAyhZb1ZpiIBDCZtohH3Kie%2F4NxXwjud5T5oBFMQcGvnJaBcZmFwbC6QDmkQ%3D%3D&pageNo=1&numOfRows=10&startCreateDt="+Date+"&endCreateDt="+Date;
				
				DocumentBuilderFactory dbFactoty = DocumentBuilderFactory.newInstance();
				DocumentBuilder dBuilder = dbFactoty.newDocumentBuilder();
				Document doc = dBuilder.parse(url);
				
				// root tag 
				doc.getDocumentElement().normalize();
				System.out.println("Root element :" + doc.getDocumentElement().getNodeName());
				
				// 파싱할 tag
				NodeList nList = doc.getElementsByTagName("item");
				//System.out.println("파싱할 리스트 수 : "+ nList.getLength());
				
				for(int temp = 0; temp < nList.getLength(); temp++){
					Node nNode = nList.item(temp);
					if(nNode.getNodeType() == Node.ELEMENT_NODE){
						
						Element eElement = (Element) nNode;
						
						 decideCnt = getTagValue("decideCnt", eElement);
						 examCnt = getTagValue("examCnt", eElement);
						 resutlNegCnt = getTagValue("resutlNegCnt", eElement);
						 deathCnt = getTagValue("deathCnt", eElement);
						 clearCnt = getTagValue("clearCnt", eElement);
						 createDt = getTagValue("createDt", eElement);
						
						System.out.println("######################");
						//System.out.println(eElement.getTextContent());
						System.out.println("집계 기준일 : " + Date);
						System.out.println("확진자 수  : " + decideCnt);
						System.out.println("검사진행 수  : " + examCnt);
						System.out.println("결과 음성 수 : " + resutlNegCnt);
						System.out.println("사망자 수  : " + deathCnt);
						System.out.println("격리해제 수  : " + clearCnt);
					}	// for end
				}	// if end
				
//				page += 1;
//				System.out.println("page number : "+page);
//				if(page > 1){	
//					break;
//				}
				break;
			}	// while end
			
		} catch (Exception e){	
			e.printStackTrace();
		}	// try~catch end
		
		try {
		Connection conn = null;
		
		String url 		= "jdbc:mysql://localhost:3306/jspDB?useUnicode=true&characterEncoding=UTF-8&useSSL=false&serverTimezone=UTC";
		String user 	= "root";
		String password = "1234";
		
		Class.forName("com.mysql.jdbc.Driver");
		conn = DriverManager.getConnection(url, user, password);
		
		PreparedStatement pstat 	= null;
		ResultSet 		  rs		= null;
		
		String sql1 = "select * from corona where Date=?";
		String sql2 = "insert into corona values (?,?,?,?,?,?,?)";
		
		String DateChk = Date;
		int result = 0;
		
		pstat = conn.prepareStatement(sql1);
		pstat.setString(1, DateChk);
		rs = pstat.executeQuery();
		
		
		if(rs.next()){
			// 테이블에 정보가 등록되어 있는 경우
			DateChk = "duplication";
			System.out.println(DateChk);
		} else {
		pstat = conn.prepareStatement(sql2);
		pstat.setString(1, decideCnt);
		pstat.setString(2, examCnt);
		pstat.setString(3, resutlNegCnt);
		pstat.setString(4, deathCnt);
		pstat.setString(5, clearCnt);
		pstat.setString(6, Date);
		pstat.setString(7, createDt);
		
		// 쿼리 실행
		result = pstat.executeUpdate();
		}
		
		rs.close();
		pstat.close();
		conn.close();
		
		} catch (SQLException e) {
			System.out.println("SQL Error : " + e.getMessage());
		} catch (ClassNotFoundException e1) {
			System.out.println("JDBC Conntector Driver 오류 : " + e1.getMessage());
		}
	}	// main end
}	// class end