/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/8.0.9
 * Generated at: 2022-03-04 14:57:39 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class Assassin_0027s_0020Creed_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<title>Assassin's Creed</title>\r\n");
      out.write("<script src=\"games.js\"></script>\r\n");
      out.write("<link rel=\"stylesheet\" type=\"text/css\" href=\"games.css\">\r\n");
      out.write("</head>\r\n");
      out.write("<body >\r\n");
      out.write("\r\n");
      out.write("<div class=\"table\">\r\n");
      out.write("<table class=\"table1\" cellpadding=\"10\" align=\"center\" border=2px>\r\n");
      out.write("<td> <a href=\"aboutUs.jsp\">Home</a> </td> \r\n");
      out.write("\r\n");

String id = (String)session.getAttribute("id");
if(id==null){

      out.write("\r\n");
      out.write("<td> <a href=\"signUp.jsp\">Sign-Up</a> </td>\r\n");
      out.write("<td> <a href=\"login.jsp\">Log-In</a> </td>\r\n");

}
else{

      out.write("\r\n");
      out.write("<td> <a> Game Inventory</a> </td>\r\n");
      out.write("<td> <a href=\"update.jsp\">Account</a> </td>\r\n");
      out.write("<td> <a href=\"logout.jsp\">Log-Out</a> </td>\r\n");
} 
      out.write("\r\n");
      out.write("</tr>\r\n");
      out.write("</table>\r\n");
      out.write("</div>\r\n");
      out.write("\r\n");
      out.write("<div class=\"left\">\r\n");
      out.write("<table class=\"table2\" border=2px>\r\n");
      out.write("<tr>\r\n");
      out.write("<td align=\"center\" style=\"text-decoration:none; color:white;\"><b>Genres</b></td>\r\n");
      out.write("</tr>\r\n");
      out.write("<tr>\r\n");
      out.write("<td align=\"center\"><a href=\"aboutUs.jsp\">Action</a></td>\r\n");
      out.write("</tr>\r\n");
      out.write("<tr>\r\n");
      out.write("<td align=\"center\"><a href=\"adventure.jsp\">Adventure</a></td>\r\n");
      out.write("</tr>\r\n");
      out.write("<tr>\r\n");
      out.write("<td align=\"center\"><a href=\"strategy.jsp\">Strategy</a></td>\r\n");
      out.write("</tr>\r\n");
      out.write("<tr>\r\n");
      out.write("<td align=\"center\"><a href=\"survival.jsp\">Survival</a></td>\r\n");
      out.write("</tr>\r\n");
      out.write("<tr>\r\n");
      out.write("<td align=\"center\"><a href=\"horror.jsp\">Horror</a></td>\r\n");
      out.write("</tr>\r\n");
      out.write("<tr>\r\n");
      out.write("<td align=\"center\"><a href=\"shooting.jsp\">Shooting</a></td>\r\n");
      out.write("</tr>\r\n");
      out.write("</table>\r\n");
      out.write("</div>\r\n");
      out.write("\r\n");
      out.write("<form action=\"add.jsp\" onsubmit=\"return call()\" method=\"post\">\r\n");
      out.write("<input type=\"hidden\" name=\"gameName\" value=\"Assassins Creed\"/>\r\n");
      out.write("<div class=\"center\">\r\n");
      out.write("</br>\r\n");
      out.write("<img src=\"ac.webp\">\r\n");
      out.write("<p style=\"font-size:24px;\">\r\n");
      out.write("Assassin's Creed is an action-adventure stealth video game franchise created by Patrice Désilets, Jade Raymond and Corey May, developed and published by Ubisoft using the game engine Anvil\r\n");
      out.write("and its more advanced derivatives. It depicts a centuries-old struggle, now and then, between\r\n");
      out.write("the Assassins, who fight for peace with free will, and the Templars, who desire peace\r\n");
      out.write("through control. The series features historical fiction, science fiction and characters, \r\n");
      out.write("intertwined with real-world historical events and figures. For the majority of time players \r\n");
      out.write("would control an Assassin in the past history, while they also play as Desmond Miles or an \r\n");
      out.write("Assassin Initiate in the present day, who hunt down their Templar targets.\r\n");
      out.write("</p>\r\n");
      out.write("</br>\r\n");
      out.write("<center><iframe width=\"600\" height=\"400\" src=\"https://www.youtube.com/embed/ouwusBhFnPw?autoplay=1\">\r\n");
      out.write("</iframe></center>\r\n");
      out.write("</br>\t\r\n");
      out.write("<span class=\"span1\">Price: Rs.900</span>\r\n");
      out.write("<input type=\"hidden\" name=\"price\" value=\"900\"/>\r\n");
      out.write("<input type=\"submit\" value=\"Purchase\"/>\r\n");
      out.write("<span class=\"span2\">Quantity<input type=\"text\" id=\"quantity\" name=\"quantity\" required maxlength=1 size=1/></span>\r\n");
      out.write("</div>\r\n");
      out.write("</form>\r\n");
      out.write("\r\n");
      out.write("</body>\r\n");
      out.write("</html>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
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
