/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/8.0.9
 * Generated at: 2023-04-30 16:01:29 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class mainCategoryPage_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<title>Category Page</title>\r\n");
      out.write("<head>\r\n");
      out.write("<link rel=\"stylesheet\" type=\"text/css\" href=\"../css/category.css\">\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("<div class=\"layout\">\r\n");
      out.write("\t<div class=\"menu\">\r\n");
      out.write("\t<table>\r\n");
      out.write("  \t<tr>\r\n");
      out.write("  \t<td><a href=\"home.jsp\">Home</a></td>\r\n");
      out.write("  \t<td><a href=\"outside.jsp\">Outside</a></td>\r\n");
      out.write("  \t<td><a href=\"work.js\">Work</a></td>\r\n");
      out.write("  \t<td><a href=\"leave.js\">Leave</a></td>\r\n");
      out.write("  \t<td><a href=\"#comeback.js\">Comeback</a></td>\r\n");
      out.write("  \t<td>\r\n");
      out.write("  \t<div class=\"searchbox\">\r\n");
      out.write("\t<table style=\"text-align:center;\">\r\n");
      out.write("\t<tr>\r\n");
      out.write("\t<td><input type=\"search\" name=\"searchBox\" id=\"searchBox\" placeholder=\"searching...\" align=\"center\"/></td>\r\n");
      out.write("\t<td style=\"font-size: x-small;\"><button onclick=\"window.location.href = '../jsp/searchboxSubmit.jsp';\">Search</button></td>\r\n");
      out.write("\t</tr>\r\n");
      out.write("\t</table>\r\n");
      out.write("  \t</div>\r\n");
      out.write("  \t</td>\r\n");
      out.write("  \t</tr>\r\n");
      out.write("\t</table>\r\n");
      out.write("\t</div>\r\n");
      out.write("\t<div class=\"outside\">\r\n");
      out.write("\t<div class=\"content\">\r\n");
      out.write("\t<table>\r\n");
      out.write("\t<tr>\r\n");
      out.write("\t<td><img src=\"../images/dbx2.jpeg\"/></td>\r\n");
      out.write("\t<td><img src=\"../images/ac.webp\"/></td>\r\n");
      out.write("\t<td><img src=\"../images/dbx2.jpeg\"/></td>\r\n");
      out.write("\t</tr>\r\n");
      out.write("\t<tr>\r\n");
      out.write("\t<td><a href=\"#home\">Home</a></td>\r\n");
      out.write("\t<td><a href=\"#home\">Home</a></td>\r\n");
      out.write("\t<td><a href=\"#home\">Home</a></td>\r\n");
      out.write("\t</tr>\r\n");
      out.write("\t<tr>\r\n");
      out.write("\t<td><img src=\"../images/ac.webp\"/></td>\r\n");
      out.write("\t<td><img src=\"../images/dbx2.jpeg\"/></td>\r\n");
      out.write("\t<td><img src=\"../images/ac.webp\"/></td>\r\n");
      out.write("\t</tr>\r\n");
      out.write("\t<tr>\r\n");
      out.write("\t<td><a href=\"#home\">Home</a></td>\r\n");
      out.write("\t<td><a href=\"#home\">Home</a></td>\r\n");
      out.write("\t<td><a href=\"#home\">Home</a></td>\r\n");
      out.write("\t</tr>\r\n");
      out.write("\t</table>\r\n");
      out.write("\t</div>\r\n");
      out.write("\t</div>\r\n");
      out.write("</div>\r\n");
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
