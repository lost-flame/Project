/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/8.0.9
 * Generated at: 2023-05-19 09:15:26 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.user;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class men_0027s_0020fashion_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write("\r\n");
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
      out.write("\t<li><a href=\"home.jsp\">Home</a></li>\r\n");
      out.write("\t<div class=\"searchBox\">\r\n");
      out.write("\t<input type=\"search\" size=\"47\" name=\"searchbox\" id=\"searchbox\" placeholder=\"searching...\" align=\"center\"/>\r\n");
      out.write("\t<button onclick=\"window.location.href = '../user/searchboxSubmit.jsp';\">Search</button>\r\n");
      out.write("\t</div>\r\n");
      out.write("\t");
 
	String userid = (String)session.getAttribute("userid");
	if(userid == null){
      out.write("\r\n");
      out.write("\t<li><a href=\"signupPage.jsp\">Sign Up</a></li>\r\n");
      out.write("\t");
}
	else{
      out.write("\r\n");
      out.write("\t<div class=\"dropdown\">\r\n");
      out.write("\t<div class=\"dropdownButton\">User</div>\r\n");
      out.write("\t<div class=\"dropdownContent\">\r\n");
      out.write("\t<a href=\"updatePage.jsp\">Account</a>\r\n");
      out.write("\t<a href=\"cartPage.jsp\">Cart</a>\r\n");
      out.write("\t<a href=\"logoutPage.jsp\">Log Out</a>\r\n");
      out.write("\t</div>\r\n");
      out.write("\t</div>\r\n");
      out.write("\t");
}
      out.write("\r\n");
      out.write("\t<li><a href=\"../admin/loginPage.jsp\" target=\"_blank\">Admin</a></li>\r\n");
      out.write("\t</ul>\r\n");
      out.write("\t</nav>\r\n");
      out.write("\t</div>\r\n");
      out.write("\t\r\n");
      out.write("\t<div class=\"content\">\r\n");
      out.write("\t<div class=\"left\">\r\n");
      out.write("\t<table>\r\n");

	String email = request.getParameter("email");
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","nikhil");
	
	PreparedStatement ps =con.prepareStatement("select gender from euser");
	ResultSet rs = ps.executeQuery();

while(rs.next())
{
	String getQueryResult = rs.getString(1);

      out.write("\r\n");
      out.write("\t<tr>\r\n");
      out.write("\t<td>\r\n");
      out.write("\t<div class=\"categoryDropdown\">\t\r\n");
      out.write("\t<div class=\"categoryDropdownButton\">");
      out.print(rs.getString(1));
      out.write("</div>\r\n");
      out.write("\t<div class=\"categoryDropdownContent\">\r\n");

	/*ps =con.prepareStatement("select esubcategory from euser where ecategory=?");
	ps.setString(1, getQueryResult);
	rs = ps.executeQuery();*/
	ps =con.prepareStatement("select email from euser");
	ResultSet rs1 = ps.executeQuery();//query will repeat until above query finished exceuted 
	while(rs1.next())
	{
      out.write("\t\r\n");
      out.write("\t<a href=\"updatePage.jsp\">");
      out.print(rs1.getString(1));
      out.write("</a>\r\n");
      out.write("\t");
}
      out.write("\r\n");
      out.write("\t</div>\r\n");
      out.write("\t</div>\r\n");
      out.write("\t</td>\r\n");
      out.write("\t</tr>\r\n");
} 
      out.write("\r\n");
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
      out.write("\t<tr>\r\n");
      out.write("\t<td><a href=\"../admin/feedback.jsp\">Feedback</a></td>\r\n");
      out.write("\t</tr>\r\n");
      out.write("\t<tr>\r\n");
      out.write("\t<td><a href=\"home.jsp\">Query</a></td>\r\n");
      out.write("\t</tr>\r\n");
      out.write("\t</table>\r\n");
      out.write("\t</div>\r\n");
      out.write("\t</div>\r\n");
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
