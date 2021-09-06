<%@page import="java.util.HashMap"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<!doctype html>
<html>
<head>
	<meta charset="utf-8" />
	<title>JSTL 반복문</title>
	<!-- Twitter Bootstrap3 & jQuery -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" />
	<script src="http://code.jquery.com/jquery-3.3.1.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
	<!-- for(int i = 0; i<= 10; i ++){} -->
	<c:forEach var="i" begin="0" end="10" step="1">
		${i }<br>	
	</c:forEach>
	<hr>
	
	<c:set var="arData" value="<%=new int[]{10, 20, 30, 40, 50} %>" />
	<c:forEach var="i" begin="0" end="4" step="1">
		${arData[i] }<br>
	</c:forEach>
	
	<hr>
	<c:forEach var="data" items="${arData }">
		${data }<br>
	</c:forEach>
	
	<hr>
	<%
		HashMap<String,Integer> map = new HashMap<>();
		map.put("하나", 1);
		map.put("둘", 2);
		map.put("셋", 3);
	%>
	<c:set var="map" value="<%=map %>" />
	<c:forEach var="entry" items="${map }">
		${entry.key } : ${entry.value }<br>
	</c:forEach>
</body>
</html>























