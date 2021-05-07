<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="model.*,java.util.*,java.text.*" %>

<%	
	DecimalFormat df = new DecimalFormat("￦#,###");
//확인 방법: df.format(283746)
// 소수자리 표시를 하려면 ###.0의 식으로 쓰면 된다. * java.text.*가 import되어 있어야 한다.
//df로 출력
	DAO d = new DAO();
	List<VO> list = d.mmlist();
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
<script>
	function send() {
		if (frm.hackbun.value == "") {
			alert("학번이 입력되지 않았습니다");
			frm.hackbun.focus();
			return;
		}
		if (frm.name.value == "") {
			alert("이름이 입력되지 않았습니다");
			frm.name.focus();
			return;
		}
		if (frm.phone1.value == "" || frm.phone2.value == ""
				|| frm.phone3.value == "") {
			alert("전화번호가 입력되지 않았습니다");
			frm.phone1.focus();
			return;
		}
		//라디오, 체크박스
		for (x = 0, flag = 0; x < frm.gender.length; x++) {
			if (frm.gender[x].checked) {
				flag = 1;
				break;
			}
		}
		if (!flag) {
			alert("성별이 체크되지 않았습니다");
			return;
		}
		if (frm.birth.value == "") {
			alert("생년월일이 입력되지 않았습니다");
			frm.birth.focus();
			return;
		}
		if (frm.regdate.value == "") {
			alert("등록읽자 입력되지 않았습니다");
			frm.regdate.focus();
			return;
		}
		alert("학생등록이 정상적으로 등록되었습니다.");
		frm.submit();
	}

	function del() {
		alert("모두 지웁니다.")
		frm.reset();
		frm.hackbun.focus();
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

<div class="content">
		<section>
				<h2 class="title">매출 현황 조회</h2>
					<table>
						<tr>
							<th>회원 번호</th>
							<th>회원 성명</th>
							<th>판매 일자</th>
							<th>상품명</th>							
							<th>수량</th>
							<th>단가</th>
							<th>금액</th>
						</tr>
<%
	int sum=0;
	for(int x=0; x<list.size(); x++){
		sum+=list.get(x).getTot();
%>
						<tr>
							<td class="text_center"><%=list.get(x).getSaleno()%></td>
							<td class="text_center"><%=list.get(x).getCustname()%> </td>
							<td class="text_center"><%=list.get(x).getSdate()%> </td>
							<td class="text_center"><%=list.get(x).getPname()%> </td>
							<td class="text_center"><%=list.get(x).getAmount()%> </td>
							<td class="text_centerR"><%=df.format(list.get(x).getPcost())%> </td>
							<td class="text_centerR"><%=df.format(list.get(x).getTot())%> </td>
						</tr>
<%
	}
%>
						<tr>
							<td class="text_center" colspan="6">합계금액</td>
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