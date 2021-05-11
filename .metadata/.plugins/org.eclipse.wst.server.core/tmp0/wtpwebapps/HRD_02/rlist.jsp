<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="model.*,java.util.*, java.text.*" %>	
<%
DAO d = new DAO();
List<VO> list = d.rList();
DecimalFormat df = new DecimalFormat("##.00");
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
				<h2 class="title">참가자 등수 조회</h2>
				<table>
					<tr>
						<th>참가번호</th>
						<th>참가자명</th>
						<th>성별</th>
						<th>총점</th>
						<th>평균</th>
						<th>등수</th>
					</tr>
					
					<%
					for(int x=0; x<list.size(); x++){
					%>
					
					<tr>
						<td><%= list.get(x).getArtist_id() %> </td>
						<td><%= list.get(x).getArtist_name() %> </td>
						<td><%= list.get(x).getArtist_gender() %> </td>
						<td><%= list.get(x).getTot() %> </td>
						<td><%= df.format(list.get(x).getAve()) %> </td>
						<td><%= x+1 %></td>
					</tr>
					
					<%
					}
					%>
					
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