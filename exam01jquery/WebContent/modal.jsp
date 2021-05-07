<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<script  src="http://code.jquery.com/jquery-latest.min.js"></script>
<script>
$(document).ready(function(){

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
		.popup_bg{

		position: absolute;
		top: 0; 
		left: 0; 
		width: 100%; 
		height: 100%;
		background: rgba(0,0,0,0.7);
		
		}
		
		
	</style>
</head>

<body>
<div class="btn">버튼</div>

<div class="popup_bg">
	<div class="popup"></div>
</div>
</body>
</html>