<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*,model.*"%>
<%
VO v = new VO();
v.setArtist_id(request.getParameter("artist_id"));
v.setArtist_name(request.getParameter("atist_name"));
v.setArtist_gender(request.getParameter("artist_gender"));

String year = request.getParameter("year");
String month = request.getParameter("month");
String day = request.getParameter("day");
v.setArtist_birth(year+month+day);

v.setTalent(request.getParameter("talent"));
v.setAgency(request.getParameter("agency"));

DAO d = new DAO();

d.insert(v);
//등록 메소드 호출
//int row = d.insert(vo);

%>

<script>
	alert("참가 신청이 정상적으로 등록 되었습니다.")
	location.href="list.jsp";
</script>