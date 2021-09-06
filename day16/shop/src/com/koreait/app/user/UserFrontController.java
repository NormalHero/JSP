package com.koreait.app.user;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.koreait.action.ActionForward;

public class UserFrontController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doProcess(req, resp);
	}

	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doProcess(req, resp);
	}
	
	protected void doProcess(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		String requestURI = req.getRequestURI();
		String contextpath = req.getContextPath();
		String command = requestURI.substring(contextpath.length());
		
		System.out.println("command : " + command);
		
		ActionForward forward = null;
		
		if(command.equals("/user/UserJoin.us")) {
			forward = new UserJoinAction().execute(req, resp);
		} else if( command.equals("/user/UserLogin.us") ) {
			forward = new ActionForward(false, "/app/user/loginview.jsp");
		} else if( command.equals("/user/UserLoginOK.us")) {
			forward = new UserLoginOkAction().execute(req, resp);
		} else if(command.equals("/user/UserLogout.us")) {
			forward = new ActionForward(true, req.getContextPath() + "/app/user/loginview.jsp");
			req.getSession().removeAttribute("login_id");
		} else if( command.equals("/user/UserInfo.us")) {
			forward = new UserInfoAction().execute(req, resp);
		} else if( command.equals("/user/UserUpdate.us") ){
			forward = new UserUpdateAction().execute(req, resp);
		} else {
			forward = new ActionForward(false, "/app/error/404.jsp");
		}
		
		
		// 일괄처리
		if( forward != null ) {
			if( forward.isRedirect() ) {
				// Action의 수행 후 페이지 이동방식이 Redirect 일때
				resp.sendRedirect(forward.getPath());
			} else {
				// Action의 수행 후 페이지 이동방식이 Forward 일때
				RequestDispatcher disp = req.getRequestDispatcher( forward.getPath() );
				disp.forward(req, resp);
			}
		}
		
	}
}




















