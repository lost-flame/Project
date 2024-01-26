<%@ page import="java.sql.*" %>
<html>
<head>
<title>Account Settings</title>
<link rel="stylesheet" type="text/css" href="userUpdate.css">

</head>
<body align="center" background="1.jpg">
<%
try
{
String id = (String)session.getAttribute("id");
if(id!=null)
{
	String email = (String)session.getAttribute("id");
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","nikhil");
	PreparedStatement ps = con.prepareStatement("Select * From GI Where EMAIL=? ");
	ps.setString(1, email);
	ResultSet rs = ps.executeQuery();
	if(rs.next()){
%>

<table class="table" align="center">
<form name="update" action="update1.jsp" method="post">

<tr>
<td align="center" colspan=2><h1>UPDATE</h1></td>
</tr>

<tr>	
<td>First Name</td>
<td><input type="text" id="fname" name="fname" maxlength="20" value="<%=rs.getString(2)%>" required /></td>
</tr>

<tr>
<td>Last Name</td>
<td><input type="text" id="lname" name="lname" maxlength="20" value="<%=rs.getString(3)%>" required/></td>
</tr>

<tr>
<td>E-mail</td>
<td><input type="email" id="email" name="email" value="<%=rs.getString(4)%>" required/></td>
</tr>

<tr>
<td>Password</td>
<td><input type="text" name="pswd" value="<%=rs.getString(5)%>" required/></td>
</tr>

<tr>
<td>Security Question</td>
<td>
<select id="security" name="security">
<option value="What is your favourite color">What is your favourite color</option>
<option value="What is your favourite tv show">What is your favourite tv show</option>
</select>
</td>
</tr>

<tr>
<td></td>
<td>
<input type="text" id="answer" name="answer" value="<%=rs.getString(7)%>" maxlength="20" required/>
</td>
</tr>

</br>
<tr>
<td align="center" colspan=2><input type="submit" value="Update" /></td>
</tr>
</form>
</table>
<% 	
  }
	else
	{
		out.println("Record is not found");
	}
}	
}
catch(Exception e)
{
	out.println(e);
}	%>
</body>
</html>