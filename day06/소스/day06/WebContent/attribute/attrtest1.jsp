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
		String userid = "apple";
		String userpw = "adbc1234";
		String username = "김사과";
	
// 		request.setAttribute("userid", userid);
// 		request.setAttribute("userpw", userpw);
// 		request.setAttribute("username", username);
		
		// request가 살아있어야 하기 때문에 forward로 전송 
// 		pageContext.forward("attrtest2.jsp");
// 		response.sendRedirect("attrtest2.jsp");
		
		// session 사용
		session.setAttribute("userid", userid);
		session.setAttribute("userpw", userpw);
		session.setAttribute("username", username);
// 		pageContext.forward("attrtest2.jsp");
		response.sendRedirect("attrtest2.jsp");

	%>


</body>
</html>













