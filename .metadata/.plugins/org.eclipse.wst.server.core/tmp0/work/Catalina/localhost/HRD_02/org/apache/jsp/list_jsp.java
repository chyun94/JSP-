/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/8.5.59
 * Generated at: 2021-05-11 13:47:31 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import model.*;
import java.util.*;

public final class list_jsp extends org.apache.jasper.runtime.HttpJspBase
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
    _jspx_imports_packages.add("java.util");
    _jspx_imports_packages.add("javax.servlet.http");
    _jspx_imports_packages.add("model");
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
      out.write("\t\r\n");

DAO d = new DAO();
List<VO>list = d.mlist();

      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("<meta charset=\"UTF-8\">\r\n");
      out.write("<title>Insert title here</title>\r\n");
      out.write("<style>\r\n");
      out.write("* {\r\n");
      out.write("\tmargin: 0;\r\n");
      out.write("\tpadding: 0;\r\n");
      out.write("}\r\n");
      out.write("ul, li {\r\n");
      out.write("\tlist-style: none;\r\n");
      out.write("}\r\n");
      out.write("a {\r\n");
      out.write("\ttext-decoration: none;\r\n");
      out.write("\tcolor: ghostWhite;\r\n");
      out.write("\tfont-size: larger;\r\n");
      out.write("}\r\n");
      out.write("th {\r\n");
      out.write("\ttext-align: center;\r\n");
      out.write("}\r\n");
      out.write("h1 {\r\n");
      out.write("\ttext-align: center;\r\n");
      out.write("\tpadding: 20px;\r\n");
      out.write("}\r\n");
      out.write(".navi {\r\n");
      out.write("\tpadding: 14px 0;\r\n");
      out.write("\toverflow: hidden;\r\n");
      out.write("\tbackground-color: DarkCyan;\r\n");
      out.write("}\r\n");
      out.write(".navi ul, li {\r\n");
      out.write("\tfloat: left;\r\n");
      out.write("\tpadding: 0px 20px;\r\n");
      out.write("\ttext-align: center;\r\n");
      out.write("}\r\n");
      out.write(".content {\r\n");
      out.write("\tbackground-color: #E6E6E6;\r\n");
      out.write("\tpadding: 30px;\r\n");
      out.write("\theight: 400px;\r\n");
      out.write("}\r\n");
      out.write(".title {\r\n");
      out.write("\ttext-align: center;\r\n");
      out.write("\tpadding: 22px;\r\n");
      out.write("}\r\n");
      out.write(".content table {\r\n");
      out.write("\twidth: 600px;\r\n");
      out.write("\tmargin: 0 auto;\r\n");
      out.write("}\r\n");
      out.write(".content table th, td {\r\n");
      out.write("\tborder: 1px solid #bbb;\r\n");
      out.write("}\r\n");
      out.write(".content table .btn_group {\r\n");
      out.write("\ttext-align: center;\r\n");
      out.write("}\r\n");
      out.write(".Subject {\r\n");
      out.write("\ttext-align: center;\r\n");
      out.write("\tbackground-color: black;\r\n");
      out.write("\tpadding: 16px 0;\r\n");
      out.write("\tcolor: white;\r\n");
      out.write("}\r\n");
      out.write(".footer {\r\n");
      out.write("\ttext-align: center;\r\n");
      out.write("\tbackground-color: black;\r\n");
      out.write("\tcolor: ghostwhite;\r\n");
      out.write("\tfont-size: 16px;\r\n");
      out.write("\tpadding: 10px;\r\n");
      out.write("\tmargin-top: 5%;\r\n");
      out.write("}\r\n");
      out.write("</style>\r\n");
      out.write("\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("\t<div>\r\n");
      out.write("\t\t<header>\r\n");
      out.write("\t\t\t<h1 class=\"subject\">오디션 관리 프로그램 ver3.0</h1>\r\n");
      out.write("\t\t\t<nav>\r\n");
      out.write("\t\t\t\t<ul class=\"navi\">\r\n");
      out.write("\t\t\t\t\t<li><a href=\"insert.jsp\"> 오디션 등록</a></li>\r\n");
      out.write("\t\t\t\t\t<li><a href=\"list.jsp\"> 참가자 목록 조회</a></li>\r\n");
      out.write("\t\t\t\t\t<li><a href=\"mlist.jsp\"> 멘토점수 조회</a></li>\r\n");
      out.write("\t\t\t\t\t<li><a href=\"rlist.jsp\"> 참가자 등수 조회</a></li>\r\n");
      out.write("\t\t\t\t\t<li><a href=\"index.jsp\"> 홈으로</a></li>\r\n");
      out.write("\t\t\t\t</ul>\r\n");
      out.write("\t\t\t</nav>\r\n");
      out.write("\t\t</header>\r\n");
      out.write("\t</div>\r\n");
      out.write("\r\n");
      out.write("\t<div>\r\n");
      out.write("\t\t<section>\r\n");
      out.write("\t\t\t<div class=\"content\">\r\n");
      out.write("\t\t\t\t<h2 class=\"title\">참가자 목록 조회</h2>\r\n");
      out.write("\t\t\t\t<table>\r\n");
      out.write("\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t<th>참가 번호</th>\r\n");
      out.write("\t\t\t\t\t\t<th>참가자명</th>\r\n");
      out.write("\t\t\t\t\t\t<th>생년월일</th>\r\n");
      out.write("\t\t\t\t\t\t<th>성별</th>\r\n");
      out.write("\t\t\t\t\t\t<th>특기</th>\r\n");
      out.write("\t\t\t\t\t\t<th>소속사</th>\r\n");
      out.write("\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t");

					for(int x=0; x<list.size(); x++){
						String gender="남자";
						if(list.get(x).getArtist_gender().equals("F"))
							gender="여자";
						
							String talent = "노래";
							if(list.get(x).getTalent().equalsIgnoreCase("A")){
								talent="댄스";
							}else if(list.get(x).getTalent().equalsIgnoreCase("B")){
								talent="렙";
							}
							
						String day = list.get(x).getArtist_birth();
						String ymd = day.substring(0,4)+"년"+ day.substring(4,6)+"월"+ day.substring(6)+"일";
					
      out.write("\r\n");
      out.write("\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t<tr class=\"\">\r\n");
      out.write("\t\t\t\t\t\t<td>");
      out.print( list.get(x).getArtist_id());
      out.write("</td>\r\n");
      out.write("\t\t\t\t\t\t<td>");
      out.print( list.get(x).getArtist_name());
      out.write("</td>\r\n");
      out.write("\t\t\t\t\t\t<td>");
      out.print( ymd );
      out.write("</td>\r\n");
      out.write("\t\t\t\t\t\t<td>");
      out.print( gender);
      out.write("</td>\r\n");
      out.write("\t\t\t\t\t\t<td>");
      out.print( talent);
      out.write("</td>\r\n");
      out.write("\t\t\t\t\t\t<td>");
      out.print( list.get(x).getAgency() );
      out.write("</td>\r\n");
      out.write("\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t");

					}
					
      out.write("\r\n");
      out.write("\t\t\t\t\t\r\n");
      out.write("\t\t\t\t</table>\r\n");
      out.write("\t\t\t\t\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\r\n");
      out.write("\t\t</section>\r\n");
      out.write("\t</div>\r\n");
      out.write("\r\n");
      out.write("\t<div class=\"footer\">\r\n");
      out.write("\t\t<footer>\r\n");
      out.write("\t\t\t<p>HRDKOREA Copyright@2016 All rights reserve.Human Resources\r\n");
      out.write("\t\t\t\tDevelopment Serivce of Korea</p>\r\n");
      out.write("\t\t</footer>\r\n");
      out.write("\t</div>\r\n");
      out.write("\r\n");
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