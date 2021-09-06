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
<style type="text/css">
	.even{
		color: green;	
	}
</style>
</head>
<body>
	<input value="버튼1" type="button" onclick="chageText();"><br>
	위의 버튼을 클릭해보세요 <br>
	
	<table border="1">
		<tr>
			<td>내용1-1</td>
			<td class="even">내용1-2</td>
			<td>내용1-3</td>
		</tr>
		<tr>
			<td>내용2-1</td>
			<td class="even">내용2-2</td>
			<td>내용2-3</td>
		</tr>
	</table>

</body>
<script>
	// javascript 문법
	function chageText(){
		var tbList = document.getElementsByClassName("even");
		
		// 여러건이기 때문에 배열형태로 받아온다.
		for(var i=0; i<tbList.length; i++){
			tbList[i].innerHTML = "짝수";
		}
		
	}
</script>
</html>












