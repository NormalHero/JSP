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
	<h3>Ajax 요청 보내기 테스트</h3>
	<input type="submit" value="GET 방식으로 요청 보내기" onclick="sendGet()">
	<input type="submit" value="POT 방식으로 요청 보내기" onclick="sendPost()">
	<p id="result"></p>
</body>

<script>
	function sendGet(){
		var xhr = new XMLHttpRequest();
		xhr.open("GET","request_ajax.jsp?userid=apple&userpw=abcd1234",true);
		xhr.send();
		
		// javascript 의 function도 하나의 값으로 취급
		xhr.onreadystatechange = function(){
			if( xhr.readyState == XMLHttpRequest.DONE && xhr.status == 200 ){
// 				alert(xhr.responseText);
				document.getElementById("result").innerHTML = xhr.responseText;
			}
		}
		
	}

	function sendPost(){
		var xhr = new XMLHttpRequest();
		xhr.open("POST","request_ajax.jsp",true);
		xhr.setRequestHeader("Content-Type","application/x-www-form-urlencoded");
		xhr.send("userid=banana&userpw=abcd5678");
		xhr.onreadystatechange = function(){
			if(xhr.readyState == XMLHttpRequest.DONE && xhr.status == 200){
				document.getElementById("result").innerHTML = xhr.responseText;
			}
			
		}
		
	}


</script>
</html>
















