<%@page import="vo.User"%>
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
		// 세명의 아이디, 이름, 나이들을 sttrtest6.jsp로 전송하여 출력하기
		User[] arUser = {
			new User("apple", "김사과", 10),
			new User("banana", "반하나", 20),
			new User("cherry", "이체리", 30)
		};
	
		request.setAttribute("users", arUser);
		pageContext.forward("attrtest6.jsp");
	
	%>

</body>
</html>















