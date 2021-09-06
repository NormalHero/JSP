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
	<h3>회원가입 폼</h3>
	<form action="join.jsp" method="post" id="joinForm">
		<label>아이디 : <input type="text" name="userid" id="userid"></label><br>
		<label>비밀번호 : <input type="password" name="userpw" id="userpw"></label><br>
		<label>이름 : <input type="text" name="username" id="username"></label><br>
		<label>휴대폰 번호 : <input type="text" name="userphone" id="userphone"></label><br>
		<br>
		<label>체크하기 <input type="checkbox"></label><br>
		<input type="button" value="회원가입" onclick="sendit()">
	</form>

</body>
<script>
	function sendit(){
		var frm = document.getElementById("joinForm");
		// id로 가지고오는 방법
		var idTag = document.getElementById("userid");
		var pwTag = document.getElementById("userpw");
		// name으로 가지고 오는 방법
		// name 속성으로 요소 가져올때에는 (부모요소객체.자식요소name)
		var nameTag = frm.username;
		var phoneTag = frm.userphone;
		
		if( idTag.value == "" ){
			alert("아이디를 입력하세요!");
			idTag.focus();
			return false;
		}
		
		if( pwTag.value == "" ){
			alert("비밀번호를 입력하세요!");
			pwTag.focus();
			return false;
		}
		
		if( nameTag.value == "" ){
			alert("이름을 입력하세요!");
			nameTag.focus();
			return false;
		}
		
		if( phoneTag.value == "" ){
			alert("전화번호를 입력하세요!");
			phoneTag.focus();
			return false;
		}
		
		frm.submit();
	}


</script>
</html>

















