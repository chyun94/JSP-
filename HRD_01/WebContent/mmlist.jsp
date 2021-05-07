<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="model.*,java.util.*,java.text.*" %>

<%	
	DecimalFormat df = new DecimalFormat("￦#,###");
//확인 방법: df.format(283746)
// 소수자리 표시를 하려면 ###.0의 식으로 쓰면 된다. * java.text.*가 import되어 있어야 한다.
//df로 출력
	DAO d = new DAO();
	List<VO> list = d.mmmlist();
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
.text_centerR{text-align:right;}
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
					<li><a href="mmlist.jsp"> 회원별매출 조회</a></li>
					<li><a href="index.jsp"> 홈으로</a></li>
				</ul>
			</nav>
		</header>
	</div>

<div class="content">
		<section>
				<h2 class="title">회원별 매출 조회</h2>
					<table>
						<tr>
							<th>회원 번호</th>
							<th>회원 성명</th>
							<th>전화 번호</th>
							<th>고객 등급</th>							
							<th>매출</th>
						</tr>
<%
	int sum=0;
	for(int x=0; x<list.size(); x++){
		sum+=list.get(x).getTot();
		
%>
						<tr>
							<td class="text_center"><%=list.get(x).getCustno()%></td>
							<td class="text_center"><%=list.get(x).getCustname()%> </td>
							<td class="text_center"><%=list.get(x).getPhone()%> </td>
							<td class="text_center"><%=list.get(x).getGrade()%> </td>							
							<td class="text_centerR"><%=df.format(list.get(x).getTot())%> </td>

						</tr>
<%
	}
%>
						<tr>
							<td class="text_center" colspan="4">합계금액</td>
							<td class="text_centerR"><%= df.format(sum) %></td>
						</tr>
						
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