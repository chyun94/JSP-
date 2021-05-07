<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
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
</body>
</html>