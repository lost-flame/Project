<%@ page import="java.sql.*"%>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" type="text/css" href="../css/category.css">
</head>
<body>
<div class="layout">
	<div class="top-space"></div>
	<div class="top">
	<nav>
	<ul>
	<li><a href="home.jsp">Home</a></li>
	<div class="searchBox">
	<form action="../user/searchboxSubmit.jsp">
	<input type="search" size="47" name="searchbox" id="searchbox" placeholder="searching..." align="center"/>
	<input type="submit" value="Search"/>
	</form>
	</div>
	<% 
try{
	String userid = (String)session.getAttribute("userid");
	if(userid == null){%>
	<li><a href="signupPage.jsp">Sign Up</a></li>
	<%}
	else{%>
	<div class="dropdown">
	<div class="dropdownButton">User</div>
	<div class="dropdownContent">
	<a href="../user/updatePage.jsp">Account</a>
	<a href="../user/cart.jsp">Cart</a>
	<a href="../user/logoutPage.jsp">Log Out</a>
	</div>
	</div>
	<%}%>
	<li><a href="../admin/loginPage.jsp" target="_blank">Admin</a></li>
	</ul>
	</nav>
	</div>

	<div class="content">
	<div class="left">
	<table>
<%
	String email = request.getParameter("email");
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","nikhil");
	
	PreparedStatement ps =con.prepareStatement("select distinct category from eproducts");
//	using Distinct sql because it will remove repitition(display on webpage) from database of category coulmn	
	ResultSet categoryResultSet = ps.executeQuery();
	
	String categoryName = "";
	String subCategoryName = "";
	
while(categoryResultSet.next())
{ 	
	categoryName = categoryResultSet.getString(1);
%>
	<tr>
	<td>
	<div class="categoryDropdown">	
	<div class="categoryDropdownButton">
	<a href="category.jsp?cn=<%=categoryName%>"><%=categoryName%></a>
	<%-- here i used URL Rewriting because when user open the link 
	     it will pass the name of the category to the current page 
	     and display all the subcategory name and their images --%>	
	</div>
	<div class="categoryDropdownContent">
<%
	PreparedStatement ps1 =con.prepareStatement("select subcategory from eproducts where category=?");
	ps1.setString(1, categoryName);
	ResultSet subCategoryResultSet = ps1.executeQuery();
	//query will repeat until above query finished exceuted 
	while(subCategoryResultSet.next())
	{	
		subCategoryName = subCategoryResultSet.getString(1);
	//	System.out.println(i+" "+categoryName+" "+subCategoryName);
	%>	
	<a href="subCategory.jsp?scn=<%=subCategoryName%>"><%=subCategoryName%></a>
	<%-- here i used URL Rewriting because when user open the link 
	     it will pass the name of the subcategory as well to the 
	     next page --%> 
	<%}%>
	</div>
	</div>
	</td>
	</tr>
<% } %>
	</table>	
	</div>
<%
	String cn=request.getParameter("cn");
	System.out.println(cn);
	String uploadPath = "";
	
	PreparedStatement ps2 =con.prepareStatement("select image from eproducts where category=?");
	ps2.setString(1, cn);
	ResultSet scnResultSet = ps2.executeQuery();

	int columnCount = 0;
%>	
<%-- getting cn value to display the image and subcategory name on the table --%>
	<div class="middle">
	<table>
	<tr>
<% while(scnResultSet.next()){%>
	<%-- <tr>
	<td><img src="../images/a.jpg" /></td>
	<td><img src="../images/a.jpg" /></td>
	</tr>
	<tr>
	<td><a href="home.jsp"><%=cnResultSet.getString("subcategory")%></a></td>
	<td><a href="home.jsp"><%=cnResultSet.getString("subcategory")%></a></td>
	</tr> --%>
	
	<%	
	String img = scnResultSet.getString(1);
	System.out.println(img);
	uploadPath = "../images/"+img;
	System.out.println("category page: "+uploadPath);
	%>
		<td><img src=<%=uploadPath%> height="400" width="600"/></td>
	<%
	%>
<%
}
	ps2 =con.prepareStatement("select subcategory from eproducts where category=?");
	ps2.setString(1, cn);
	scnResultSet = ps2.executeQuery();
%>	</tr> 
	<tr>
<%while(scnResultSet.next()){%>
	<td><a href="subCategory.jsp?scn=<%=scnResultSet.getString(1)%>"><%=scnResultSet.getString(1)%></a></td>
<%} 
con.close();
}
catch(Exception e){
	System.out.println(e);
}%>	
	</tr>
	</table>
	</div>

	<div class="right">
	<table>
	<tr>
	<td><a href="../user/feedback.jsp">Feedback</a></td>
	</tr>
	<tr>
	<td><a href="../user/query.jsp">Query</a></td>
	</tr>
	</table>
	</div>
	</div>
</div>
</body>
</html>