<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="model.*,java.util.*" %>
<%
DAO d = new DAO();

%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>오디션 관리 프로그램</title>
<style>
*{margin: 0%; padding: 0%;}
.nav ul,li{ list-style: none; background-color:white; 
padding-left: 10px; float: left; padding: 0px 20px; text-align: center;}
.nav{padding: 14px 0; overflow: hidden;}
a{text-decoration: none; font-size: medium;}
.h{text-align: center; color: white; background-color: tan; padding: 10px;}
h2{text-align: center; color: black;padding-top: 15px; padding-bottom: 10px;}
.s{background-color: lightpink; color: black;}
.s table{width: auto; margin: 0 auto; padding-bottom: 20px;padding-top: 10px; }
.s table th,td{border: 2px solid white; padding: 2px;}
.f{text-align: center; color: white; background-color: navy; padding-bottom: 10px; padding-top: 10px;}
</style>
<script>
function bend() {
	
	if(frm.id_.value==""){
		arlet("참가번호가 입력되지 않았습니다.");
		frm.id_.focus();
		return;
	}
	if(frm.name.value==""){
		arlet("참가자명이 입력되지 않았습니다.");
		frm.name.focus();
		return;
	}
	if(frm.year.value=="" ||frm.month.value=="" ||frm.day.value=="" ){
		arlet("생년월일이 입력되지 않았습니다.");
		frm.year.focus();
		return;
	}
	if(!frm.gender[0].checked=="" && !frm.gender[1].checked==""){
		arlet("성별이 선택되지 않았습니다.");
		return;
	}
	if(frm.talent.selectedIndex==0){
		alert("특기가 선택되지 않았습니다.");
		return;
	}
	if(frm.agency.value==""){
		alert("소속사가 선택되지 않앗습니다.");
		return;
	}
	alert("참가 신청이 정상적으로 등록 되었습니다.");
	frm.submit();
}
function del() {
	alert("정보를 지우고 처음부터 다시 입력 합니다.");
	frm.reset();
	frm.id_.focus();
}
</script>
</head>
<body>
<div>
<header>
	<h1 class="h">(과정평가형 정보처리산업기사)오디션 관리 프로그램ver2009-06</h1>
	<nav>
		<ul class="nav">
			<li><a href="insert.jsp">오디션등록</a></li>
			<li><a href="list.jsp">참가자목록조회</a></li>
			<li><a href="score.jsp">멘토점수조회</a></li>
			<li><a href="ranking">참가자등수조회</a></li>
			<li><a href="index.jsp">홈으로</a></li>			
		</ul>
	</nav>
</header>
</div>

<div>
	<section class="s">
		<h2>오디션 등록</h2>
			<form action="insert_pro.jsp" name="frm" method="post">
			<table>
				<tr>
				<th>참가번호</th>
					<td>
						<input type="text" name="id_">*참가번호는(A000)4자리입니다.
					</td>
				</tr>
				<tr>
				<th>참가자명</th>
					<td>
						<input type="text" name="name">
					</td>
				</tr>
				<tr>
				<th>생년월일</th>
					<td>
						<input type="text" name="year" size="5">년
						<input type="text" name="month" size="2">월
						<input type="text" name="day" size="2">일
					</td>
				</tr>
				<tr>
				<th>성별</th>
				<td>
					<input type="radio" value="M" name="gender">남성
					<input type="radio" value="F" name="gender">여성
				</td>
				</tr>
				<tr>
				<th>특기</th>
					<td>
					<select name="talent">
					<option>특기선택</option>
					<option value="1">댄스</option>
					<option value="2">노래</option>
					<option value="3">랩</option>
					</select>
					</td>
				</tr>
				<tr>
				<th>소속사</th>
					<td>
						<input type="text" name="agency">
					</td>
				</tr>
				<tr>
				<td colspan="2" align="center">
				<input type="button" onclick="bend()" value="오디션등록">
				<input type="button" onclick="bel()" value="다시쓰기">
				</td>
				</tr>
			</table>
			</form>
	</section>
</div>

<div>
<footer class="f">
HRDKOREA Copyright@2016 All rights reserve.Human Resources
				Development Serivce of Korea. 하면 된다.
</footer>
</div>
</body>
</html>