<%@page import="com.koreait.beans.TBL_MemberBeans"%>
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
		TBL_MemberBeans member = (TBL_MemberBeans)session.getAttribute("session_id");
		if(member != null){
	%>

	<script>
		alert("<%=member.getUsername()%> 안녕하세요!");
	</script>
	<p>
		<%=member.getUsername()%>(<%=member.getUserid() %>)님 어서오세요.<input type="button" value="로그아웃">
	</p>
	
	<%
		}else {
	%>	
		<script>
			alert("로그인 후 이용해주세요!");		
			location.href = "loginview.jsp";
		</script>
	<%
		}
	%>
</body>
</html>






