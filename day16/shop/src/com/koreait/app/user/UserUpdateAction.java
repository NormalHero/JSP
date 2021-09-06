package com.koreait.app.user;

import java.io.UnsupportedEncodingException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.koreait.action.Action;
import com.koreait.action.ActionForward;
import com.koreait.app.user.dao.UserDAO;
import com.koreait.app.user.dao.UserDTO;

public class UserUpdateAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) {
		ActionForward forward = new ActionForward();
		UserDAO udao = new UserDAO();
		
		try {
			request.setCharacterEncoding("UTF-8");
			response.setCharacterEncoding("UTF-8");
			response.setContentType("test/html;charset=utf-8");
			
			String userid = request.getParameter("userid");
			String userpw = request.getParameter("userpw");
			String username = request.getParameter("username");
			String userphone = request.getParameter("userphone");
			String useraddr = request.getParameter("useraddr");
			
			UserDTO user = new UserDTO();
			user.setUserid(userid);
			user.setUserpw(userpw);
			user.setUsername(username);
			user.setUserphone(userphone);
			user.setUseraddr(useraddr);
			
			forward.setRedirect(true);
			if(udao.updateUser(user)) {	
				// 성공
				forward.setPath(request.getContextPath() + "/app/main/mainview.jsp");
			} else {
				// 실패
				forward.setPath(request.getContextPath() + "/user/UserInfo.us?flag=false");
			}
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		
		return forward;
	}

}


















