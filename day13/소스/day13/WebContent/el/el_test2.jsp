<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		// 기존방식
		//request.getParameter("id");
	%>
	<%-- 나오지 않는다. --%>
	아이디 : ${id }<br>
	패스워드 : ${pw }<br>
	
	아이디 : ${param.id }<br>
	패스워드 : ${param.pw }<br>
	
	<%--
		pageContext.getAttribute("id")
		request.getAttribute("id")
		session.getAttribute("id")
		application.getAttribute("id")
	 --%>
	 
	 쿠키값 : ${cookie.elcookie.value }
	 
</body>
</html>




















