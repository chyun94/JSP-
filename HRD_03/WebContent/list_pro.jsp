<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*,model.*" %>
<%
request.setCharacterEncoding("utf-8");

VO v= new VO();
v.setSyear(request.getParameter("syear"));
v.setSclass(request.getParameter("sclass"));
v.setSno(request.getParameter("sno"));
v.setKor(Integer.parseInt(request.getParameter("kor")));
v.setEng(Integer.parseInt(request.getParameter("eng")));
v.setMat(Integer.parseInt(request.getParameter("mat")));

DAO d = new DAO();
d.list(v);

%>

<script>
location.href="index.jsp";
</script>