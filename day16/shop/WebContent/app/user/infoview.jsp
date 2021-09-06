<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
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
	<c:if test="${empty sessionScope.login_id }">
		<script>
			alert("로그인 후 이용하세요");
			location.href = "${pageContext.request.contextPath }/index.jsp";
		</script>
	</c:if>
	
	<c:if test="${not empty param.flag }">
		<c:if test="${not param.flag }">
			<script>
				alert("회원 정보 수정 실패!");
			</script>
		</c:if>
	</c:if>
	<c:set var="user" value="${requestScope.user }"/>
	<form action="${pageContext.request.contextPath }/user/UserUpdate.us" method="post" name="updateForm">
		<p>
			아이디<input type="text" name="userid" value="${user.userid }" readonly>
		</p>
		<p>
			패스워드<input type="password" name="userpw" readonly>
		</p>
		<p>
			이름<input type="text" name="username"  value="${user.username }" readonly>
		</p>
		<p>
			전화번호<input type="text" name="userphone" value="${user.userphone }" readonly>
		</p>
		<p>
			주소<input type="text" name="useraddr" value="${user.useraddr }" readonly>
		</p>
		<p>
			<input type="button" value="수정하기" id="updateBtn" onclick="update()">
			<input type="button" value="수정완료" id="senditBtn" onclick="sendit()" style="display:none;">
			<input type="button" value="뒤로가기" 
			onclick="location.href='${pageContext.request.contextPath }/app/main/mainview.jsp'">
			
		</p>
	</form>
	
</body>
<script>
	function update(){
		// let : 자바스크립의 지역변수
		let frm = document.updateForm;
		frm.userpw.removeAttribute('readonly');
		frm.username.removeAttribute('readonly');
		frm.userphone.removeAttribute('readonly');
		frm.useraddr.removeAttribute('readonly');
		
		frm.updateBtn.style.display = "none";
		frm.senditBtn.style.display = "inline";
	}
	
	function sendit(){
		// 유효성 검사
		document.updateForm.submit();
	}

</script>
</html>

































