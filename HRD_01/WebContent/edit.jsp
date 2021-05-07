<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="model.*,java.util.*" %>
<%
	int  custno = Integer.parseInt(request.getParameter("custno"));
	DAO d = new DAO();
	VO v = d.mselect(custno);

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
	alert("회원 정보를 수정 합니다");
	frm.submit();
}
 function del() {
	alert("회원정보를 취소 합니다.")
	 history.back();
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
					<li><a href="mmlist.jsp"> 회원별매출 조회</a></li>
					<li><a href="index.jsp"> 홈으로</a></li>
				</ul>
			</nav>
		</header>
	</div>

	<div>
		<section>
			<div class="content">
				<h2 class="title">회원 정보 수정</h2>

				<form action="edit_pro.jsp" name="frm" method="post">
					<table>
						<tr>
							<th>회원번호(자동발생)</th>
							<td><input type="text" name="custno" value="<%=v.getCustno() %>" readonly="readonly"></td>
						</tr>
						<tr>
							<th>회원 성명</th>
							<td><input type="text" name="custname" value="<%=v.getCustname() %>"></td>
						</tr>
						<tr>
							<th>회원 전화</th>
							<td><input type="number" size="13" name="phone" value="<%=v.getPhone()%>"></td>
						</tr>

						<tr>
							<th>회원 성별</th>
							<td>
							<input type="radio" value="M" <%if(v.getGender().equals("M")) {%>checked="checked" <%} %>>남자 
							<input type="radio" value="F" <%if(v.getGender().equals("F")) {%>checked="checked" <%} %>>여자 
							</td>
						</tr>
						<tr>
							<th>가입 일자</th>
							<td><input type="number" size="13" name="joindate" value="<%=v.getJoindate()%>"></td>
						</tr>
						<tr>
							<th>고객 등급</th>
							<td>
							<select name="grade">
							<option>고객등급</option>
							<option value="A" <%if(v.getGrade().equals("A")) {%>selected="selected"<%} %> > VIP</option>
							<option value="B" <%if(v.getGrade().equals("B")) {%>selected="selected"<%} %> > 일반</option>
							<option value="C" <%if(v.getGrade().equals("C")) {%>selected="selected"<%} %> > 직원</option>
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
							<input type="button" onclick="send()" value="수정하기"> 
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