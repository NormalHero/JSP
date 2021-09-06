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
	<table border="1">
	<%
		for(int i = 1; i <= 5; i++){
	%>
		<tr>
			<%
				for(int j = 1; j<=i; j++){
			%>
				<td><%=i %>행 <%=j %>열</td>
			<%
				}
			%>
		</tr>
	<%
		}
	%>
	
	<%
		for(int i=1; i<=5; i++){
	%>
		<tr>
			<%
				for(int j=1; j<= 6-i; j++){
			%>
				<td><%=i+5 %>행<%=j %>열</td>
			<%
				}
			%>
		
		</tr>
	<%
		}
	%>
	</table>
</body>
</html>















