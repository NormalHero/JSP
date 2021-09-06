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
	<form action="${pageContext.request.contextPath }/user/UserJoin.us" method="post">
		<p>
			아이디<input type="text" name="userid">
		</p>
		<p>
			패스워드<input type="password" name="userpw">
		</p>
		<p>
			이름<input type="text" name="username">
		</p>
		<p>
			전화번호<input type="text" name="userphone">
		</p>
		<p>
			주소<input type="text" name="useraddr">
		</p>
		<p>
			<input type="submit" name="회원가입">
		</p>
	</form>
</body>
</html>
















