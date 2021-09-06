<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
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
		Connection conn = null;
		String driver = "oracle.jdbc.driver.OracleDriver";
		String url = "jdbc:oracle:thin:@localhost:1521:xe";
		String user = "wjsp";
		String password = "wjsp";
		
		Class.forName(driver);
		conn = DriverManager.getConnection(url, user, password);
		
		// 현재시간 : SYSDATE -> System의 Date
		String sql = "SELECT SYSDATE FROM DUAL";
		PreparedStatement pstm = conn.prepareStatement(sql);
		ResultSet rs = pstm.executeQuery();
		
		// DateFormat 추가
		SimpleDateFormat sdf = new SimpleDateFormat("MM월 dd일");	 
		
		if(rs.next()){
			// <hr> : 가로줄
			out.print( sdf.format(rs.getDate(1)) + "<br><hr>"  );
		}
		
		sql = "SELECT * FROM CAR";
		pstm = conn.prepareStatement(sql);
		rs = pstm.executeQuery();
		
		while( rs.next() ){
			out.print("차 번호 : " + rs.getString(1) +"<br>");
			out.print("브랜드 : " + rs.getString("BRAND") +"<br>");
			out.print("색상 : " + rs.getString(3) +"<br>");
			out.print("가격 : " + rs.getInt("PRICE") +"<br>");
		}
		
		out.print("<br><hr>");
		
		String carNum = "6";
		// 너무복잡
		//sql = "SELECT COLOR FROM CAR WHERE CARNUM='" + carNum + "'";
		sql = "SELECT COLOR FROM CAR WHERE CARNUM=?";
		
		pstm = conn.prepareStatement(sql);
		pstm.setString(1, carNum);
		rs = pstm.executeQuery();
		
		if(rs.next()){
			out.print( "색상 : " +  rs.getString(1) );
		}
		
		// close(); 반납
		rs.close();
		pstm.close();
		conn.close();
	
	%>
</body>
</html>



















