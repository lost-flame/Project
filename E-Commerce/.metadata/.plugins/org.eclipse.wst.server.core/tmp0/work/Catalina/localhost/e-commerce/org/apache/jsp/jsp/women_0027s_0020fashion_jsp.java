/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/8.0.9
 * Generated at: 2023-05-02 10:22:34 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class women_0027s_0020fashion_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  private javax.el.ExpressionFactory _el_expressionfactory;
  private org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public void _jspInit() {
    _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
    _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
  }

  public void _jspDestroy() {
  }

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
        throws java.io.IOException, javax.servlet.ServletException {

    final javax.servlet.jsp.PageContext pageContext;
    javax.servlet.http.HttpSession session = null;
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("<meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\r\n");
      out.write("<link rel=\"stylesheet\" type=\"text/css\" href=\"../css/category.css\">\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("<div class=\"layout\">\r\n");
      out.write("\t<div class=\"top-space\"></div>\r\n");
      out.write("\t<div class=\"top\">\r\n");
      out.write("\t<nav>\r\n");
      out.write("\t<ul>\r\n");
      out.write("\t<li><a href=\"aboutUs.jsp\">Home</a></li>\r\n");
      out.write("\t<li><a href=\"electronics.jsp\">Electronics</a></li>\r\n");
      out.write("\t<li><a href=\"men's fashion.jsp\">Men's Fashion</a></li>\r\n");
      out.write("\t<li><a href=\"women's fashion.jsp\">Women's Fashion</a></li>\r\n");
      out.write("\t<div class=\"searchBox\">\r\n");
      out.write("\t<input type=\"search\" name=\"searchbox\" id=\"searchbox\" placeholder=\"searching...\" align=\"center\"/>\r\n");
      out.write("\t<button onclick=\"window.location.href = '../jsp/searchboxSubmit.jsp';\">Search</button>\r\n");
      out.write("\t</div>\r\n");
      out.write("\t");
 
	String userid = (String)session.getAttribute("userid");
	if(userid == null){
      out.write("\r\n");
      out.write("\t<li><a href=\"home.jsp\">Sign-In</a></li>\r\n");
      out.write("\t");
}
	else{
      out.write("\r\n");
      out.write("\t<li><a href=\"home.jsp\">Sign-Out</a></li>\r\n");
      out.write("\t");
}
      out.write("\r\n");
      out.write("\t</ul>\r\n");
      out.write("\t</nav>\r\n");
      out.write("\t</div>\r\n");
      out.write("\t\r\n");
      out.write("\t<div class=\"content\">\r\n");
      out.write("\t<div class=\"left\">\r\n");
      out.write("\t<table>\r\n");
      out.write("\t<tr>\r\n");
      out.write("\t<td><a href=\"home.jsp\">Clothing</a></td>\r\n");
      out.write("\t</tr>\r\n");
      out.write("\t<tr>\r\n");
      out.write("\t<td><a href=\"home.jsp\">Shoes</a></td>\r\n");
      out.write("\t</tr>\r\n");
      out.write("\t<tr>\r\n");
      out.write("\t<td><a href=\"home.jsp\">Jewelry</a></td>\r\n");
      out.write("\t</tr>\r\n");
      out.write("\t<tr>\r\n");
      out.write("\t<td><a href=\"home.jsp\">Handbags</a></td>\r\n");
      out.write("\t</tr>\r\n");
      out.write("\t</table>\t\r\n");
      out.write("\t</div>\r\n");
      out.write("\t\r\n");
      out.write("\t<div class=\"middle\">\r\n");
      out.write("\t<table>\r\n");
      out.write("\t<tr>\r\n");
      out.write("\t<td><img src=\"../images/a.jpg\" /></td>\r\n");
      out.write("\t<td><img src=\"../images/a.jpg\" /></td>\r\n");
      out.write("\t</tr>\r\n");
      out.write("\t<tr>\r\n");
      out.write("\t<td><a href=\"home.jsp\">Home</a></td>\r\n");
      out.write("\t<td><a href=\"home.jsp\">Home</a></td>\r\n");
      out.write("\t</tr>\r\n");
      out.write("\t<tr>\r\n");
      out.write("\t<td><img src=\"../images/a.jpg\" /></td>\r\n");
      out.write("\t<td><img src=\"../images/a.jpg\" /></td>\r\n");
      out.write("\t</tr>\r\n");
      out.write("\t<tr>\r\n");
      out.write("\t<td><a href=\"home.jsp\">Home</a></td>\r\n");
      out.write("\t<td><a href=\"home.jsp\">Home</a></td>\r\n");
      out.write("\t</tr>\r\n");
      out.write("\t</table>\r\n");
      out.write("\t</div>\r\n");
      out.write("\t\r\n");
      out.write("\t<div class=\"right\">\r\n");
      out.write("\t<table>\r\n");
      out.write("\t");
 
	String adminid = (String)session.getAttribute("adminid");
	if(adminid == null){
      out.write("\r\n");
      out.write("\t<tr>\r\n");
      out.write("\t<td><a href=\"home.jsp\">Admin</a></td>\r\n");
      out.write("\t</tr>\r\n");
      out.write("\t<tr>\r\n");
      out.write("\t<td><a href=\"home.jsp\">Query</a></td>\r\n");
      out.write("\t</tr>\t\r\n");
      out.write("\t");
}
	else{
      out.write("\r\n");
      out.write("\t<tr>\r\n");
      out.write("\t<td><a href=\"home.jsp\">Admin</a></td>\r\n");
      out.write("\t</tr>\r\n");
      out.write("\t<tr>\r\n");
      out.write("\t<td><a href=\"home.jsp\">Settings</a></td>\r\n");
      out.write("\t</tr>\r\n");
      out.write("\t<tr>\r\n");
      out.write("\t<td><a href=\"home.jsp\">Access</a></td>\r\n");
      out.write("\t</tr>\r\n");
      out.write("\t<tr>\r\n");
      out.write("\t<td><a href=\"home.jsp\">Query</a></td>\r\n");
      out.write("\t</tr>\r\n");
      out.write("\t");
}
      out.write("\r\n");
      out.write("\t</table>\r\n");
      out.write("\t</div>\r\n");
      out.write("\t</div>\r\n");
      out.write("</div>\r\n");
      out.write("</body>\r\n");
      out.write("</html>\r\n");
      out.write("<body>\r\n");
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