<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="model.*,java.util.*" %>

<%
	DAO d = new DAO();
	List<VO> list = d.mlist();
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
.text_center{text-align:center;}
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
	height: 800px;
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

<div class="content">
		<section>
				<h2 class="title">회원 목록 조회/수정</h2>
					<table>
						<tr>
							<th>회원 번호</th>
							<th>회원 성명</th>
							<th>전화 번호</th>
							<th>성별</th>
							<th>가입 일자</th>
							<th>고객 등급</th>
							<th>거주 지역</th>
						</tr>
						<%
						for (int x=0; x<list.size(); x++){	
							
							String gender2="남자";
							if(list.get(x).getGender().equalsIgnoreCase("F"))
								gender2="여자";
							
							String grade = "직원";
							if(list.get(x).getGrade().equalsIgnoreCase("A")){
								grade="VIP";
							}else if(list.get(x).getGrade().equalsIgnoreCase("B")){
								grade="일반";
							}
							
							String day = list.get(x).getJoindate();
							String ymd = day.substring(0,4)+"년"+ day.substring(4,6)+"월"+ day.substring(6)+"일";
						
						%>
						<tr>
							<td class="text_center">
							<a href= "edit.jsp?custno=<%=list.get(x).getCustno() %>"><%= list.get(x).getCustno() %></a></td>
							<td class="text_center"><%= list.get(x).getCustname() %> </td>
							<td class="text_center"><%= list.get(x).getPhone() %> </td>
							<td class="text_center"><%= gender2 %> </td>
							<td class="text_center"><%= ymd %> </td>
							<td class="text_center"><%= grade %> </td>
							<td class="text_center"><%= list.get(x).getCity() %> </td>
						</tr>
						<%} %>
						
					</table>
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