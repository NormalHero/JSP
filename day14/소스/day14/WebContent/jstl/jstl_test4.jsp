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

	<c:choose>
		<%-- param.userid가 empty 일때 --%>
		<c:when test="${empty param.userid }">
			<form>
				아이디<input type="text" name="userid"><br>
				비밀번호<input type="text" name="userpw"><br>
				<input type="submit">	
			</form>
		</c:when>
		
		<%-- param.userid가 empty 아닌경우 일때 --%>
		<c:otherwise>
			<c:set var="userid" value="${param.userid }" />
			<c:set var="userpw" value="${param.userpw }" />
				<c:choose>
					<c:when test="${userid == 'admin' }">관리자</c:when>				
					<c:when test="${userid == 'apple' }">김사과</c:when>
					<c:otherwise>비회원</c:otherwise>
				</c:choose>
		</c:otherwise>		
	</c:choose>

</body>
</html>




















