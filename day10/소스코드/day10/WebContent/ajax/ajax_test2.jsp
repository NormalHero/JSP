<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<!doctype html>
<html>
<head>
	<meta charset="utf-8" />
	<title>실시간 순위</title>
	<!-- Twitter Bootstrap3 & jQuery -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" />
	<script src="http://code.jquery.com/jquery-3.3.1.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
	<h1>Ajax를 이용해 실시간 순위 나타내기</h1>
	<table border="1">
		<tr>
			<th>실시간 검색 순위</th>
			<th>키워드</th>
		</tr>
		<tr>
			<td id="td1">순위</td>
			<td id="td2">키워드</td>
		</tr>
		
	
	</table>
</body>
<script>
	// window.onload : HTML이 다 load가 됐을 때 실행
	window.onload = function(){
		var obj = "";
		var word = new Array();
		var xhr = new XMLHttpRequest();
		xhr.open("GET","data2.json",true);
		xhr.send();
		xhr.onreadystatechange = function(){
			if( xhr.readyState == 4 ){	// 서버 응답 완료
				if( xhr.status == 200 || xhr.status == 201 ){	// 성공적인 응답
					//alert(xhr.responseText);
					//alert( JSON.parse(xhr.responseText) );
					obj = JSON.parse(xhr.responseText);	// 응답받아온 text를 JSON으로 파싱
					// 파싱된 obj 에서 search_word라는 Key를 가지고 있는 Value를 꺼내보면
					// [ {},{},{},{},{} ]가 나온다.(즉, 배열의 형태이다)
					for(var i=0; i<obj.search_word.length; i++){
						// obj.search_word 배열의 각 방에는 또 json 들이 담겨있다.
						// {"rank":순위, "name":검색어}
						// 각 방의 json 들에서 name키로 담겨있는 검색어를 꺼내서 word 배열의 각 방에 넣는다.
						word[i] = obj.search_word[i].name;
					}
					
				}				
			}
		}
		
		
		var i = 0;
		// setInterval(작업내용(함수), 밀리초) : 해당 밀리초마다 앞에 넘겨준 작업 내용 호출
		// 함수 자체를 매개변수로 넘겨준다.
		var interval = setInterval(function(){
			// JSON 안에 있는 serach_word 배열의 길이로 나눈 나머지는 0,1,2,3,4 -> 5가되는 순간 다시 0이된다.
			i = i%obj.search_word.length;
			document.getElementById("td1").innerHTML = i + 1;
			document.getElementById("td2").innerHTML = word[i];
			i++;
		}, 2000); // 밀리초 마다 호출
		
		//setTimeout(작업내용(함수), 밀리초) : 해당 밀리초 이후에 앞에 넘겨준 작업내용(함수)를 호출
		setTimeout(function(){
			// clearInterval(인터벌) : 해당 인터벌 삭제
			// 해당 인터벌은 위에 setInterval() 로 만든것을 뜻한다.
			// 상단에 선언해 놓은 interval 변수를 매개변수 값으로 넘겨주었다.
			clearInterval(interval);
		}, 20000);	// 20초 뒤에 멈춘다.
	}
</script>
</html>














