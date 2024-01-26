<%@page import="java.sql.*" %>
<html>
<head>
<title>Feedback</title>
<link rel="stylesheet" type="text/css" href="../css/feedback.css">
</head>
<body >

<div class="center">

<div align="center">
</br>
<%  
	String userid = (String)session.getAttribute("userid");
	if(userid == null){%>
		<script>
		alert("Please login for submitting the feedback...");
		setTimeout(function() { window.location.href = '../user/home.jsp'; } , 100);
		</script>
	<%}%>
<form name="feedback" method="post" action="feedbackSubmit.jsp">
	<table cellpadding=2 cellspacing=2>
	<tr>
	<td align="center"><h3>Feedback Page</h3></td>
	</tr>
	<tr>
	<td align="center">
	<textarea name="feedback" rows=20 cols=100 placeholder="Please enter your feedbacks...">
	</textarea>
	</td>
	</tr>
	<tr>
	<td align="center"><input type="submit" /></td>
	</tr>
	</table>
</form>

<div class="scroll">
<%
try{
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","nikhil");
	PreparedStatement ps =con.prepareStatement("select * from efeedback");
	ResultSet rs = ps.executeQuery();
%>
<table border=2px>
<tr>
<td align="center" colspan=2 style="color:blue; font-size:30px;"><b>Email</b></td>
<td align="center" style="color:blue; font-size:30px;"><b>Feedbacks</b></td>
</tr>
<%
while(rs.next())
{
%>
<tr>
<td align="center" colspan=2 class="fed"><%=rs.getString(2)%></td>
<td align="center" class="fed"><%=rs.getString(3)%></td>
</tr>
<%
}
}
catch(Exception e){
	System.out.println(e);
}
%>
<tr>
<td colspan="3" align="center"><a href="../user/home.jsp">Go Back</a></td>
</tr>
</table>
</div>

</div>
</div>
</body>
</html>