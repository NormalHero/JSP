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
	<form action="search_db.jsp">
		검색하실 회원의 ID <input type="text" name="userid"><br>
		<input type="button" value="전체 회원 보기" onclick="location.href = 'list_db.jsp'">
		<input type="submit">
	</form>
	
	<hr>
	<table border="1">
		<tr>
			<th>아이디</th>
			<th>비밀번호</th>
			<th>이름</th>
			<th>성별</th>
			<th>상세주소</th>
		</tr>
		<c:choose>
			<c:when test="${!empty requestScope.user }">
				<c:set var="user" value="${requestScope.user }"/>
					<tr>
						<td>${user.userid }</td>
						<td>${user.userpw }</td>
						<td>${user.username }</td>
						<td>${user.usergender }</td>
						<td>${user.addrdetail }</td>
					</tr>
			</c:when>
			<c:otherwise>
				<c:forEach var="user" items="${requestScope.list }">
					<tr>
						<td>${user.userid }</td>
						<td>${user.userpw }</td>
						<td>${user.username }</td>
						<td>${user.usergender }</td>
						<td>${user.addrdetail }</td>
					</tr>
				</c:forEach>
			</c:otherwise>
		</c:choose>
	</table>

</body>
</html>


















