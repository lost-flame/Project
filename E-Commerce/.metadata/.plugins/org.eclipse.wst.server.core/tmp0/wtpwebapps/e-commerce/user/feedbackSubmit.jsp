<%@page import="java.sql.*" %>
<%
try{
	String feedback = request.getParameter("feedback");
	String email = (String)session.getAttribute("userid");
	
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","nikhil");
	
	PreparedStatement ps =con.prepareStatement("insert into efeedback values(fid.nextval,?,?)");
	ps.setString(1, email);
	ps.setString(2, feedback);
	ps.executeUpdate();
	
	con.close();
	response.sendRedirect("../user/home.jsp");
}
catch(Exception e){
	System.out.println(e);
}	
%>