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
<style>
	#text{
		color:red;
		font-weight:bold;
	}

</style>
<body>
	<form name="joinForm" method="post" action="join_db.jsp">
		<p id="text">사용할 수 있는 아이디입니다.</p>
		<p>
			<label>아이디<input type="text" name="userid">  </label>
			<input type="button" value="중복확인" onclick="checkId(joinForm.userid.value)">
		</p>
		<p>
			<label>비밀번호<input type="password" name="userpw"> </label>
		</p>
		<p>
			<label>비밀번호 확인<input type="password" name="userpw_re"> </label>
		</p>
		<p>
			<label>이름<input type="text" name="username"> </label>
		</p>
		<p>
			성별<br>
			<label>남자<input type="radio" name="usergender" value="M" checked>  </label>
			<label>여자<input type="radio" name="usergender" value="W">  </label>
		</p>
		<p>
			<label>핸드폰 번호 <input type="text" name="userphone"> </label>
		</p>
		<p>
			취미<br>
			<label>운동<input type="checkbox" name="userhobby" value="운동"> </label>
			<label>게임<input type="checkbox" name="userhobby" value="게임"> </label>
			<label>영화감삼<input type="checkbox" name="userhobby" value="영화감삼"> </label>
			<label>책읽기<input type="checkbox" name="userhobby" value="책읽기"> </label>
			<label>코딩하기<input type="checkbox" name="userhobby" value="코딩하기"> </label>
		</p>
		<p>
			<input type="button" value="가입 완료" onclick="sendit()">
		</p>	
	
	</form>
</body>
<script src="user.js"></script>
</html>


















