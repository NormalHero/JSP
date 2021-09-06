<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%!
	/*
		JSP 페이지는 그 자체가 하나의 클래스로서의 역학을 하기 때문에
		별도의 클래스 저으이 없이 바로 메서드 정의가 가능하다.
		메서드나 상수를 정의하기 위한 선언 블록.
		블록을 시작하는 괄호에 "!"가 포함된다.
	*/
	public String getMessage(){
		String msg = "Hello JSP";
		return msg;
	}

%>

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
	<div class="container">
<!-- 		<h1>Hello JSP</h1> -->
		
		<%
			String msg1 = getMessage();
			out.print("<h1>" + msg1 + "</h1>");
		%>
		
		<%
			out.print( "<h1>" + getMessage() + "</h1>" );
		%>
		
		<h1><%=getMessage() %></h1>
		
		
		
		
		
		
	</div>
</body>
</html>

