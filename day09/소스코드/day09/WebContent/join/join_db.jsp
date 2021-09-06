<%@page import="com.koreait.dao.TBL_MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%request.setCharacterEncoding("UTF-8"); %>
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
	<jsp:useBean id="member" class="com.koreait.beans.TBL_MemberBeans"></jsp:useBean>
<%-- 	<jsp:setProperty property="userid" name="member"/> --%>
<%-- 	<jsp:setProperty property="userid" name="member"/> --%>
<%-- 	<jsp:setProperty property="userid" name="member"/> --%>
<%-- 	<jsp:setProperty property="userid" name="member"/> --%>
<%-- 	<jsp:setProperty property="userid" name="member"/> --%>
<%-- 	<jsp:setProperty property="userid" name="member"/> --%>
<%-- 	<jsp:setProperty property="userid" name="member"/> --%>

<!-- 	외부에서 전달된 name 속성과 필드의 이름이 같으면 value가 자동으로 세팅된다. -->
	<jsp:setProperty property="*" name="member"/>
<%
	TBL_MemberDAO mdao = new TBL_MemberDAO();
	System.out.println( member.getUsername() );
	System.out.println( member.getUserid() );
	System.out.println( member.getUserphone() );
	
	if(mdao.join(member)){
		Cookie cookie = new Cookie("joinid", member.getUserid());
		response.addCookie(cookie);
%>
		<script>
			alert('회원가입 성공!');
			location.href = "loginview.jsp";
		</script>

<%
	} else {
%>
	<script>
		alert('회원가입 실패!');
		location.href = "join_view.jsp"
	</script>
<%
	}
%>

</body>
</html>
















