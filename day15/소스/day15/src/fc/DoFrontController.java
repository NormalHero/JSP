package fc;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class DoFrontController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) 
			throws ServletException, IOException {
		doProcess(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) 
			throws ServletException, IOException {
		doProcess(req, resp);
	}
	
	protected void doProcess(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println("URI : " + req.getRequestURI());
		System.out.println("ContextPath : " + req.getContextPath());
		
		String requestURI = req.getRequestURI();
		String contextpath = req.getContextPath();
		String command = requestURI.substring(contextpath.length());
		
		System.out.println("command : " + command);
		
		String responseURI = null;
		if(command.equals("/fc/do1.do")) {
			
//			req.setAttribute("result", "do1요청으로 보내기!");			// 처리
//			req.getRequestDispatcher("do1.jsp").forward(req, resp);	// 응답
			
			responseURI = new Do1().execute(req, resp);
			
		} else if( command.equals("/fc/do2.do") ) {
			
//			req.setAttribute("result", "do2요청으로 보내기!");			// 처리
//			req.getRequestDispatcher("do2.jsp").forward(req, resp);	// 응답
			
			responseURI = new Do2().execute(req, resp);
			
		} else if( command.equals("/fc/do3.do") ) {
			
//			req.setAttribute("result", "do3요청으로 보내기!");			// 처리
//			req.getRequestDispatcher("do3.jsp").forward(req, resp);	// 응답
			
			responseURI = new Do3().execute(req, resp);
			
		}
		
		req.getRequestDispatcher(responseURI).forward(req, resp);
		
		
	}
	
	
	
}



















