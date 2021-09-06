package com.koreait.app.user;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.koreait.action.Action;
import com.koreait.action.ActionForward;
import com.koreait.app.user.dao.UserDAO;
import com.koreait.app.user.dao.UserDTO;

public class UserInfoAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) {
		UserDAO udao = new UserDAO();
		ActionForward forward = new ActionForward();
		HttpSession session = request.getSession();
		String login_id = (String)session.getAttribute("login_id");
		UserDTO user = udao.getDatail(login_id);
		
		request.setAttribute("user", user);
		forward.setRedirect(false);
		forward.setPath("/app/user/infoview.jsp");
		
		return forward;
	}

}









