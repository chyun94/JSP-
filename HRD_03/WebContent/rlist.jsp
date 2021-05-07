<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="model.*,java.util.*,java.text.*" %>
<%
	DAO d = new DAO();
	List<VO> list = d.classList();
	DecimalFormat df = new DecimalFormat("###.0");
%>

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
		 	<h2 class="h2">성적 조회</h2><br>
		 	<table>
		 	<tr align="center">
		 		<th>학년 </th>
		 		<th>반</th>
		 		<th>교사명</th>
		 		<th>국어 총점</th>
		 		<th>영어 총점</th>
		 		<th>수학 총점</th>
		 		<th>국어 평균</th>
		 		<th>영어 평균</th>
		 		<th>수학 평균</th>


		 	</tr>
		 	<%

		 	for(int x=0; x<list.size(); x++){

		 	%>
		 	<tr align="center">
		 		<td><%=list.get(x).getSyear() %></td>
		 		<td><%=list.get(x).getSclass() %></td>
		 		<td><%=list.get(x).getTname() %></td>
		 		<td><%=list.get(x).getKor() %></td>
		 		<td><%=list.get(x).getEng() %></td>
		 		<td><%=list.get(x).getMat() %></td>
		 		<td><%=list.get(x).getKavg() %></td>
		 		<td><%=list.get(x).getEavg() %></td>
		 		<td><%=list.get(x).getMavg() %></td>
	
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