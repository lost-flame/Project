/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/8.0.9
 * Generated at: 2023-04-26 09:22:06 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class hehe_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<style>\r\n");
      out.write("* {\r\n");
      out.write("\tbox-sizing: border-box;\r\n");
      out.write("\tfont-family: consolas;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("body {\r\n");
      out.write("\tmargin: 0;\r\n");
      out.write("\tpadding: 0;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write(".layout {\r\n");
      out.write("\tbackground-color: teal;\r\n");
      out.write("\tmax-width: 100vw;\r\n");
      out.write("\theight: 100vh;\r\n");
      out.write("\toverflow: auto;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write(".layout .top {\r\n");
      out.write("\tbackground-color: lime;\r\n");
      out.write("\twidth: 67vw;\r\n");
      out.write("\theight: 9vh;\r\n");
      out.write("\tposition: relative;\r\n");
      out.write("\tmargin: auto;\r\n");
      out.write("\ttop: -1rem;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write(".layout .top nav ul {\r\n");
      out.write("\tdisplay: flex;\r\n");
      out.write("\tflex-direction: row;\r\n");
      out.write("\tpadding: 1rem;\r\n");
      out.write("\tjustify-content: space-around;\r\n");
      out.write("\tlist-style: none;\r\n");
      out.write("\tfont-size: 2vw;\r\n");
      out.write("\tflex-wrap: wrap;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write(".layout .top nav ul li:hover {\r\n");
      out.write("\tcursor: pointer;\r\n");
      out.write("\tbackground: #0080c0;\r\n");
      out.write("\tcolor: black;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write(".layout .top nav ul a {\r\n");
      out.write("\ttext-decoration: none;\r\n");
      out.write("\tfont-size: 1.8vw;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write(".layout .top nav .searchBox input[type=search] {\r\n");
      out.write("\tmax-width: 12vw;\r\n");
      out.write("\tfont-size: 1.2vw;\r\n");
      out.write("\tborder-radius: 10px;\r\n");
      out.write("\theight: 3.5vh;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write(".layout .top nav .searchBox ::placeholder {\r\n");
      out.write("\tfont-size: 1vw;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write(".layout .top nav button {\r\n");
      out.write("\twidth: 4vw;\r\n");
      out.write("\tfont-size: 1vw;\r\n");
      out.write("\tfont-weight: lighter;\r\n");
      out.write("\tborder-radius: 22px;\r\n");
      out.write("\tbackground-color: #00ff40;\r\n");
      out.write("\theight: 3.1vh;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write(".layout .top nav button:hover {\r\n");
      out.write("\tcursor: pointer;\r\n");
      out.write("\tbackground: #0080c0;\r\n");
      out.write("\tcolor: black;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("@media only screen and (max-width: 1342px) , ( max-height : 561px) , (\r\n");
      out.write("\t\tmax-width : 266px) {\r\n");
      out.write("\t.layout .top {\r\n");
      out.write("\t\tbackground-color: lime;\r\n");
      out.write("\t\tmax-width: 252px;\r\n");
      out.write("\t\theight: 217px;\r\n");
      out.write("\t\tmargin: auto;\r\n");
      out.write("\t\ttext-align: center;\r\n");
      out.write("\t\theight: 217px;\r\n");
      out.write("\t\tmargin: auto;\r\n");
      out.write("\t}\r\n");
      out.write("\t.layout .top nav ul {\r\n");
      out.write("\t\tdisplay: block;\r\n");
      out.write("\t\tpadding: 15px;\r\n");
      out.write("\t\tfont-size: 25px;\r\n");
      out.write("\t}\r\n");
      out.write("\t.layout .top nav .searchBox input[type=\"search\"] {\r\n");
      out.write("\t\twidth: 159px;\r\n");
      out.write("\t\tfont-size: 11px;\r\n");
      out.write("\t\tborder-radius: 10px;\r\n");
      out.write("\t\theight: 22.5px;\r\n");
      out.write("\t\tfont-size: 11px;\r\n");
      out.write("\t\tborder-radius: 10px;\r\n");
      out.write("\t}\r\n");
      out.write("\t.layout .top nav button {\r\n");
      out.write("\t\tmax-width: 4vw;\r\n");
      out.write("\t}\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write(".content {\r\n");
      out.write("\tmax-width: 79vw;\r\n");
      out.write("\tbackground-color: khaki;\r\n");
      out.write("\tdisplay: flex;\r\n");
      out.write("\tflex-direction: row;\r\n");
      out.write("\tjustify-content: space-between;\r\n");
      out.write("\theight: 84.4vh;\r\n");
      out.write("\tflex-wrap: wrap;\r\n");
      out.write("\tmargin: 0.5rem;\r\n");
      out.write("\tposition: relative;\r\n");
      out.write("\tleft: 10rem;\r\n");
      out.write("\ttop: -0.5rem;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("@media only screen and (max-width: 1498px) {\r\n");
      out.write("\t.content {\r\n");
      out.write("\t\tmax-width: 99vw;\r\n");
      out.write("\t\ttop: -0.5rem;\r\n");
      out.write("\t\tleft: 0rem;\r\n");
      out.write("\t}\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write(".content::-webkit-scrollbar {\r\n");
      out.write("\tdisplay: none;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write(".left {\r\n");
      out.write("\tmax-width: 11rem;\r\n");
      out.write("\tfont-size: 1.2vw;\r\n");
      out.write("\tbackground-color: orange;\r\n");
      out.write("\theight: 84.4vh;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write(".left table {\r\n");
      out.write("\theight: 84.4vh;\r\n");
      out.write("\twidth: 11.5vw;\r\n");
      out.write("\ttext-align: center;\r\n");
      out.write("\tfont-size: 1.7vw;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write(".left table a {\r\n");
      out.write("\ttext-decoration: none;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write(".left table td:hover, .left table a:hover {\r\n");
      out.write("\tbackground-color: aqua;\r\n");
      out.write("\tcolor: fuchsia;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write(".middle {\r\n");
      out.write("\t/*width: 49rem;*/\r\n");
      out.write("\tfont-size: 1.2vw;\r\n");
      out.write("\t/*background-color: red;*/\r\n");
      out.write("\theight: 84.4vh;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write(".middle table {\r\n");
      out.write("\theight: 84.4vh;\r\n");
      out.write("\t/*border-right: 2px;*/\r\n");
      out.write("\tmax-width: 11rem;\r\n");
      out.write("\ttext-align: center;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write(".middle table a {\r\n");
      out.write("\ttext-decoration: none;\r\n");
      out.write("\tfont-size: 1.2vw;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write(".middle table tr td:hover, .middle table a:hover {\r\n");
      out.write("\tbackground-color: aqua;\r\n");
      out.write("\tcolor: fuchsia;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("/*.categoryName {\r\n");
      out.write("\tvisibility: collapse;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write(".middle table tr:hover+.categoryName {\r\n");
      out.write("\tvisibility: visible;\r\n");
      out.write("\tcolor: green;\r\n");
      out.write("}\r\n");
      out.write("*/\r\n");
      out.write(".middle img {\r\n");
      out.write("\tmax-width: 25.1vw;\r\n");
      out.write("\theight: 38vh;\r\n");
      out.write("\tpadding: 0.5rem;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write(".right {\r\n");
      out.write("\tmax-width: 11rem;\r\n");
      out.write("\tfont-size: 1.2vw;\r\n");
      out.write("\tbackground-color: orange;\r\n");
      out.write("\theight: 84.4vh;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write(".right table {\r\n");
      out.write("\theight: 84.4vh;\r\n");
      out.write("\twidth: 11.5vw;\r\n");
      out.write("\ttext-align: center;\r\n");
      out.write("\tfont-size: 1.7vw;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write(".right table a {\r\n");
      out.write("\ttext-decoration: none;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write(".right table td:hover, .right table a:hover {\r\n");
      out.write("\tbackground-color: aqua;\r\n");
      out.write("\tcolor: fuchsia;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("@media only screen and (max-width: 752px) {\r\n");
      out.write("\t.content {\r\n");
      out.write("\t\tjustify-content: center;\r\n");
      out.write("\t}\r\n");
      out.write("\t.left table {\r\n");
      out.write("\t\tfont-size: 4vw;\r\n");
      out.write("\t\twidth: 24vw;\r\n");
      out.write("\t}\r\n");
      out.write("\t.middle {\r\n");
      out.write("\t\tmax-width: 92rem;\r\n");
      out.write("\t}\r\n");
      out.write("\t/*.middle table {\r\n");
      out.write("\t\theight: 84.4vh;\r\n");
      out.write("\t\tborder-right: 2px;\r\n");
      out.write("\t\twidth: 36rem;\r\n");
      out.write("\t}*/\r\n");
      out.write("\t.middle table tr td:hover, .middle table a:hover {\r\n");
      out.write("\t\tbackground-color: aqua;\r\n");
      out.write("\t\tcolor: fuchsia;\r\n");
      out.write("\t}\r\n");
      out.write("\t.middle img {\r\n");
      out.write("\t\tmax-width: 37.1vw;\r\n");
      out.write("\t}\r\n");
      out.write("\t.right table {\r\n");
      out.write("\t\tfont-size: 4vw;\r\n");
      out.write("\t\twidth: 24vw;\r\n");
      out.write("\t}\r\n");
      out.write("}\r\n");
      out.write("</style>\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("<div class=\"layout\">\r\n");
      out.write("\t<div class=\"top-space\"></div>\r\n");
      out.write("\t<div class=\"top\">\r\n");
      out.write("\t<nav>\r\n");
      out.write("\t<ul>\r\n");
      out.write("\t<li><a href=\"home.jsp\">Home</a></li>\r\n");
      out.write("\t<li><a href=\"home.jsp\">Electronics</a></li>\r\n");
      out.write("\t<li><a href=\"home.jsp\">Utensils</a></li>\r\n");
      out.write("\t<li><a href=\"home.jsp\">Accessories</a></li>\r\n");
      out.write("\t<div class=\"searchBox\">\r\n");
      out.write("\t<input type=\"search\" name=\"searchbox\" id=\"searchbox\" placeholder=\"searching...\" align=\"center\"/>\r\n");
      out.write("\t<button onclick=\"window.location.href = '../jsp/searchboxSubmit.jsp';\">Search</button>\r\n");
      out.write("\t</div>\r\n");
      out.write("\t<li><a href=\"home.jsp\">Sign-In</a></li>\r\n");
      out.write("\t</ul>\r\n");
      out.write("\t</nav>\r\n");
      out.write("\t</div>\r\n");
      out.write("\t\r\n");
      out.write("\t<div class=\"content\">\r\n");
      out.write("\t<div class=\"left\">\r\n");
      out.write("\t<table>\r\n");
      out.write("\t<tr>\r\n");
      out.write("\t<td><a href=\"home.jsp\">Laptop Accessories</a></td>\r\n");
      out.write("\t</tr>\r\n");
      out.write("\t<tr>\r\n");
      out.write("\t<td><a href=\"home.jsp\">Headphones</a></td>\r\n");
      out.write("\t</tr>\r\n");
      out.write("\t<tr>\r\n");
      out.write("\t<td><a href=\"home.jsp\">Game Consoles</a></td>\r\n");
      out.write("\t</tr>\r\n");
      out.write("\t<tr>\r\n");
      out.write("\t<td><a href=\"home.jsp\">Home Audio</a></td>\r\n");
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
