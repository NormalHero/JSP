<%@page import="dao.UserDAO"%>
<%@ page import="dto.UserDTO"%>
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
// 		String userid = request.getParameter("userid");
// 		String userpw = request.getParameter("userpw");
// 		String username = request.getParameter("username");
// 		String userphone = request.getParameter("userphone");
	
		// data set
		UserDTO udto = new UserDTO();
		udto.setUserid(request.getParameter("userid"));
		udto.setUserpw(request.getParameter("userpw"));
		udto.setUsername(request.getParameter("username"));
		udto.setUserphone(request.getParameter("userphone"));
		
		UserDAO udao = new UserDAO();
		boolean result = udao.join(udto);
		if(result){
			System.out.println("회원가입 성공");
		} else {
			System.out.println("회원가입 실패");
		}
		
	
	%>

</body>
</html>




















