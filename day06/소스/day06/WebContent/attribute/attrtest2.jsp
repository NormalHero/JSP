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
// 		String userid =  (String)request.getAttribute("userid");
// 		String userpw = (String)request.getAttribute("userpw");
// 		String username = (String)request.getAttribute("username");

		String userid = (String)session.getAttribute("userid");
		String userpw = (String)session.getAttribute("userpw");
		String username = (String)session.getAttribute("username");
	%>
	
	아이디 : <%=userid %><br>
	비밀번호 : <%=userpw %><br>
	이름 : <%=username %><br>

</body>
</html>















