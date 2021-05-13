<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="DAO.*,java.util.*" %>
<% 
DAO d = new DAO();
List<VO> list =d.list();
%>
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
text-align: centerd;
}

.footer{
text-align: center; background: skyblue; padding: 11px;
}
</style>

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

<div style="padding-left: 15px;">
	<section>
	<div align="center">
		<h2 style="text-align: center; padding: 25px;">멘토 점수 목록 조회</h2>	
		<table>
	
			<tr>
				<th>참가 번호</th>
				<th>참가자명</th>
				<th>생년월일</th>
				<th>성별</th>
				<th>특기</th>
				<th>소속사</th>
			</tr>
				<%
					for(int x=0; x<list.size(); x++){
						String gender="남자";
						if(list.get(x).getArtist_gender().equals("F"))
							gender="여자";
						
							String talent = "노래";
							if(list.get(x).getTalent().equalsIgnoreCase("A")){
								talent="댄스";
							}else if(list.get(x).getTalent().equalsIgnoreCase("B")){
								talent="렙";
							}
							
						String day = list.get(x).getArtist_birth();
						String ymd = day.substring(0,4)+"년"+ day.substring(4,6)+"월"+ day.substring(6)+"일";
					%>
					
					<tr class="">
						<td><%= list.get(x).getArtist_id()%></td>
						<td><%= list.get(x).getArtist_name()%></td>
						<td><%= ymd %></td>
						<td><%= gender%></td>
						<td><%= talent%></td>
						<td><%= list.get(x).getAgency() %></td>
						
					</tr>
					<%
					}
					%>
		</table>
		
		</div>
		
	</section>
</div>

<div>
	<footer>
		<div class="footer">
			<h3 style="text-align: center;">
			HRDKOREA Copyright@2019 All right reserved. Human Resources Development Service of Korea
			</h3>
		</div>
	</footer>
</div>
</body>
</html>