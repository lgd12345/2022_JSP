/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/9.0.62
 * Generated at: 2022-08-09 03:17:22 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.ch04_005fex;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.net.URLEncoder;

public final class test_005fch04_jsp extends org.apache.jasper.runtime.HttpJspBase
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
    _jspx_imports_classes = new java.util.HashSet<>();
    _jspx_imports_classes.add("java.net.URLEncoder");
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

    if (!javax.servlet.DispatcherType.ERROR.equals(request.getDispatcherType())) {
      final java.lang.String _jspx_method = request.getMethod();
      if ("OPTIONS".equals(_jspx_method)) {
        response.setHeader("Allow","GET, HEAD, POST, OPTIONS");
        return;
      }
      if (!"GET".equals(_jspx_method) && !"POST".equals(_jspx_method) && !"HEAD".equals(_jspx_method)) {
        response.setHeader("Allow","GET, HEAD, POST, OPTIONS");
        response.sendError(HttpServletResponse.SC_METHOD_NOT_ALLOWED, "JSP들은 오직 GET, POST 또는 HEAD 메소드만을 허용합니다. Jasper는 OPTIONS 메소드 또한 허용합니다.");
        return;
      }
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
      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("<meta charset=\"UTF-8\">\r\n");
      out.write("<title>Insert title here</title>\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("	<!-- <h1>포워드 테스트 페이지입니다.</h1> -->\r\n");
      out.write("	");
      out.write("\r\n");
      out.write("	<!-- 문서가 불러오기 덧씌워짐 -->\r\n");
      out.write("	<!-- <h1>인클루드 include 테스트페이지입니다.</h1> -->\r\n");
      out.write("	");
      out.write("\r\n");
      out.write("	<!-- 문서가 포함됨 -->\r\n");
      out.write("	<hr>\r\n");
      out.write("	<br>\r\n");
      out.write("	<h1>param 액선 태그 테스트 페이지입니다.</h1>\r\n");
      out.write("	");
      out.write("\r\n");
      out.write("	<br>\r\n");
      out.write("	");
      out.write('\r');
      out.write('\n');
      out.write("\r\n");
      out.write("	<br>\r\n");
      out.write("	<!-- 자바빈즈 -->\r\n");
      out.write("	");
      java.util.Date date1234 = null;
      date1234 = (java.util.Date) _jspx_page_context.getAttribute("date1234", javax.servlet.jsp.PageContext.PAGE_SCOPE);
      if (date1234 == null){
        date1234 = new java.util.Date();
        _jspx_page_context.setAttribute("date1234", date1234, javax.servlet.jsp.PageContext.PAGE_SCOPE);
      }
      out.write("\r\n");
      out.write("	<h2>시간 예시, useBean으로 사용하기</h2>\r\n");
      out.write("	<h2>");
      out.print(date1234);
      out.write("</h2>\r\n");
      out.write("	<br>\r\n");
      out.write("		");
      ch04_com.dao.Calc bean234 = null;
      bean234 = (ch04_com.dao.Calc) _jspx_page_context.getAttribute("bean234", javax.servlet.jsp.PageContext.PAGE_SCOPE);
      if (bean234 == null){
        bean234 = new ch04_com.dao.Calc();
        _jspx_page_context.setAttribute("bean234", bean234, javax.servlet.jsp.PageContext.PAGE_SCOPE);
      }
      out.write("\r\n");
      out.write("	<h2>process라는이름의 메서드예시, useBean으로 사용하기.</h2>\r\n");
      out.write("	<h2>");
int result = bean234.process(5);
      out.write("</h2>\r\n");
      out.write("	<h2>");
      out.print(result);
      out.write("</h2>\r\n");
      out.write("<br>\r\n");
      out.write("		");
      ch04_com.dao.Calc pow1 = null;
      pow1 = (ch04_com.dao.Calc) _jspx_page_context.getAttribute("pow1", javax.servlet.jsp.PageContext.PAGE_SCOPE);
      if (pow1 == null){
        pow1 = new ch04_com.dao.Calc();
        _jspx_page_context.setAttribute("pow1", pow1, javax.servlet.jsp.PageContext.PAGE_SCOPE);
      }
      out.write("\r\n");
      out.write("	<h2>pow라는이름의 메서드예시, useBean으로 사용하기.</h2>\r\n");
      out.write("	<h2>");
int result2 = pow1.pow(5);
      out.write("</h2>\r\n");
      out.write("	<h2>");
      out.print(result2);
      out.write("</h2>\r\n");
      out.write("<br>\r\n");
      out.write("<hr>\r\n");
      out.write("		");
      ch04_com.dao.Person p1 = null;
      p1 = (ch04_com.dao.Person) _jspx_page_context.getAttribute("p1", javax.servlet.jsp.PageContext.REQUEST_SCOPE);
      if (p1 == null){
        p1 = new ch04_com.dao.Person();
        _jspx_page_context.setAttribute("p1", p1, javax.servlet.jsp.PageContext.REQUEST_SCOPE);
      }
      out.write("\r\n");
      out.write("		<!--scope=\"request\" 페이지가 떠있을 때까지만 유효한 변수 -->\r\n");
      out.write("	<h2>Person라는이름의 클래스의 멤버 사용 예시, useBean으로 사용하기.</h2>\r\n");
      out.write("	");
 p1.setId("lee"); 
      out.write('\r');
      out.write('\n');
      out.write('	');
 p1.setName("이야옹"); 
      out.write('\r');
      out.write('\n');
      out.write('	');
 p1.setEmail("lee@naver.com"); 
      out.write("\r\n");
      out.write("	<!--setProperty 마지막에 입력한게 출력된다. -->\r\n");
      out.write("	");
      org.apache.jasper.runtime.JspRuntimeLibrary.introspecthelper(_jspx_page_context.findAttribute("p1"), "id", "leeeeee", null, null, false);
      out.write('\r');
      out.write('\n');
      out.write('	');
      org.apache.jasper.runtime.JspRuntimeLibrary.introspecthelper(_jspx_page_context.findAttribute("p1"), "name", "이야옹", null, null, false);
      out.write('\r');
      out.write('\n');
      out.write('	');
      org.apache.jasper.runtime.JspRuntimeLibrary.introspecthelper(_jspx_page_context.findAttribute("p1"), "email", "Lee@nave.com", null, null, false);
      out.write("\r\n");
      out.write("	<!-- getProperty -->\r\n");
      out.write("	<h2>이름= ");
      out.write(org.apache.jasper.runtime.JspRuntimeLibrary.toString((((ch04_com.dao.Person)_jspx_page_context.findAttribute("p1")).getId())));
      out.write("</h2>\r\n");
      out.write("	");
      out.write(org.apache.jasper.runtime.JspRuntimeLibrary.toString((((ch04_com.dao.Person)_jspx_page_context.findAttribute("p1")).getName())));
      out.write('\r');
      out.write('\n');
      out.write('	');
      out.write(org.apache.jasper.runtime.JspRuntimeLibrary.toString((((ch04_com.dao.Person)_jspx_page_context.findAttribute("p1")).getEmail())));
      out.write("\r\n");
      out.write("	\r\n");
      out.write("	\r\n");
      out.write("\r\n");
      out.write("	<br>\r\n");
      out.write("	");
      ch04_com.dao.Food f1 = null;
      f1 = (ch04_com.dao.Food) _jspx_page_context.getAttribute("f1", javax.servlet.jsp.PageContext.REQUEST_SCOPE);
      if (f1 == null){
        f1 = new ch04_com.dao.Food();
        _jspx_page_context.setAttribute("f1", f1, javax.servlet.jsp.PageContext.REQUEST_SCOPE);
      }
      out.write("\r\n");
      out.write("	<h2>Food이름의 클래스의 멤버 사용, useBean으로사용</h2>\r\n");
      out.write("	");
 f1.setName("초코");
      out.write("\r\n");
      out.write("	<h2>이름= ");
      out.print(f1.getName());
      out.write("</h2>\r\n");
      out.write("	\r\n");
      out.write("	\r\n");
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
