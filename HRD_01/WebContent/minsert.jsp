<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="model.*,java.util.*, java.time.*" %>
<%
	DAO d = new DAO();
	LocalDate now = LocalDate.now();
	// now = 2021-02-10 으로 출력되기 때문에 아래와 같이 바꿔주면 20210210으로 출력됨
	String[] date = now.toString().split("-");
	// date[0]+date[1]+date[2]
	int row = d.maxSaleno();
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
		if(frn.saleno.value==""){
			alert("회원번호가 입력되지 않았습니다.");
			frm.custno.focus();
			return;
		}
		if(frn.pcode.value==""){
			alert("상품코드가 입력되지 않았습니다.");
			frm.pcode.focus();
			return;
		}
		if(frn.amount.value==""){
			alert("회원번호가 입력되지 않았습니다.");
			frm.amount.focus();
			return;
		}
		
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
					<li><a href="mmlist.jsp"> 회원별매출 조회</a></li>
					<li><a href="index.jsp"> 홈으로</a></li>
				</ul>
			</nav>
		</header>
	</div>

	<div>
		<section>
			<div class="content">
				<h2 class="title">회원 매출 등록</h2>

				<form action="minsert_pro.jsp" name="frm" method="post">
					<table>
						<tr>
							<th>판매번호</th>
							<td><input type="text" name="saleno" value="<%=row+1%>" readonly="readonly"></td>
						</tr>
						<tr>
							<th>회원번호</th>
							<td><input type="text" name="custno" ></td>
						</tr>
						<tr>
							<th>상품 코드</th>
							<td><input type="text" name="pcode"></td>
						</tr>
						<tr>
							<th>수량</th>
							<td><input type="number" size="13" name="amount"></td>
						</tr>

						<tr>
							<th>판매 일자</th>
							<td><input type="number" size="13" name="sdate" value="<%=date[0]+date[1]+date[2]%>"></td>
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