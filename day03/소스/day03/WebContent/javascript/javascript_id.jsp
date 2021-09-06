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
	<p id="text">내용1</p>
	<input value="버튼1" type="button" onclick="changeText();" ><br>



</body>
<script>
	/*
		javascript 문법
	*/
	function changeText(){
		// pTag 객체
		var pTag = document.getElementById("text");
		// pTag 객체의 내부 HTML을 새로운 문자열로 바꿔준다.
		pTag.innerHTML = "새로운 텍스트를 넣어준다.";
	}
	


</script>
</html>




















