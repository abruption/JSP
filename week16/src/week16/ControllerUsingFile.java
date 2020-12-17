package week16;

import java.io.FileInputStream;
import java.io.IOException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Properties;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebInitParam;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet(urlPatterns = "*.do", initParams = {@WebInitParam(name = "config", value = "/WEB-INF/commandHandler.properties")})
public class ControllerUsingFile extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	// <커맨드, 핸들러인스턴스> 매핑 정보 저장
	private Map<String , CommandHandler> commandHandlerMap = new HashMap<>();
   
	// 서블릿을 생성하고 초기화할 때 제일 먼저 호출되는 init() 메소드를 이용
	public void init(ServletConfig config) throws ServletException {
		String configFile = config.getInitParameter("config");
		Properties prop = new Properties();
		String configFilePath = config.getServletContext().getRealPath(configFile);
		
		try (FileInputStream fis = new FileInputStream(configFilePath)){
			prop.load(fis);
		} catch(IOException e) {
			throw new ServletException(e);
		}
		
		
		// 속성 파일을 하나씩 읽어서 키값(호출패턴)과 실행명령 핸들러명을 읽어 맵에 저장
		Iterator<Object> keyIter = prop.keySet().iterator();
		while(keyIter.hasNext()) {
			String command = (String) keyIter.next();
			String handlerClassName = prop.getProperty(command);
			try{
				Class<?> handlerClass = Class.forName(handlerClassName);
				CommandHandler handlerInstance = (CommandHandler) handlerClass.newInstance();
				commandHandlerMap.put(command, handlerInstance);
			} catch (ClassNotFoundException | InstantiationException | IllegalAccessException e) {
				throw new ServletException(e);
			}
		}
	}


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			process(request, response);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			process(request, response);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}


	private void process(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// URI = /week16/main.do
		String command = request.getRequestURI();
		
		// ContextPath = /week16
		command = command.substring(request.getContextPath().length()+1);
		// 위 명령문 실행 결과 command = main.do 저장
		
		// Command를 키로 해서 해당 핸들러 객체를 가져온다.
		CommandHandler handler = commandHandlerMap.get(command);
		
		String viewPage = null;
		try {
			viewPage = handler.process(request, response);
		} catch (Exception e){
			throw new ServletException(e);
		}
		
		if(viewPage != null) {
			RequestDispatcher dispatcher = request.getRequestDispatcher(viewPage +".jsp");
			dispatcher.forward(request, response);
		}
		
	}

}
