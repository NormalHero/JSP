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
	<style>
		#m_box{ 
			background-color: #09c; 
			width: 150px; 
			height: 40px; 
		}
		.box{width: 100px; height: 50px;  border: 1px solid green;}
	
	</style>
</head>
<body>
	<div style="background-color: #09c; width: 150px; height: 40px;">
		BOX 기본 스타일1
	</div>
	<div style="width: 100px; height: 50px;  border: 1px solid green;">
		BOX 기본 스타일2
	</div>
	<div class="box">BOX 클래스1</div>
	<div id="m_box">m_box 아이디</div>

</body>
</html>











