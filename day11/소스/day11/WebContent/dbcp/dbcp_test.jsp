<%@page import="java.sql.Date"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="javax.sql.DataSource"%>
<%@page import="javax.naming.InitialContext"%>
<%@page import="javax.naming.Context"%>
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
	<%
		// dbcp를 이용하는 방법
		Context context = new InitialContext(null);		// WAS와 연결하는 부분(연결 컨텍스트 형성)
											// 연결된 WAS에서 데이터 소스 검색해서 가지고오기(JNDI 활용)
											// 모든 설정된 자원은 JNDI namepace java:comp/env에 담기게된다.
											// jdbc/oracle 나의 DataSource에 연결
		DataSource dataSource = (DataSource)context.lookup("java:comp/env/jdbc/oracle");
		Connection conn = dataSource.getConnection();
		
		String sql = "SELECT SYSDATE FROM DUAL";
		
		PreparedStatement pstm = conn.prepareStatement(sql);
		ResultSet rs = pstm.executeQuery();
		Date date = null;
		
		if( rs.next() ){
			date = rs.getDate(1);
		}
	%>
	
	<%=date %>
<%-- 	<%=conn %> --%>
</body>
</html>



















