<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>CSS의 스타일 변경하기</title>
<!-- 아래 주소를 또 제일 아래로 넘기면 명령어가 먹히지 않아 명령을 수행을 하지 않게 된다. 즉 아래 라이브러리는 항상 위에 있어야 한다 -->
<script 
src="http://code.jquery.com/jquery-latest.js">
</script>

<script>
// 다큐먼트에 이벤트 리스너를 하고 DOMC를 해라
 자바스크립트를 이용한 방법
document.addEventListener('DOMContentLoaded',function(){
	document.getElementsByTagName('h1')[0].style.color='red';	
});

//제이쿼리 방법
/*
 
 $(document).ready(function(){
	$('h1').css({'color':'blue'});
});
*/
 $(function(){
	$('h1').css({'color':'blue'});
});
</script>

</head>

<body>
<header>
<div>
<h1>색깔 한번 바꿔보거라</h1>
</div>


</header>


</body>
</html>