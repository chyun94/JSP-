<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="model.*" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
*{margin: 0%; padding: 0%;}
.nav ul,li{ list-style: none; background-color:white; 
padding-left: 10px; float: left; padding: 0px 20px; text-align: center;}
.nav{padding: 14px 0; overflow: hidden;}
a{text-decoration: none; font-size: medium;}
.h{text-align: center; color: white; background-color: black; padding: 10px;}

.subject2{text-align: center;color: black; background-color: lightgray;}
.subject2 table{width: 600px; margin: 0 auto;}
.subject2 table th,td{border: 1px solid #bbb}
.title{text-align: center; padding: 22px; color: black;}
.footer{text-align: center; background-color:yellow; font-size: 16px; padding: 10px;}
.h2{text-align: center; color: black;padding-top: 15px;}
</style>
</head>
<body>
	<div>
		<header>
			<h1 class="h">고교성적관리프로그램 ver3.0</h1>
			<nav>
				<ul class="nav">
					<li><a href="insert.jsp"> 학생 등록</a></li>
					<li><a href="list.jsp"> 성적 입력 </a></li>
					<li><a href="scorelist.jsp"> 성적 조회</a></li>
					<li><a href="rlist.jsp"> 반별 통계 </a></li>
					<li><a href="index.jsp"> 홈으로</a></li>
				</ul>
			</nav>
		</header>
	</div>

	<div>
		<section>
			<div class="subject2">
				<h2 class="h2">과정평가형 자격</h2>
				<br>
					아무말 대잔치
				<br>
			</div>

		</section>
	</div>

	<div class="footer">
		<footer>
			<p>HRDKOREA Copyright@2016 All rights reserve.Human Resources
				Development Serivce of Korea</p>
		</footer>
	</div>

</body>
</html>