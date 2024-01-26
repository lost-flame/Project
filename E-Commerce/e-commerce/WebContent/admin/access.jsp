<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Admin Access</title>
<link rel="stylesheet" type="text/css" href="../css/access.css">
</head>
<body>
<% 
	String adminid = (String)session.getAttribute("adminid");
if(adminid != null){%>
<div class="layout">
	<div class="top">
	<div>Admin</div>
	</div>
	<div class="content">
	<div>
		<a href="updatePage.jsp">Account Details</a>
	</div>	
	<div>
		<a href="adminControl.jsp">Admin Control</a>
	</div>
	<div>
		<a href="logoutPage.jsp">Log Out</a>
	</div>
	</div>
</div>
<%} 
else{%>
	<script>
	alert("Please login to view the page...");
	setTimeout(function() { window.location.href = 'loginPage.jsp'; } , 100);
	</script>	
<%}
%>
<script type="text/javascript">
</body>
</html>