<%@page import="com.koreait.beans.TBL_MemberBeans"%>
<%@page import="com.koreait.dao.TBL_MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<!doctype html>
<html>
<head>
	<meta charset="utf-8" />
	<title>My JSP Page</title>
	<!-- Twitter Bootstrap3 & jQuery -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" />
	<script src="http://code.jquery.com/jquery-3.3.1.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
	<%
		TBL_MemberDAO mdao = new TBL_MemberDAO();
		String userid = request.getParameter("userid");
		String userpw = request.getParameter("userpw");
		TBL_MemberBeans member = mdao.login(userid, userpw);
		
		if( member != null ){	
			session.setAttribute("session_id", member);
	%>
		<script>
			alert("로그인성공!");
			location.href = "mainview.jsp";		
		</script>
	<%
		} else {
	
	%>
		<script>
			alert("로그인실패!");
			location.href = "loginview.jsp";
		</script>
	<%
		}	
	%>

</body>
</html>














