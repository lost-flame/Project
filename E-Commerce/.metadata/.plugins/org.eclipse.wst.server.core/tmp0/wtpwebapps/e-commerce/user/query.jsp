<%@page import="java.sql.*" %>
<html>
<head>
<title>Query</title>
<link rel="stylesheet" type="text/css" href="../css/query.css">
</head>
<body >
<%  
	String userid = (String)session.getAttribute("userid");
	if(userid == null){%>
		<script>
		alert("Please login for submitting the queries...");
		setTimeout(function() { window.location.href = '../user/home.jsp'; } , 100);
		</script>
	<%}
	else{%>
<div class="center">

<div align="center">
</br>
<form name="query" method="post" action="querySubmit.jsp">
	<table cellpadding=2 cellspacing=2>
	<tr>
	<td align="center"><h3>Query Page</h3></td>
	</tr>
	<tr>
	<td align="center">
	<textarea name="query" rows=20 cols=100 placeholder="Please enter your queries...">
	</textarea>
	</td>
	</tr>
	<tr>
	<td align="center"><input type="submit" /></td>
	</tr>
	<tr>
	<td align="center"><a href="../user/home.jsp">Go Back</a></td>
	</tr>
	</table>
</form>
</div>

</div>
<%} %>
</body>
</html>