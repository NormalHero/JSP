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
		String data = "hello";	
		// pageContext : 현재 페이지
		pageContext.setAttribute("data", data);
	
		Cookie cookie = new Cookie("elcookie", "elCookiTest");
		response.addCookie(cookie);
	%>
	${data}<br>
	<%-- 문자열 그대로 출력 : \ --%>
	\${data}<br>
	${10+20}<br>
	${10 > 3 }<br>
	<hr>
	<form action="el_test2.jsp">
		아이디<input type="text" name="id"><br>
		비밀번호<input type="text" name="pw"><br>
		<input type="submit">
	</form>
	
</body>
</html>






















