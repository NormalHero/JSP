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
	choose문 사용<br>
	if~else 문의 경우 jstl에서는 choose를 이용하여 구성한다.<br>
	<hr>
	
	<c:set var="num" value="100" />
	<c:choose>
		<c:when test="${num gt 50 }">
			이 수는 50보다 큽니다.
		</c:when>
		<c:when test="${num gt 30 }">
			이 수는 30보다 큽니다.
		</c:when>
		<c:otherwise>
			이 수는 그 외의 숫자입니다.
		</c:otherwise>
	</c:choose>
</body>
</html>























