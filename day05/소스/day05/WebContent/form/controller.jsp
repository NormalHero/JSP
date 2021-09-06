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
		String site = request.getParameter("site");
		String resultURI = "";
		
		if( site.equals("naver") ){
			resultURI = "forward_naver.jsp";
		} else if( site.equals("google") ){
			resultURI = "forward_google.jsp";
		} else if( site.equals("daum") ){
			resultURI = "forward_daum.jsp";
		}
	%>
	
	<jsp:forward page="<%=resultURI %>" />
	
</body>
</html>












