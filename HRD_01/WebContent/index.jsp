<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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

	<div>
		<section>
			<div class="content">
				<h2 class="title">학생정보 등록</h2>
				<br>
			아무말 대잔치
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