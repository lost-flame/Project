<%@ page import="java.sql.*" %>
<html>
<head>
<title>Update Details</title>
<link rel="stylesheet" type="text/css" href="../css/updatePage.css">
</head>
<body align="center" background="1.jpg">
<%
try
{
String adminid = (String)session.getAttribute("adminid");
if(adminid != null)
{
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","nikhil");
	PreparedStatement ps = con.prepareStatement("select * from eadmin where email=? ");
	ps.setString(1, adminid);
	ResultSet rs = ps.executeQuery();
	if(rs.next()){
%>

<div class="outer">
<div class="heading">
Update Page
</div>
<div class="inner">
	<table cellpadding="2">
	<form action="updatePageSubmit.jsp" name="signupPage" onsubmit="return right();" method="post"">
	<tr>
	<td>First Name</td>
	<td><input type="text" value="<%=rs.getString(2)%>" name="firstName" id="firstName" placeholder="your first name" maxlength="30" required/></td>
	</tr>
	<tr>
	<td>Middle Name</td>
	<td><input type="text" value="<%=rs.getString(3)%>" name="middleName" id="middleName" placeholder="your middle name" maxlength="30" required/></td>
	</tr>
	<tr>
	<td>Last Name</td>
	<td><input type="text" value="<%=rs.getString(4)%>" name="lastName" id="lastName" placeholder="your last name" maxlength="30" required/></td>
	</tr>
	<tr>
	<td>Gender</td>
	<td>
	<select name="gender" id="gender" style="width: 100%;" required>
    <option value="male">Male</option>
    <option value="female">Female</option>
    </select>
	</td>
	</tr>
	<tr>
	<td>Mobile Number</td>
	<td><input type="text" value="<%=rs.getString(6)%>" name="mobileNumber" id="mobileNumber" maxlength="10" placeholder="your mobile number" required></td>
	</tr>
	<tr>
	<td>Address</td>
	<td><input type="text" value="<%=rs.getString(7)%>" name="address" id="address" placeholder="your address" maxlength="50" required/></td>
	</tr>
	<tr>
	<td>E-mail</td>
	<td><input type="email" value="<%=rs.getString(8)%>" name="email" id="email"  placeholder="your email" maxlength="50" required/></td>
	</tr>
	<tr>
	<tr>
	<td>Password</td>
	<td><input type="password" value="<%=rs.getString(9)%>" name="password" id="password"  placeholder="your password" maxlength="15" required/></td>
	</tr>
	<tr>
	<td colspan="2"><input type="submit" value="Update Account"/></td>
	</tr>
	</form>
	</table>
</div>
</div>
<% 	
  }
	else
	{
		System.out.println("Record is not found");
	}
}	
}
catch(Exception e)
{
	System.out.println(e);
}	%>
<script src="../js/adminUpdatePage.js"></script>
</body>
</html>