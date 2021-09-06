<%@page import="com.koreait.beans.MemberBean"%>
<%@page import="java.util.ArrayList"%>
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
	<jsp:useBean id="mdao" class="com.koreait.dao.MemberDAO" />
<%
	ArrayList<MemberBean> result = mdao.selectAll();
%>
	<table border="1">
		<tr>
			<th>이름</th>
			<th>나이</th>
		</tr>
		<%
			for(MemberBean member : result){
		%>
			<tr>
				<td><%=member.getName() %></td>
				<td><%=member.getAge() %></td>
			</tr>
		<%
			}
		%>
	</table>
</body>
</html>










