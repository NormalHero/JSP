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
		// 오라클 - java 연결다리
		Connection conn = null;
		// connection을 만들수 있는 설계도가 있는 클래스
		String driver = "oracle.jdbc.driver.OracleDriver";
		// oracle db 연결정보
		String url = "jdbc:oracle:thin:@localhost:1521:xe";
		// DB 계정정보
		String user = "wjsp";
		// DB 계정 password
		String password = "wjsp";
		
		// class로딩(설계도 가져오기)
		Class.forName(driver);
		System.out.println("jdbc Driver 로드성공!");
		
		conn = DriverManager.getConnection(url, user, password);
		System.out.println("오라클 연결 성공");
		
		String sql = "INSERT INTO CAR VALUES ('4', 'K7', 'White', 350000)";
		
		// 명령전달할 객체 생성
		PreparedStatement pstm = conn.prepareStatement(sql);
		
		int check = 0;
		// INSERT, UPDATE, DELETE는 pstm.executeUpdate(); 사용
		check = pstm.executeUpdate();
		
		if( check != 0 ){
			System.out.println("데이터 삽입 성공!");
		} else {
			System.out.println("데이터 삽입 실패!");
		}
		
		
	%>




</body>
</html>














