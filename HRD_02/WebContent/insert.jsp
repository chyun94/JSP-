<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
* {
	margin: 0;
	padding: 0;
}
ul, li {
	list-style: none;
}
a {
	text-decoration: none;
	color: ghostWhite;
	font-size: larger;
}
th {
	text-align: center;
}
h1 {
	text-align: center;
	padding: 20px;
}
.navi {
	padding: 14px 0;
	overflow: hidden;
	background-color: DarkCyan;
}
.navi ul, li {
	float: left;
	padding: 0px 20px;
	text-align: center;
}
.content {
	background-color: #E6E6E6;
	padding: 30px;
	height: 400px;
}
.title {
	text-align: center;
	padding: 22px;
}
.content table {
	width: 600px;
	margin: 0 auto;
}
.content table th, td {
	border: 1px solid #bbb;
}
.content table .btn_group {
	text-align: center;
}
.Subject {
	text-align: center;
	background-color: black;
	padding: 16px 0;
	color: white;
}
.footer {
	text-align: center;
	background-color: black;
	color: ghostwhite;
	font-size: 16px;
	padding: 10px;
	margin-top: 5%;
}
</style>
<script>
	function sned() {
		frm.submit();
		if(frm.year.value==""||frm.month.value==""||frm.day.value=="")
			
	}
	function del() {
		alert("정보를 지우고 처음부터 다시 입력합니다.");
		frm.reset();
		frm.artist_id.focus();
		
	}
</script>
</head>
<body>
	<div>
		<header>
			<h1 class="subject">오디션 관리 프로그램 ver3.0</h1>
			<nav>
				<ul class="navi">
					<li><a href="insert.jsp"> 오디션 등록</a></li>
					<li><a href="list.jsp"> 참가자 목록 조회</a></li>
					<li><a href="mlist.jsp"> 멘토점수 조회</a></li>
					<li><a href="rlist.jsp"> 참가자 등수 조회</a></li>
					<li><a href="index.jsp"> 홈으로</a></li>
				</ul>
			</nav>
		</header>
	</div>

	<div>
		<section>
			<div class="content">
				<h2 class="title">오디션 등록</h2>
				<form action="insert_pro.jsp" name="frm" method="post"></form>
				
				<table>
					<tr>
					<th>참가번호</th>
					<td><input type="text" name="artist_id">*참가번호는(A000)4자리 입니다.</td>
					</tr>
					<tr>
					<th>참가자명</th>
					<td><input type="text" name="artist_name"></td>
					</tr>
					<tr>
					<th>생년원일</th>
					<td><input type="text" name="year" size="5">년
					<input type="text" name="month" size="2">월
					<input type="text" name="day" size="2">일</td>
					</tr>
					<tr>
					<th>성별</th>
					<td>
					<input type="radio" name="artist_gender">남성
					<input type="radio" name="artist_gender">여성
					</td>
					</tr>
					<tr>
					<th>특기</th>
					<td><select name="talent">
					<option>특기선택</option>
					<option value="1">댄스</option>
					<option value="2">노래</option>
					<option value="3">랩</option>
					</select>
					</tr>
					<tr>
					<th>소속사</th>
						<td>
							<input type="text" name="agency">
						</td>
					</tr>
					
					<tr>
						<td colspan="2" align="center" class="btn_group">
							<input type="button" onclick="send()" value="오디션등록">
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