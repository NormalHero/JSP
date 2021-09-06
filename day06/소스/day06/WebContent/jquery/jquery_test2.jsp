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
	<!-- 5행 5열 테이블 만들기 -->
	<table border="1">
	<%
		for(int i = 0; i<5; i++){
	%>
		<tr class="<%=i%2==0?"odd":"even"%>">
			<%
				for(int j = 0; j < 5; j++){
			%>
				<td><%=i+1 %>행 <%=j+1 %>열</td>
			<%
				}
			%>
	
		</tr>
	<%
		}
	%>
	</table>
</body>
<script>
	$(".even").css("color","blue");
	$(".odd").css("color","red");
</script>
</html>


































