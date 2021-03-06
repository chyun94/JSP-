<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<!-- 아래는 클래스를 그대로 가져오는 것 -->
<%@ page import="user.UserDAO" %>
	<!-- 자바스크립트 문장을 작성하기 위해 사용하는 것 -->
<%@ page import="java.io.PrintWriter" %>

<% request.setCharacterEncoding("utf-8"); %>

<jsp:useBean id="user" class="user.User" scope="page" />
<jsp:setProperty name="user" property="userID" />
<jsp:setProperty name="user" property="userPassword" />

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset="UTF-8">

<title>JSP 게시판 웹 사이트</title>
</head>
<body>
	<%
		String userID = null;
	if(session.getAttribute("userID")!= null){
		userID = (String) session.getAttribute("userID");
	}
	if(userID != null){
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert ('이미 로그인이 되어 있습니다..')");
		script.println("location.href = 'main.jsp'");
		script.println("<script>");	
	}
		UserDAO userDAO = new UserDAO();
		int result = userDAO.login(user.getUserID(),user.getUserPassword());
		if(result == 1){
			//세션 처리를 해줘야 로그인과 회원가입시에도 그대로 남아 있다.
			session.setAttribute("userID", user.getUserID());
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("location.href = 'main.jsp'");
			script.println("<script>");		
		}
		// 비밀번호가 틀릴 경우
		if(result == 0){
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert ('비밀번호가 틀립니다.')");
			script.println("history.back()");
			script.println("<script>");		
		}
		else if(result == -1) {
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert ('아이디가 존재하지 않습니다.')");
			script.println("history.back()");
			script.println("<script>");	
		}
		else if(result == -2) {
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert ('데이터베이스 오류가 발생했습니다.')");
			script.println("history.back()");
			script.println("<script>");	
		}
	%>
	
</body>
</html>