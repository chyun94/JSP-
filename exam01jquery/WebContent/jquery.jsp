<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>CSS의 스타일 변경하기</title>
<!-- 적용방법 3 -->
	<script  src="http://code.jquery.com/jquery-latest.min.js"></script>
	<script>
	//div태그는 블록 태그
		$(document).ready(function(){
			$(".btn").click(function(){
				$(".popup_bg").css({"display":"block"});
			})
			
			$(".popup_bg").click(function(){
				$(this).css({"display":"none"});
			})
		});
	</script>
	
	<style>
		.btn{
			width: 100px;
			height: 40px;
			line-height: 40px;
			background-color: powderblue;
			color: green;
			text-align: center;
			cursor: pointer;
		}
		<!--모달 -->
		.a{
		display:none;
		position: absolute;
		top: 0; 
		left: 0; 
		width: 100%; 
		height: 100%;
		background: rgba(0,0,0,0.7);
		
		}
		.b{
		left: calc(50% - 150px;)
		top: calc(50% - 250px;)
		width: 300px;
		height: 500px;
		background: white;
		}
	</style>
</head>
<body>
<div class="btn">버튼</div>

<div class="a">
	<div class="b"></div>
</div>

<!-- 
찾는법 Selector
HTML 문서안의 요소를 찾는 방법
ex) 
태그(body,div,span,etc...)
아이디(id='footer')
클래스(class='containner')

제이쿼리의 태그
$("a");
jsp였으면
document,getElementByTagName('a');

위의 예만 봐도 확연히 제이쿼리가 간단함을 알 수 있다.

제이쿼리의 아이디
$("#container")

제이쿼리의 클래스
$(".tbn")

자식 요소를 선택 방법은
$("#container.btn")
$(".tbn.name")

맞침표를 이용해 자식 요소를 불러올 수 있다.
 -->
</body>
</html>