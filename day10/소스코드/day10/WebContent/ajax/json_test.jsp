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


</body>
<script>
	var xhr = new XMLHttpRequest();
	xhr.open("GET","data.json",true);
	xhr.send();
	xhr.onreadystatechange = function(){
		if( xhr.readyState == 4 ){
			alert(xhr.responseText);
			var obj = JSON.parse(xhr.responseText);
			alert(obj.result);
			alert(obj.count);
		}
	}

</script>
</html>
















