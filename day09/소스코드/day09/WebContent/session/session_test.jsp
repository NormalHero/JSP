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
		String userid = null;
		if( session.getAttribute("session_id") != null ){
			userid = (String)session.getAttribute("session_id");
		}
		
		if(userid == null){
	%>
	<form action="session_test2.jsp" method="post" name="loginForm">
		<p>
			아이디<input type="text" name="userid" >
		</p>
		<p>
			비밀번호<input type="password" name="userpw">
		</p>		
		<p>
			<input type="button" value="로그인" onclick="sendit()">
		</p>
	</form>	
	<%
		} else {
	%>
		<p> <%=userid %>님 환영합니다. </p>
		<a href="session_test3.jsp">로그아웃</a>	
	<%
		}
	%>
</body>
<script type="text/javascript">
	function sendit(){
		document.loginForm.submit();
	}
</script>
</html>



















