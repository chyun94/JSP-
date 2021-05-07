<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*,model.*" %>
<%
request.setCharacterEncoding("utf-8");

VO v= new VO();
v.setSyear(request.getParameter("syear"));
v.setSclass(request.getParameter("sclass"));
v.setSno(request.getParameter("sno"));
v.setSname(request.getParameter("sname"));
v.setBirth(request.getParameter("birth"));
v.setGender(request.getParameter("gender"));
v.setTel1(request.getParameter("tel1"));
v.setTel2(request.getParameter("tel2"));
v.setTel3(request.getParameter("tel3"));

DAO d = new DAO();
d.insert(v);

%>

<script>
location.href="index.jsp";
</script>