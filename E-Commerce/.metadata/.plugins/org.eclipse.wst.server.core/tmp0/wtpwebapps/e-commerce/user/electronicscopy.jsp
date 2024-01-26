<%@ page import="java.sql.*"%>
<%@ page import="java.io.*"%> 
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" type="text/css" href="../css/cer.css">
</head>
<body>
<div class="layout">
	<div class="top-space"></div>
	<div class="top">
	<nav>
	<ul>
	<li><a href="home.jsp">Home</a></li>
	<div class="searchBox">
	<input type="search" size="47" name="searchbox" id="searchbox" placeholder="searching..." align="center"/>
	<button onclick="window.location.href = '../user/searchboxSubmit.jsp';">Search</button>
	</div>
	<% 
	String userid = (String)session.getAttribute("userid");
	if(userid == null){%>
	<li><a href="signupPage.jsp">Sign Up</a></li>
	<%}
	else{%>
	<div class="dropdown">
	<div class="dropdownButton">User</div>
	<div class="dropdownContent">
	<a href="updatePage.jsp">Account</a>
	<a href="cartPage.jsp">Cart</a>
	<a href="logoutPage.jsp">Log Out</a>
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
	<a href="electronicscopy.jsp?cn=<%=categoryName%>"><%=categoryName%></a>
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
	<a href="test.jsp?scn=<%=subCategoryName%>"><%=subCategoryName%></a>
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
	
	PreparedStatement subimg =con.prepareStatement("select image from eproducts where category=?");
	subimg.setString(1, cn);
	ResultSet subimgResultSet = subimg.executeQuery();	
	
	PreparedStatement subcn =con.prepareStatement("select subcategory from eproducts where category=?");
	subcn.setString(1, cn);
	ResultSet subcnResultSet = subcn.executeQuery();
	
	int columnCount = 0;
%>	
<%-- getting cn value to display the image and subcategory name on the table --%>
	<div class="middle">
	<table>
	
<% while(subimgResultSet.next() && subcnResultSet.next()){%>
	<%-- <tr>
	<td><img src="../images/a.jpg" /></td>
	<td><img src="../images/a.jpg" /></td>
	</tr>
	<tr>
	<td><a href="home.jsp"><%=cnResultSet.getString("subcategory")%></a></td>
	<td><a href="home.jsp"><%=cnResultSet.getString("subcategory")%></a></td>
	</tr> --%>
	
	<%
	%>
		<tr>
		<td><img src="<%=subimgResultSet.getString("image")%>" width="500" height="500"/></td>
		<%subimgResultSet.next();%>
		<td><img src="<%=subimgResultSet.getString("image")%>" width="500" height="500"/></td>
		</tr>
		<tr>
		<td><a href="home.jsp"><%=subcnResultSet.getString(1)%></a></td>
		<%subcnResultSet.next();%>
		<td><a href="home.jsp"><%=subcnResultSet.getString(1)%></a></td>
		</tr>
	<%
	%>
<%
} %>	
	
	</table>
	</div>

	<div class="right">
	<table>
	<tr>
	<td><a href="../admin/feedback.jsp">Feedback</a></td>
	</tr>
	<tr>
	<td><a href="home.jsp">Query</a></td>
	</tr>
	</table>
	</div>
	</div>
</div>
</body>
</html>