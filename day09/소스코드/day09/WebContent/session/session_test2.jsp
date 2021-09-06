<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<% request.setCharacterEncoding("UTF-8");%>
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
		String userid = request.getParameter("userid");
		String userpw = request.getParameter("userpw");
		
		if( userid.equals("apple") && userpw.equals("abcd1234") ){
			session.setAttribute("session_id", userid);
			response.sendRedirect("session_test.jsp");
		} else {	
	%>
		<script>
			alert("아이디 또는 패스워드를 확인해주세요!");
			location.href = "session_test.jsp";
		</script>	
	<%
		}
	%>

</body>
</html>














