/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/8.0.9
 * Generated at: 2022-03-08 18:28:48 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;
import java.lang.*;

public final class add_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("<title>Games Details</title>\r\n");
      out.write("<style>\r\n");
      out.write("\r\n");
      out.write("body\r\n");
      out.write("{\r\n");
      out.write(" background:url(3.jpg);\r\n");
      out.write(" background-size:cover;\r\n");
      out.write(" background-position:center;\r\n");
      out.write(" background-attachment: fixed;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("div\r\n");
      out.write("{\r\n");
      out.write("    background:rgba(0,0,0,0.5);\r\n");
      out.write("    width:70%;\r\n");
      out.write("    font-size:30px;\r\n");
      out.write("    height:72px;\r\n");
      out.write("    color:white;\r\n");
      out.write("    margin-top:336px;\r\n");
      out.write("}\r\n");
      out.write("a\r\n");
      out.write("{\r\n");
      out.write("\tbackground:rgba(0,0,0,0.5);\r\n");
      out.write("    width:70%;\r\n");
      out.write("    font-size:30px;\r\n");
      out.write("    height:72px;\r\n");
      out.write("    color:white;\r\n");
      out.write("    text-decoration:none;\r\n");
      out.write("}\r\n");
      out.write("a:hover\r\n");
      out.write("{\r\n");
      out.write("\tcolor:yellow;\r\n");
      out.write("}\r\n");
      out.write(".center\r\n");
      out.write("{\r\n");
      out.write("    height:672px;\r\n");
      out.write("    overflow: scroll;\r\n");
      out.write("}\r\n");
      out.write("</style>\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("<center>\r\n");
      out.write("\r\n");

String gameName = request.getParameter("gameName");
session.setAttribute("gameName",gameName);

String price = request.getParameter("price");

String quantity = request.getParameter("quantity");
session.setAttribute("quantity",quantity);
int quantity1 = Integer.parseInt(quantity);


int price1 = Integer.parseInt(price) * Integer.parseInt(quantity);
String price2=String.valueOf(price1);
session.setAttribute("price2",price2);
String stock1="";
String hold="";

try
{
	String id = (String)session.getAttribute("id");
	if(id == null){
      out.write("\r\n");
      out.write("\t\t<div>   \r\n");
      out.write("\t\t  ");
      out.print("Please Log Into The Account");
      out.write("\r\n");
      out.write("\t\t  <br>\r\n");
      out.write("\t\t  <a href=\"aboutUs.jsp\">Home</a>\r\n");
      out.write("\t\t  </br>\r\n");
      out.write("\t\t  </div> \r\n");
      out.write("\t");
}
	
Class.forName("oracle.jdbc.driver.OracleDriver");
Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","nikhil");

PreparedStatement ps1 = con.prepareStatement("select STOCK from GAME where G_NAME=?");
ps1.setString(1, gameName);
ResultSet rs = ps1.executeQuery();
rs.next();

String stockDb = rs.getString(1);

if(stockDb.equals("Out of Stock")){
	  stock1="Out of Stock";
	  session.setAttribute("stock1",stock1);
}
else {
int stock = Integer.parseInt(stockDb);

	 if(stock == 0){
		 
      out.write("\r\n");
      out.write("\r\n");
      out.write("   \t  <div>   \r\n");
      out.write("   \t   \t  ");
      out.print("Out of Stock");
      out.write("  \r\n");
      out.write("   \t      \t  <br>\r\n");
      out.write("   \t      ");
 	 hold="Hold";   
      out.write("\r\n");
      out.write("   \t            \r\n");
      out.write("   \t      \t  </br>\r\n");
      out.write("   \t      \t  </div>\r\n");
      out.write("   \t  ");
 
	  stock1="Out of Stock";
	  session.setAttribute("stock1",stock1);
	 }
      else if(stock <quantity1){
    	  
      out.write("\r\n");
      out.write("\r\n");
      out.write("    \t  <div>   \r\n");
      out.write("    \t   \t  ");
      out.print("Limited Stock of "+gameName+" Game : "+stock);
      out.write("  \r\n");
      out.write("    \t      \t  <br>\r\n");
      out.write("    \t      ");
 	 hold="Hold";   
      out.write("\r\n");
      out.write("    \t            \r\n");
      out.write("    \t      \t  </br>\r\n");
      out.write("    \t      \t  </div>\r\n");
      out.write("    \t  ");
   stock1=String.valueOf(stock);
    	  session.setAttribute("stock1",stock1);   
      }
      else if(stock >=quantity1){
    	  int totalStock = stock - quantity1;
    	  stock1=String.valueOf(totalStock);
    	  session.setAttribute("stock1",stock1);
      }
}   
    	  

String totalStock1 = (String)session.getAttribute("stock1");

PreparedStatement ps =con.prepareStatement("UPDATE GAME SET STOCK =? Where G_NAME=?");
ps.setString(1, totalStock1);
ps.setString(2, gameName);
ps.executeUpdate();
if(hold.equals("Hold")){  // if quantity of game(input user) is more than 
	                      // stock(in database value)


      out.write(" \r\n");
      out.write("<br>\r\n");
      out.write("<a href=\"aboutUs.jsp\">Home</a>\r\n");
      out.write("</br>\r\n");
}
else if(stock1.equals("Out of Stock")){

      out.write("\t<div>   \r\n");
      out.write("\t  ");
      out.print("Out of Stock");
      out.write("\r\n");
      out.write("\t  <br>\r\n");
      out.write("\t  <a href=\"aboutUs.jsp\">Home</a>\r\n");
      out.write("\t  </br>\r\n");
      out.write("\t  </div>   \r\n");
}
else{   // if stock(in database value) is more than quantity of game(input user) 
	response.sendRedirect("purchase.jsp");
con.close();
}
 

      out.write("\r\n");
      out.write("<!--    if game is out of stock then print this, (no need)for now it is in comment\r\n");
      out.write("<div>   \r\n");
      out.write("    \t  ");
      out.print("Out of Stock");
      out.write("\r\n");
      out.write("    \t  <br>\r\n");
      out.write("    \t  <a href=\"aboutUs.jsp\">Home</a>\r\n");
      out.write("    \t  </br>\r\n");
      out.write("    \t  </div>   \r\n");
      out.write("-->    \t  \r\n");

}
catch(NumberFormatException e){
	out.println(e);
}
catch(Exception e){
	out.println(e);
}

      out.write("\r\n");
      out.write("</center>\r\n");
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
