<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>5월5일 j쿼리 공부 시작</title>
<script  src="http://code.jquery.com/jquery-latest.min.js"></script>

<script src="https://code.jquery.com/jquery-3.6.0.min.js" 
integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" 
crossorigin="anonymous">
</script>


 <script>
 //document.getElementsByTagName('h1')[0].style.color = 'red';
	//css속성 중에서 색을 바꿔볼 것
 	
	/*
	document.addEventListener('DOMContentLoaded',function(){
		document.getElementsByTagName('h1')[0].style.color = 'red';
	});
	*/
	//위의 코드를 j쿼리 방법으로 바꾸면
	$(document).ready(function(){
		$('h1').css({'color':'red'});
	});
	
	// 위의 코드를 또 줄이는 방법이 있음
	$(function () {
		$('h1').css({'color':'red'});
	})
	
	
	//$('h1').css({'color':'red'});
 </script>
 
</head>
<body>

<header class="page-geader" role="banner">
<h1>색깔을 변경해보기</h1>
</header>

 
</body>
</html>