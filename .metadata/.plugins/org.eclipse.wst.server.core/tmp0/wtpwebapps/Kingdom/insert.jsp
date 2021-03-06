<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
*{margin: 0%;padding: 0%}

.header ul,li,a{
list-style: none;
text-decoration: none;
float: left;
padding-left: 15px;
padding-bottom: 0 20px;
text-align: center;
}
.nav{
padding: 14px 0px; overflow: hidden;
background-color: lightgray;
}
.subject table{
width: 600px;
margin: 0 auto;
}
.subject table,th,td{
border: 1px solid gray;
text-align: left;
}

.footer{
text-align: center; background: skyblue; padding: 11px;
}
</style>
<script>
	function send() {
		if(frm.artist_id.value==""){
			alert("참가번호를 작성해 주세요");
			frm.artist_id.focus();
			return;
		}
		if(frm.artist_name.value==""){
			alert("참가자 이름을 작성해 주세요");
			frm.artist_name.focus();
			return;
		}
		if(frm.yy.value==""){
			alert("생년을 작성해 주세요");
			frm.yy.focus();
			return;
		}
		if(frm.mm.value==""){
			alert("월을 작성해 주세요");
			frm.mm.focus();
			return;
		}
		if(frm.dd.value==""){
			alert("날짜를 작성해 주세요");
			frm.dd.focus();
			return;
		}
		if(!frm.gender[0].checked && !frm.gender[1].checked){
			alert("성별을 선택해 주세요");
			return;
		}
		//선택 박스 메소드
		if(frm.hobby.selectedIndex==0){
			alert("특기를 선택해 주세요");
			frm.hobby.focus();
			return;
		}
		if(frm.join.value==""){
			alert("소속사를 작성해 주세요");
			frm.join.focus();
			return;
		}
		alert("오디션참가에 등록 합니다.");
		frm.submit();
	}
	function re() {
		alert("정보를 지우고 처음부터 다시 작성 합니다.");
		frm.reset();
		frm.artist_number.focus();
	}
</script>
</head>
<body>
<div>
	<header>
		<h1 style="text-align: center; padding: 10px">(과정평가형 정보처리산업기사)오디션 관리 프로그램 ver2009-06</h1>		
		<nav class="nav">
		<ul>
			<li><a href="insert.jsp">오디션등록</a></li>
			<li><a href="list.jsp">참가자목록조회</a></li>
			<li><a href="mentolist.jsp">멘토점수조회</a></li>
			<li><a href="ranking.jsp">참가자등수조회</a></li>
			<li><a href="index.jsp">홈으로</a></li>
		</ul>
		</nav>
	</header>
</div>

<div style="padding-left: 15px; text-align: center;">
	<section>
		<h2 style="text-align: center; padding: 25px;">오디션 등록</h2>	
		
		<form action="insert_pro.jsp" method="post" name="frm">
		
		<div align="center">
		<table class="subject" style="text-align: center;">
			<tr>
				<td>참가번호</td>
				<th>
					<input type="text"maxlength="4" name="artist_id">*참가번호는(A000)4자리 입니다.
				</th>
			</tr>
			<tr>
				<td>참가자명</td>
				<th>
					<input type="text" name="artist_name">
				</th>
			</tr>
			<tr>
				<td>생년월일</td>
				<th>
					<input type="text" name="yy" maxlength="4">년
					<input type="text" name="mm" maxlength="2">월
					<input type="text" name="dd" maxlength="2">일
				</th>
			</tr>
			<tr>
				<td>성별</td>
				<th>
					<input type="radio" name="gender" value="M">남자
					<input type="radio" name="gender" value="F">여자
				</th>
			</tr>
			<tr>
				<td>특기</td>
				<th>
					<select name=hobby>
						<option>특기선택</option>
						<option value="1">댄스</option>
						<option value="2">노래</option>
						<option value="3">랩</option>
					</select>				
				</th>
			</tr>
			<tr>
				<td>소속사</td>
				<th>
					<input type="text" name="join">					
				</th>
			</tr>
			<tr>
						
				<th style="text-align: center;" colspan="2">
					<input type="button" onclick="send()" value="오디션등록" >
					<input type="button" onclick="re()" value="다시쓰기">
				</th>
			</tr>
		</table>
		</div>
		</form>
	</section>
</div>

<div style="padding-top: 30px;">
	<footer>
		<div class="footer">
			<h3 style="text-align: center;" >
			HRDKOREA Copyright@2019 All right reserved. Human Resources Development Service of Korea
			</h3>
		</div>
	</footer>
</div>
</body>
</html>