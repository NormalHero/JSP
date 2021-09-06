package com.koreait.app.user;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.koreait.action.Action;
import com.koreait.action.ActionForward;
import com.koreait.app.user.dao.UserDAO;

public class UserLoginOkAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) {
		ActionForward forward = new ActionForward();
		UserDAO udao = new UserDAO();
		
		HttpSession session = request.getSession();
		String userid = request.getParameter("userid");
		String userpw = request.getParameter("userpw");

		 if(udao.login(userid, userpw)) {
			 session.setAttribute("login_id", userid);
			 forward.setPath("/app/main/mainview.jsp");
		 }else {
			 forward.setPath("/app/user/loginview.jsp?flag=false");
		 }
		 
		forward.setRedirect(false);
		return forward;
	}

}









