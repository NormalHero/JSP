<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
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
	<c:if test="${not empty param.flag }">
		<c:if test="${not param.flag }">
			<script>
				alert("로그인 실패!");
			</script>
		</c:if>
	</c:if>
	<form action="${pageContext.request.contextPath }/user/UserLoginOK.us" method="post">
		<p>
			아이디<input type="text" name="userid">
		</p>
		<p>
			비밀번호<input type="password" name="userpw">
		</p>
		<p>
			<input type="submit" value="로그인하기">
		</p>
	</form>
	
</body>
</html>










