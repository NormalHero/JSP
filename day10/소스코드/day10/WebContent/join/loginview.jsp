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
		String joinid = null;
		String check = request.getHeader("Cookie");
		if( check != null ){
			Cookie[] cookies = request.getCookies();
			for( Cookie c : cookies ){
				if( c.getName().equals("joinid") ){
					joinid = c.getValue();
				}
			}
		}
		
	%>
	<form action="login_db.jsp" method="post" name="frm">
		<p>
			<label>아이디<input  value="<%=joinid==null?"":joinid%>" type="text" name="userid"></label>
		</p>
		<p>
			<label>비밀번호<input type="password" name="userpw"></label>
		</p>
		<input type="button" value="로그인" onclick="sendit()">
	</form>
</body>

<script>
	var frm = document.frm;
	var userid = frm.userid;
	var userpw = frm.userpw;
	
	function sendit(){
		if(userid.value == ""){
			alert("아이디를 입력하세요!");
			userid.focus();
			return false;
		}
		
		if(userpw.value == ""){
			alert("비밀번호를 입력하세요!");
			userpw.focus();
			return false;
		}
		
		frm.submit();
	}

</script>
</html>































