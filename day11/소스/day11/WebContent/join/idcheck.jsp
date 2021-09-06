<%@page import="com.koreait.dao.TBL_MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%
	String userid = request.getParameter("userid");
	TBL_MemberDAO mdao = new TBL_MemberDAO();	
	if( !mdao.checkId(userid) ){		// true : 아이디가 존재, false : 아디가 존재하지 않음
		out.print("ok");
	} else {
		out.print("not-ok");
	}
%>
