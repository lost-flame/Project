<%@page import="java.sql.*" %>
<%
try{
	String query = request.getParameter("query");
	String email = (String)session.getAttribute("userid");
	
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","nikhil");
	
	PreparedStatement ps =con.prepareStatement("insert into equery values(qid.nextval,?,?)");
	ps.setString(1, email);
	ps.setString(2, query);
	ps.executeUpdate();
	
	con.close();
	response.sendRedirect("../user/home.jsp");
}
catch(Exception e){
	System.out.println(e);
}
%>