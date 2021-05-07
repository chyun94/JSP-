<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="model.*,java.util.*" %>
<%
	DAO d = new DAO();
	int row = d.maxCustno();
%>
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
	height: 600px;
}

.title {
	text-align: center;
	padding: 22px;
}

.content table {
	width: 400px;
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
 function send() {

	if(frm.custname.value==""){
	alert("성명을 확인 해 주세요")
	frm.custname.focus();
	return;
	}
	
	if(frm.phone.value==""){
	alert("번호 확인 해 주세요")
	frm.phone.focus();
	return;
	}
	// 라디오 버튼 (둘 중 하나이고 선택을 해야하기 때문에 배열로 처리를 해야 한다. 앞에!(not)써주기)
	// 라디오 버튼이 많을 시 for문을 사용하면 된다.
	if(!frm.gender[0].checked && !frm.gender[1].checked){
	alert("성별을 확인 해 주세요")
	return;
	}
	
	// 선택 박스
	if(frm.grade.selectedIndex==0){
	alert("고객 등급 확인 해 주세요")
	frm.grade.focus();
	return;
	}
	
	if(frm.city.value==""){
	alert("도시코드를 확인 해 주세요")
	frm.city.focus();
	return;
	}
	alert("회원 정보를 등록합니다");
	frm.submit();
}
 function del() {
	alert("다시 작성 합니다");
	frm.reset();
	frm.custname.focus();
}
</script>
</head>
<body>
	<div>
		<header>
			<h1 class="subject">쇼핑몰 매출현황 관리 프로그램 ver3.0</h1>
			<nav>
				<ul class="navi">
					<li><a href="insert.jsp"> 회원 등록</a></li>
					<li><a href="list.jsp"> 회원정보 조회</a></li>
					<li><a href="minsert.jsp"> 매출 등록</a></li>
					<li><a href="mlist.jsp"> 매출현황 조회</a></li>
					<li><a href=".jsp"> 회원별매출 조회</a></li>
					<li><a href="index.jsp"> 홈으로</a></li>
				</ul>
			</nav>
		</header>
	</div>

	<div>
		<section>
			<div class="content">
				<h2 class="title">회원 정보 등록</h2>

				<form action="insert_pro.jsp" name="frm" method="post">
					<table>
						<tr>
							<th>회원번호(자동발생)</th>
							<td><input type="text" name="custno" value="<%= row+1 %>" readonly="readonly"></td>
						</tr>
						<tr>
							<th>회원 성명</th>
							<td><input type="text" name="custname"></td>
						</tr>
						<tr>
							<th>회원 전화</th>
							<td><input type="number" size="13" name="phone"></td>
						</tr>

						<tr>
							<th>회원 성별</th>
							<td><input type="radio" value="M" name="gender">남자 <input
								type="radio" value="F" name="gender">여자</td>
						</tr>
						<tr>
							<th>가입 일자</th>
							<td><input type="number" size="13" name="joindate"></td>
						</tr>
						<tr>
							<th>고객 등급</th>
							<td>
							<select name="grade">
							<option>고객등급</option>
							<option value="A">VIP</option>
							<option value="B">일반</option>
							<option value="C">직원</option>
							</select>
							</td>
						</tr>
						<tr>
							<th>도시코드</th>
							<td><input type="text" name="city">
							</td>
						</tr>
						<tr>
							<td colspan="2" align="center">
							<input type="button" onclick="send()" value="등록하기"> 
							<input type="button" onclick="del()" value="다시쓰기">
							</td>
						</tr>
					</table>
				</form>
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