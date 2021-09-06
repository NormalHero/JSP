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
	<c:if test="${empty sessionScope.login_id }">
		<script>
			alert("로그인 후 이용하세요");
			location.href = "${pageContext.request.contextPath}/user/UserLogin.us";
		</script>
	</c:if>
	<div style="text-align: right;">
		${sessionScope.login_id }님 안녕하세요!
		<a href="${pageContext.request.contextPath }/user/UserLogout.us">[로그아웃]</a>
		<a href="${pageContext.request.contextPath }/user/UserInfo.us">[내 정보]</a>
	</div>
	<hr>
	<table>
		<tr>
			<td>상품추가</td>
			<td>
				<input type="button" value="추가하러 가기">
			</td>
		</tr>
		<tr>
			<td>내 상품목록</td>
			<td>
				<input type="button" value="내 목록 보기">
			</td>		
		</tr>
	</table>
</body>
</html>





















