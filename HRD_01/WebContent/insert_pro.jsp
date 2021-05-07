<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="model.*, java.util.*" %>

<% 
	request.setCharacterEncoding("utf-8");
	DAO d = new DAO();
	VO v = new VO();
	
	v.setCustno(Integer.parseInt((request.getParameter("custno"))));
	v.setCustname(request.getParameter("custname"));
	v.setPhone(request.getParameter("phone"));
	v.setGender(request.getParameter("gender"));
	v.setJoindate(request.getParameter("joindate"));
	v.setGrade(request.getParameter("grade"));
	v.setCity(request.getParameter("city"));
	
	// 테스트가 필요 할 경우
	// out.print(v.getCustno()+"<br>");
	
	// DB등록 메소드 호출
	//response.sendRedirect("index.jsp");
	d.write(v);
 %>
 <script>
  alert("회원 정보가 등록되었습니다");
  location.href="index.jsp";
 </script>
