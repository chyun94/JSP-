<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="DAO.*,java.util.*"%>
<%
	request.setCharacterEncoding("utf-8");
DAO d = new DAO();
VO v = new VO();

v.setArtist_id(request.getParameter("artist_id"));
v.setArtist_name(request.getParameter("artist_name"));
v.setArtist_gender(request.getParameter("artist_gender"));
v.setArtist_birth(request.getParameter("artist_birth"));
v.setTalent(request.getParameter("talent"));
v.setAgency(request.getParameter("agency"));
d.insert(v);

%>

<script>
alert("참가 신청이 정상적으로 등록되었습니다.")
location.href="index.jsp";

</script>