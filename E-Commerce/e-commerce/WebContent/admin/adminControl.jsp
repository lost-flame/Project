<%@ page import="java.sql.*"%>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Admin Control Page</title>
<link rel="stylesheet" type="text/css" href="../css/adminControl.css">
</head>
<body>

	<!-- edit or update/ insert or add/ delete
   		 create ( already have a DB in oracle) -->

<div class="layout">
  <div class="heading">Admin Controls</div>
  <div class="inner">
	<table class="insert">
	<form action="adminControlInsertSubmit.jsp" name="insertForm" method="post">
	<tr>
	<td colspan="5">Adding the new products...</td>
	</tr>
	<tr>
	<td>Category</td>
	<td>Sub-Category</td>
	<td>Quantity</td>
	<td>Price</td>
	</tr>
	<tr>
	<td><input type="text" name="insertCategory" id="insertCategory"></td>
	<td><input type="text" name="insertSubCategory" id="insertSubCategory"></td>
	<td><input type="text" name="insertQuantity" id="insertQuantity" maxlength="30"/></td>
	<td><input type="text" name="insertPrice" id="insertPrice" maxlength="30"/></td>
	<td><input type="submit" value="Insert"></td>	
	</tr>
	</form>
	</table>
	
	<table class="insert">
	<form action="imageEpid.jsp" name="imageForm" method="post">
	<tr>
	<td colspan="5">Adding the image to the new products...</td>
	</tr>
	<tr>
	<td>Epid</td>
	</tr>
	<tr>
	<td><input type="text" name="epid" id="epid" maxlength="30"/></td>
	<td><input type="submit" value="Next"/></td>	
	</tr>
	</form>
	</table>
	
	<table class="insert">
	<form action="dataEpid.jsp" name="imageForm" method="post">
	<tr>
	<td colspan="5">Adding the data to the new products...</td>
	</tr>
	<tr>
	<td>Epid</td>
	<td>Data</td>
	</tr>
	<tr>
	<td><input type="text" name="epid" id="epid" maxlength="30"/></td>
	<td><input type="text" name="data" id="data"/></td>
	<td><input type="submit" value="Insert"/></td>
	</tr>
	</form>
	</table>
	
	<div>
	<table class="update">
	<form action="adminControlUpdateSubmit.jsp" name="updateForm" method="post">
	<tr>
	<td colspan="6">Details of the existing products...</td>
	</tr>
	<tr>
	<td>Epid</td>
	<td>Category</td>
	<td>Sub-Category</td>
	<td>Quantity</td>
	<td>Price</td>
	<td>Image</td>
	</tr>
<%	
	String adminid = (String)session.getAttribute("adminid");
	try{
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","nikhil");
	
	PreparedStatement ps = con.prepareStatement("select * from eproducts");
	ResultSet rs = ps.executeQuery();
while(rs.next()){
%>	<tr>
	<td><%=rs.getString(1)%></td>
	<td><%=rs.getString(2)%></td>
	<td><%=rs.getString(3)%></td>
	<td><%=rs.getString(4)%></td>
	<td><%=rs.getString(5)%></td>
	<td><%=rs.getString(6)%></td>
	</tr>
<%}%>
	<tr>
	<td colspan="6">Updating the changes in the existing products...</td>
	</tr>
	<tr>
	<td>Epid</td>
	<td>Category</td>
	<td>Sub-Category</td>
	<td>Quantity</td>
	<td>Price</td>
	</tr>
	<tr>
	<td><input type="text"  name="updateEpid" id="updateEpid" maxlength="30"></td>
	<td><input type="text"  name="updateCategory" id="updateCategory"></td>
	<td><input type="text"  name="updateSubCategory" id="updateSubCategory"></td>
	<td><input type="text"  name="updateQuantity" id="updateQuantity" maxlength="30"></td>
	<td><input type="text"  name="updatePrice" id="updatePrice" maxlength="30"></td>	
	<td><input type="submit" value="Update"/></td>	
	</tr>
	</form>
	</table>
	</div>
	
	<table class="delete">
	<form action="adminControlDeleteSubmit.jsp" name="deleteForm" method="post">
	<tr>
	<td colspan="3">Deleting the existing product...</td>
	</tr>
	<tr>
	<td>Epid</td>
	<td><input type="text"  name="deleteEpid" id="deleteEpid" maxlength="30"></td>
	<td><input type="submit" value="Delete"/></td>
	</tr>
	</form>
<%
} 
catch(Exception e){
	System.out.println(e);
}
%>
	<tr>
	<td colspan="3"><a href="access.jsp">Go Back</a></td>
	</tr>
	</table>	
  </div>	
</div>
</body>
</html>