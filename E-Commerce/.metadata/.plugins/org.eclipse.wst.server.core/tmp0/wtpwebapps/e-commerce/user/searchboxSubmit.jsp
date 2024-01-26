<%@page import="java.sql.*" %>
<html>
<body>
<%
	String searchBox = request.getParameter("searchbox");
try
{
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","nikhil");
	PreparedStatement ps = con.prepareStatement("select subcategory from eproducts where subcategory=?");
	ps.setString(1, searchBox);
	ResultSet rs = ps.executeQuery();
if(rs.next())
{	
	response.sendRedirect("./subCategory.jsp?scn="+searchBox);
}
else
{
%>
	<script>
	alert("subcategory not found...");
	setTimeout(function() { window.location.href = '../user/home.jsp'; } , 100);
	</script>
<%
}
}
catch(Exception e)
{
	System.out.println(e);
}
%>
</body>
</html>