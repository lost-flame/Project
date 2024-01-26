<%@ page import="java.sql.*"%>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" type="text/css" href="../css/home.css">
<title>Home</title>
</head>
<body>
<div class="layout">
	<div class="topspace"></div>
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
<% } 
	con.close();
}
catch(Exception e){
	System.out.println(e);
}%>
	</table>	
	</div><!--end of left-->
	
	<div class="e">
	<div class="ss-container">
	<div class="mySlides fade">
	<img src="../images/a.jpg" onclick="window.location.href = '../user/loginPage.jsp';" class="pics" />
	</div>
	<div class="mySlides fade">
	<img src="../images/c.jpg" class="pics" />
	</div>
	<div class="mySlides fade">
	<img src="../images/g.jpg" class="pics" />
	</div>
	<div class="mySlides fade">
	<img src="../images/e.jpg" class="pics" />
	</div>
	<a class="prev" onclick="plusSlides(-1)">&#10094;</a> <a class="next" onclick="plusSlides(1)">&#10095;</a>
	</div>
	<!--    Putting in the click dots   -->
	<div style="text-align: center">
	<span class="dot" onclick="currentSlide(1)"></span> <span class="dot"
	onclick="currentSlide(2)"></span> <span class="dot"
	onclick="currentSlide(3)"></span> <span class="dot"
	onclick="currentSlide(4)"></span>
	</div>
	
	<div class="recentlyView">
	<div>Recently Viewed</div>
	<div>
	<table>
	<tr>
	<td><img src="../images/a.jpg" /></td>
	<td><img src="../images/c.jpg" /></td>
	</tr>
	<tr>
	<td><a href="subCategory.jsp?scn=Andamen Men's Cotton Regular F">Andamen Men's Cotton Regular F</a></td>
	<td><a href="subCategory.jsp?scn=BoAt Immortal 121 TWS">BoAt Immortal 121 TWS</a></td>
	</tr>
	<tr>
	<td><img src="../images/d.jpg" /></td>
	<td><img src="../images/e.jpg" /></td>
	</tr>
	<tr>
	<td><a href="subCategory.jsp?scn=BoAt Rockerz255 Pro Plus">BoAt Rockerz 255 Pro Plus</a></td>
	<td><a href="subCategory.jsp?scn=BoAt Airdopes 141">BoAt Airdopes 141</a></td>
	</tr>
	</table>
	</div>
	</div>
	</br>
	<div class="recentlyView">
	<div>Most Visited</div>
	<div>
	<table>
	<tr>
	<td><img src="../images/a.jpg" /></td>
	<td><img src="../images/f.jpg" /></td>
	</tr>
	<tr>
	<td><a href="subCategory.jsp?scn=Andamen Men's Cotton Regular F">Andamen Men's Cotton Regular F</a></td>
	<td><a href="subCategory.jsp?scn=AndamenMen's Cotton Regular">AndamenMen's Cotton Regular</a></td>
	</tr>
	<tr>
	<td><img src="../images/e.jpg" /></td>
	<td><img src="../images/g.jpg" /></td>
	</tr>
	<tr>
	<td><a href="subCategory.jsp?scn=BoAt Airdopes 141">BoAt Airdopes 141</a></td>
	<td><a href="subCategory.jsp?scn=Comfabie Falma">Comfabie Falma</a></td>
	</tr>
	</table>
	</div>
	</div>
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
	</div><!--   end of right   -->
	
	</div><!--   end of content   -->
</div>	
<script src="../js/home.js"></script>
</body>
</html>