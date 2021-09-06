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
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
</head>
<body>
	<p id="pTag">jQuery로 선택할 요소</p>
	
	<!-- pTag요소의 텍스트를 "변경된 텍스트"로 바꾸기 -->
	<input type="button" value="텍스트 변경하기 버튼1" onclick="change()" >
	<input type="button" value="텍스트 변경하기 버튼2" onclick="$('#pTag').text('변경된 텍스트2')" >
	
</body>
<script>
	function change(){
		var txt = $("#pTag").text();
		
		if( txt == "jQuery로 선택할 요소" ){
			$("#pTag").text("변경된 텍스트1");
		} else {
			$("#pTag").text("jQuery로 선택할 요소");
		}
	}
	
	
	//alert( $("#pTag").text() );
	
// 	function change(){
// 		$("#pTag").text("변경된 텍스트1");
// 	}

</script>
</html>













