package com.koreait.app.user;

import java.io.UnsupportedEncodingException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.koreait.action.Action;
import com.koreait.action.ActionForward;
import com.koreait.app.user.dao.UserDAO;
import com.koreait.app.user.dao.UserDTO;

public class UserJoinAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) {
		UserDAO udao = new UserDAO();
		UserDTO user = new UserDTO();
		
		ActionForward forward = new ActionForward();
		
		try {
			request.setCharacterEncoding("UTF-8");
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		
		user.setUserid(request.getParameter("userid"));
		user.setUserpw(request.getParameter("userpw"));
		user.setUsername(request.getParameter("username"));
		user.setUserphone(request.getParameter("userphone"));
		user.setUseraddr(request.getParameter("useraddr"));
		
		if( udao.join(user) ) {	// 성공
			forward.setPath(request.getContextPath() + "/app/user/loginview.jsp");
			forward.setRedirect(true);
		} else {				// 실패
			
		}
		
		return forward;
	}

}



















