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
	<h3>내장 객체 예제</h3>
	<form action="object_ok.jsp" name="joinForm">
		<fieldset>
			<legend>개인정보</legend>
			<input type="text" name="username">
			<input type="date" name="userbirth">
			<input type="button" value="확인" onclick="sendit()">
		</fieldset>
	</form>
</body>
<script>
	function sendit(){
		var joinForm = document.joinForm;
		var nameTag = joinForm.username;
		var birthTag = joinForm.userbirth;
		
		if(nameTag.value == ""){
			alert("이름을 입력하세요");
			nameTag.focus();
			return false;
		}
		if(birthTag.value == ""){
			alert("생일 정보를 입력하세요");
			birthTag.focus();
			return false;
		}
		
		joinForm.submit();
	}

</script>
</html>





























