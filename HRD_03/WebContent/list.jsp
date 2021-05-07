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
a{text-decoration: none; color: black; font-size: larger;}
.subject{text-align: center; color: white; background-color: black;}
.subject2{text-align: center;color: black; background-color: lightgray;}
.subject2 table{width: 600px; margin: 0 auto;}
.subject2 table th,td{border: 1px solid #bbb}
.title{text-align: center; padding: 22px; color: black;}
.footer{text-align: center; background-color:yellow; font-size: 16px; padding: 10px;}
.h2{text-align: center; color: black;padding-top: 15px;}
</style>

<script>
function send() {
	if(frm.syear.value==""){
		alert("학년을 입력하지 않았습니다.");
		frm.syear.focus();
		return;
	}
	if(frm.sclass.value==""){
		alert("반정보가 입력되지 않았습니다!");
		frm.sclass.focus();
		return;
	}
	if(frm.sno.value==""){
		alert("번호정보가 입력되지 않았습니다!");
		frm.sno.focus();
		return;
	}
	if(frm.kor.value==""){
		alert("국어성적이 입력되지 않았습니다!");
		frm.kot.focus();
		return;
	}
	if(frm.eng.value==""){
		alert("영어성적이 입력되지 않았습니다!");
		frm.eng.focus();
		return;
	}
	if(frm.mat.value==""){
		alert("수학성적이 입력되지 않았습니다!");
		frm.mat.focus();
		return;
	}

	alert("성적입력이 정상적으로 등록되었습니다!")		
	frm.submit();
}
function del() {
	alert("정보를 지우고 처음부터 다시 입력합니다!");
	frm.reset();
	frm.syear.focus();
}
</script>
</head>
<body>
	<div>
		<header>
			<h1 class="subject">고교성적관리프로그램 ver3.0</h1>
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
		 	<h2 class="h2">학생등록</h2><br>
		 	<form action="list_pro.jsp" method="post" name="frm"></form>
		 	<table>
		 			<tr>
			 			<th>학년</th>
			 			<td align="left">
			 			<input type="text" name="syear">(예)1
			 			</td>
		 			</tr>
		 		
		 			<tr>
			 			<th>반</th>
			 			<td align="left">
			 			<input type="text" name="sclass">(예)01
			 			</td>
		 			</tr>
		 			
		 			<tr>
			 			<th>번호</th>
			 			<td align="left">
			 			<input type="text" name="sno">(예)01
			 			</td>
		 			</tr>
		 			
		 			<tr>
			 			<th>국어</th>
			 			<td align="left">
			 			<input type="text" name="kor">점수범위(0-100)
			 			</td>
		 			</tr>
		 			<tr>
			 			<th>영어</th>
			 			<td align="left">
			 			<input type="text" name="eng">점수범위(0-100)
			 			</td>
		 			</tr>
		 			<tr>
			 			<th>수학</th>
			 			<td align="left">
			 			<input type="text" name="mat">점수범위(0-100)
			 			</td>
		 			</tr>

		 			<tr>
		 				<td colspan="2" align="center">
		 					<input type="button" onclick="send()" value="성적저장">
		 					<input type="button" onclick="del()" value="다시쓰기">
		 				</td>
		 			</tr>
		 	</table>
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