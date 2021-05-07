<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="model.*, java.util.*" %>

<% 
	request.setCharacterEncoding("utf-8");
	DAO d = new DAO();
	VO v = new VO();
	
	v.setSaleno(Integer.parseInt(request.getParameter("saleno")));
	v.setCustno(Integer.parseInt(request.getParameter("custno")));
	v.setPcode(request.getParameter("pcode"));
	v.setAmount(Integer.parseInt(request.getParameter("amount")));
	v.setSdate(request.getParameter("sdate"));
	// DB등록 메소드 호출
	d.write(v);
	response.sendRedirect("index.jsp");
 %>
 <script>
  alert("회원 정보가 등록되었습니다");
  location.href="index.jsp";
 </script>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>