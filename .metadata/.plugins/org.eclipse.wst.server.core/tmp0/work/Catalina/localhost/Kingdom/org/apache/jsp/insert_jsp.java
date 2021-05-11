/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/8.5.59
 * Generated at: 2021-05-11 12:33:48 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class insert_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  private static final java.util.Set<java.lang.String> _jspx_imports_packages;

  private static final java.util.Set<java.lang.String> _jspx_imports_classes;

  static {
    _jspx_imports_packages = new java.util.HashSet<>();
    _jspx_imports_packages.add("javax.servlet");
    _jspx_imports_packages.add("javax.servlet.http");
    _jspx_imports_packages.add("javax.servlet.jsp");
    _jspx_imports_classes = null;
  }

  private volatile javax.el.ExpressionFactory _el_expressionfactory;
  private volatile org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public java.util.Set<java.lang.String> getPackageImports() {
    return _jspx_imports_packages;
  }

  public java.util.Set<java.lang.String> getClassImports() {
    return _jspx_imports_classes;
  }

  public javax.el.ExpressionFactory _jsp_getExpressionFactory() {
    if (_el_expressionfactory == null) {
      synchronized (this) {
        if (_el_expressionfactory == null) {
          _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
        }
      }
    }
    return _el_expressionfactory;
  }

  public org.apache.tomcat.InstanceManager _jsp_getInstanceManager() {
    if (_jsp_instancemanager == null) {
      synchronized (this) {
        if (_jsp_instancemanager == null) {
          _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
        }
      }
    }
    return _jsp_instancemanager;
  }

  public void _jspInit() {
  }

  public void _jspDestroy() {
  }

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
      throws java.io.IOException, javax.servlet.ServletException {

    final java.lang.String _jspx_method = request.getMethod();
    if (!"GET".equals(_jspx_method) && !"POST".equals(_jspx_method) && !"HEAD".equals(_jspx_method) && !javax.servlet.DispatcherType.ERROR.equals(request.getDispatcherType())) {
      response.sendError(HttpServletResponse.SC_METHOD_NOT_ALLOWED, "JSP들은 오직 GET, POST 또는 HEAD 메소드만을 허용합니다. Jasper는 OPTIONS 메소드 또한 허용합니다.");
      return;
    }

    final javax.servlet.jsp.PageContext pageContext;
    javax.servlet.http.HttpSession session = null;
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html; charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("<meta charset=\"UTF-8\">\r\n");
      out.write("<title>Insert title here</title>\r\n");
      out.write("<style>\r\n");
      out.write("*{margin: 0%;padding: 0%}\r\n");
      out.write("\r\n");
      out.write(".header ul,li,a{\r\n");
      out.write("list-style: none;\r\n");
      out.write("text-decoration: none;\r\n");
      out.write("float: left;\r\n");
      out.write("padding-left: 15px;\r\n");
      out.write("padding-bottom: 0 20px;\r\n");
      out.write("text-align: center;\r\n");
      out.write("}\r\n");
      out.write(".nav{\r\n");
      out.write("padding: 14px 0px; overflow: hidden;\r\n");
      out.write("background-color: lightgray;\r\n");
      out.write("}\r\n");
      out.write(".subject table{\r\n");
      out.write("width: 600px;\r\n");
      out.write("margin: 0 auto;\r\n");
      out.write("}\r\n");
      out.write(".subject table,th,td{\r\n");
      out.write("border: 1px solid gray;\r\n");
      out.write("text-align: left;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write(".footer{\r\n");
      out.write("text-align: center; background: skyblue; padding: 11px;\r\n");
      out.write("}\r\n");
      out.write("</style>\r\n");
      out.write("<script>\r\n");
      out.write("\tfunction send() {\r\n");
      out.write("\t\tif(frm.artist_number.value==\"\"){\r\n");
      out.write("\t\t\talert(\"참가번호를 작성해 주세요\");\r\n");
      out.write("\t\t\tfrm.artist_number.focus();\r\n");
      out.write("\t\t\treturn;\r\n");
      out.write("\t\t}\r\n");
      out.write("\t\tif(frm.artist_name.value==\"\"){\r\n");
      out.write("\t\t\talert(\"참가자 이름을 작성해 주세요\");\r\n");
      out.write("\t\t\tfrm.artist_name.focus();\r\n");
      out.write("\t\t\treturn;\r\n");
      out.write("\t\t}\r\n");
      out.write("\t\tif(frm.yy.value==\"\"){\r\n");
      out.write("\t\t\talert(\"생년을 작성해 주세요\");\r\n");
      out.write("\t\t\tfrm.yy.focus();\r\n");
      out.write("\t\t\treturn;\r\n");
      out.write("\t\t}\r\n");
      out.write("\t\tif(frm.mm.value==\"\"){\r\n");
      out.write("\t\t\talert(\"월을 작성해 주세요\");\r\n");
      out.write("\t\t\tfrm.mm.focus();\r\n");
      out.write("\t\t\treturn;\r\n");
      out.write("\t\t}\r\n");
      out.write("\t\tif(frm.dd.value==\"\"){\r\n");
      out.write("\t\t\talert(\"날짜를 작성해 주세요\");\r\n");
      out.write("\t\t\tfrm.dd.focus();\r\n");
      out.write("\t\t\treturn;\r\n");
      out.write("\t\t}\r\n");
      out.write("\t\tif(!frm.gender[0].checked && !frm.gender[1].checked){\r\n");
      out.write("\t\t\talert(\"성별을 선택해 주세요\");\r\n");
      out.write("\t\t\treturn;\r\n");
      out.write("\t\t}\r\n");
      out.write("\t\t//선택 박스 메소드\r\n");
      out.write("\t\tif(frm.hobby.selectedIndex==0){\r\n");
      out.write("\t\t\talert(\"특기를 선택해 주세요\");\r\n");
      out.write("\t\t\tfrm.hobby.focus();\r\n");
      out.write("\t\t\treturn;\r\n");
      out.write("\t\t}\r\n");
      out.write("\t\tif(frm.join.value==\"\"){\r\n");
      out.write("\t\t\talert(\"소속사를 작성해 주세요\");\r\n");
      out.write("\t\t\tfrm.join.focus();\r\n");
      out.write("\t\t\treturn;\r\n");
      out.write("\t\t}\r\n");
      out.write("\t\talert(\"오디션참가에 등록 합니다.\");\r\n");
      out.write("\t\tfrm.submit();\r\n");
      out.write("\t}\r\n");
      out.write("\tfunction re() {\r\n");
      out.write("\t\talert(\"정보를 지우고 처음부터 다시 작성 합니다.\");\r\n");
      out.write("\t\tfrm.reset();\r\n");
      out.write("\t\tfrm.artist_number.focus();\r\n");
      out.write("\t}\r\n");
      out.write("</script>\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("<div>\r\n");
      out.write("\t<header>\r\n");
      out.write("\t\t<h1 style=\"text-align: center; padding: 10px\">(과정평가형 정보처리산업기사)오디션 관리 프로그램 ver2009-06</h1>\t\t\r\n");
      out.write("\t\t<nav class=\"nav\">\r\n");
      out.write("\t\t<ul>\r\n");
      out.write("\t\t\t<li><a href=\"insert.jsp\">오디션등록</a></li>\r\n");
      out.write("\t\t\t<li><a href=\"list.jsp\">참가자목록조회</a></li>\r\n");
      out.write("\t\t\t<li><a href=\"mentolist.jsp\">멘토점수조회</a></li>\r\n");
      out.write("\t\t\t<li><a href=\"ranking.jsp\">참가자등수조회</a></li>\r\n");
      out.write("\t\t\t<li><a href=\"index.jsp\">홈으로</a></li>\r\n");
      out.write("\t\t</ul>\r\n");
      out.write("\t\t</nav>\r\n");
      out.write("\t</header>\r\n");
      out.write("</div>\r\n");
      out.write("\r\n");
      out.write("<div style=\"padding-left: 15px; text-align: center;\">\r\n");
      out.write("\t<section>\r\n");
      out.write("\t\t<h2 style=\"text-align: center; padding: 25px;\">오디션 등록</h2>\t\r\n");
      out.write("\t\t\r\n");
      out.write("\t\t<form action=\"insert_pro.jsp\" method=\"post\" name=\"frm\">\r\n");
      out.write("\t\t\r\n");
      out.write("\t\t<div align=\"center\">\r\n");
      out.write("\t\t<table class=\"subject\" style=\"text-align: center;\">\r\n");
      out.write("\t\t\t<tr>\r\n");
      out.write("\t\t\t\t<td>참가번호</td>\r\n");
      out.write("\t\t\t\t<th>\r\n");
      out.write("\t\t\t\t\t<input type=\"text\"maxlength=\"4\" name=\"artist_number\">*참가번호는(A000)4자리 입니다.\r\n");
      out.write("\t\t\t\t</th>\r\n");
      out.write("\t\t\t</tr>\r\n");
      out.write("\t\t\t<tr>\r\n");
      out.write("\t\t\t\t<td>참가자명</td>\r\n");
      out.write("\t\t\t\t<th>\r\n");
      out.write("\t\t\t\t\t<input type=\"text\" name=\"artist_name\">\r\n");
      out.write("\t\t\t\t</th>\r\n");
      out.write("\t\t\t</tr>\r\n");
      out.write("\t\t\t<tr>\r\n");
      out.write("\t\t\t\t<td>생년월일</td>\r\n");
      out.write("\t\t\t\t<th>\r\n");
      out.write("\t\t\t\t\t<input type=\"text\" name=\"yy\">년\r\n");
      out.write("\t\t\t\t\t<input type=\"text\" name=\"mm\">월\r\n");
      out.write("\t\t\t\t\t<input type=\"text\" name=\"dd\">일\r\n");
      out.write("\t\t\t\t</th>\r\n");
      out.write("\t\t\t</tr>\r\n");
      out.write("\t\t\t<tr>\r\n");
      out.write("\t\t\t\t<td>성별</td>\r\n");
      out.write("\t\t\t\t<th>\r\n");
      out.write("\t\t\t\t\t<input type=\"radio\" name=\"gender\" value=\"M\">남자\r\n");
      out.write("\t\t\t\t\t<input type=\"radio\" name=\"gender\" value=\"F\">여자\r\n");
      out.write("\t\t\t\t</th>\r\n");
      out.write("\t\t\t</tr>\r\n");
      out.write("\t\t\t<tr>\r\n");
      out.write("\t\t\t\t<td>특기</td>\r\n");
      out.write("\t\t\t\t<th>\r\n");
      out.write("\t\t\t\t\t<select name=hobby>\r\n");
      out.write("\t\t\t\t\t\t<option>특기선택</option>\r\n");
      out.write("\t\t\t\t\t\t<option value=\"1\">댄스</option>\r\n");
      out.write("\t\t\t\t\t\t<option value=\"2\">노래</option>\r\n");
      out.write("\t\t\t\t\t\t<option value=\"3\">랩</option>\r\n");
      out.write("\t\t\t\t\t</select>\t\t\t\t\r\n");
      out.write("\t\t\t\t</th>\r\n");
      out.write("\t\t\t</tr>\r\n");
      out.write("\t\t\t<tr>\r\n");
      out.write("\t\t\t\t<td>소속사</td>\r\n");
      out.write("\t\t\t\t<th>\r\n");
      out.write("\t\t\t\t\t<input type=\"text\" name=\"join\">\t\t\t\t\t\r\n");
      out.write("\t\t\t\t</th>\r\n");
      out.write("\t\t\t</tr>\r\n");
      out.write("\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t<th style=\"text-align: center;\" colspan=\"2\">\r\n");
      out.write("\t\t\t\t\t<input type=\"button\" onclick=\"send()\" value=\"오디션등록\" >\r\n");
      out.write("\t\t\t\t\t<input type=\"button\" onclick=\"re()\" value=\"다시쓰기\">\r\n");
      out.write("\t\t\t\t</th>\r\n");
      out.write("\t\t\t</tr>\r\n");
      out.write("\t\t</table>\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t\t</form>\r\n");
      out.write("\t</section>\r\n");
      out.write("</div>\r\n");
      out.write("\r\n");
      out.write("<div style=\"padding-top: 30px;\">\r\n");
      out.write("\t<footer>\r\n");
      out.write("\t\t<div class=\"footer\">\r\n");
      out.write("\t\t\t<h3 style=\"text-align: center;\" >\r\n");
      out.write("\t\t\tHRDKOREA Copyright@2019 All right reserved. Human Resources Development Service of Korea\r\n");
      out.write("\t\t\t</h3>\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t</footer>\r\n");
      out.write("</div>\r\n");
      out.write("</body>\r\n");
      out.write("</html>");
    } catch (java.lang.Throwable t) {
      if (!(t instanceof javax.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try {
            if (response.isCommitted()) {
              out.flush();
            } else {
              out.clearBuffer();
            }
          } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
