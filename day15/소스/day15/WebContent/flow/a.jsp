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
<!-- 	<form action="../com/koreait/flow/B"> -->
<!-- 		<input type="text" name="data1"> -->
<!-- 		<input type="text" name="data2"> -->
<!-- 		<input type="submit"> -->
<!-- 	</form> -->

	<!-- 정수 두개 입력해서 보내면 c.jsp 에서 나눗셈 결과 출력하기 -->
	<!-- 두번째 인풋에 0을 입력해서 보내면 c.jsp에서 "0으로는 나눌 수 없습니다." 보여주기 -->
	<form action="../com/koreait/flow/Calc">
		<input type="text" name="data1">
		<input type="text" name="data2">
		<input type="submit">
	</form>

</body>
</html>















