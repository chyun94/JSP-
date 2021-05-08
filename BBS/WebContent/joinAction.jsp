<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- 아래는 클래스를 그대로 가져오는 것 -->
<%@ page import="user.UserDAO"%>
<!-- 자바스크립트 문장을 작성하기 위해 사용하는 것 -->
<%@ page import="java.io.PrintWriter"%>

<%
	request.setCharacterEncoding("utf-8");
%>

<jsp:useBean id="user" class="user.User" scope="page" />
<jsp:setProperty name="user" property="userID" />
<jsp:setProperty name="user" property="userPassword" />
<jsp:setProperty name="user" property="userName" />
<jsp:setProperty name="user" property="userGender" />
<jsp:setProperty name="user" property="userEmail" />

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset="UTF-8">

<title>JSP 게시판 웹 사이트</title>
</head>
<body>
	<%
	String userID = null;
	if(session.getAttribute("userID") != null){
		userID = (String) session.getAttribute("userID");
	}
	if(userID != null){
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert ('이미 로그인이 되어 있습니다..')");
		script.println("location.href = 'main.jsp'");
		script.println("<script>");	
	}
		if (user.getUserID() == null || user.getUserPassword() == null || user.getUserName() == null
			|| user.getUserGender() == null || user.getUserEmail() == null) {
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert ('입력이 안된 부분이 있습니다.')");
		script.println("history.back()");
		script.println("<script>");
	} else {
		UserDAO userDAO = new UserDAO();
		int result = userDAO.join(user);
		if (result == -1) {
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert ('이미 존재하는 아이디 입니다.')");
			script.println("history.back()");
			script.println("<script>");
		}

		else {
			session.setAttribute("userID", user.getUserID());
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("location.href = 'main.jsp'");
			script.println("<script>");
		}
	}
	%>

</body>
</html>