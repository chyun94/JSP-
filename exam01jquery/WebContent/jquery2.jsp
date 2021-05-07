<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>CSS의 스타일 변경하기</title>
<!-- 아래 주소를 또 제일 아래로 넘기면 명령어가 먹히지 않아 명령을 수행을 하지 않게 된다. 즉 아래 라이브러리는 항상 위에 있어야 한다 -->
<script src="http://code.jquery.com/jquery-latest.js"></script>

</head>

<body>
<header>
<div>
<h1>색깔 한번 바꿔보거라</h1>
</div>


</header>

<script>
//아래의 상태로만 사용하면 바뀌지 않음(바디 안에 있는 태그를 찾지 못했기 때문에)
// document.getElementsByTagName('h1')[0].style.color='red';
<!-- 만약 위의 스크립트를 h1 위에 사용을 하면 무엇을 바꾸라는 것인지 찾지 못하기 때문에 h1태그의 아래에다 작성한 것 -->
$('h1').css({'color':'Gray'});
</script>
</body>
</html>