<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
.subject2 table th,td{border: 1px solid white; width: auto;}
.title{text-align: center; padding: 22px; color: black;}
.footer{text-align: center; background-color:yellow; font-size: 16px; padding: 10px;}
.h2{text-align: center; color: black;padding-top: 15px;}

</style>


</head>
<body>

<div>
	<header>
	 <h1 class="subject">(과정평가형 정보처리 산업기사) 고교 성정관리 프로그램 ver2019-06</h1>
	 <nav>
	 	<ul class="nav">
		 	<li><a href="insert.jsp"> 학생등록</a></li>
		 	<li><a href="rinsert.jsp"> 성적입력</a></li>
		 	<li><a href="list.jsp"> 성적조회 </a></li>
		 	<li><a href="class.jsp"> 반별통계 </a></li>
		 	<li><a href="index.jsp"> 홈으로 </a></li>
	 	</ul>
	 </nav>
	</header>
</div>

<div>
	<section>
		<div class="subject2">		
		 	<h2 class="h2">학생등록</h2><br>
		 	<form action="insert_pro.jsp" method="post" name="frm"></form>
		 	<table>
		 			<tr>
			 			<th>학년</th>
			 			<td align="left">
			 			<input type="text" name="syear">(예)1
			 			</td>
		 			</tr>
		 		
		 			<tr>
			 			<th>반</th>
			 			<td align="left">
			 			<input type="text" name="sclass">(예)01
			 			</td>
		 			</tr>
		 			
		 			<tr>
			 			<th>번호</th>
			 			<td align="left">
			 			<input type="text" name="sno">(예)01
			 			</td>
		 			</tr>
		 			
		 			<tr>
			 			<th>이름</th>
			 			<td align="left">
			 			<input type="text" name="sname">
			 			</td>
		 			</tr>
		 			
		 			<tr>
			 			<th>생년월일</th>
			 			<td align="left">
			 			<input type="text" name="birth">(예)20190301
			 			</td>
		 			</tr>		 	
		 			
		 			<tr>
			 			<th>성별</th>
			 			<td align="left">
			 			<input type="radio" name="gender">남성
			 			<input type="radio" name="gender">여성
			 			</td>
		 			</tr>	
		 			
		 			<tr>
			 			<th>전화번호</th>
			 			<td align="left">
			 			<input type="number" name="Tel1" maxlength="3">-
			 			<input type="number" name="Tel2" maxlength="4">-
			 			<input type="number" name="Tel3" maxlength="4">
			 			</td>
		 			</tr>
		 			
		 			<tr>
		 				<td colspan="2" align="center">
		 					<input type="button" onclick="send()" value="학생등록">
		 					<input type="button" onclick="del()" value="다시쓰기">
		 				</td>
		 			</tr>
		 	</table>
		</div>
	</section>
</div>

<div>
	<footer class="footer">
		<p>This is footer don't worry 
		</p>
	</footer>
</div>

</body>
</html>