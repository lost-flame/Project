<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" type="text/css" href="../css/adminControl.css">
</head>
<title>Insert Image Page</title>
</head>
<body>
<div class="layout">
  <div class="heading">Admin Controls</div>
  <div class="inner">
	<%
	String epid = request.getParameter("epid");
	session.setAttribute("epid", epid);
	epid = (String)session.getAttribute("epid");
	System.out.println("epid  11111 "+epid);
	%>
	<table class="insert">
	<form action="adminControlImageInsertSubmit.jsp" name="imageForm"  enctype = "multipart/form-data" method="post">
	<tr>
	<td colspan="5">Adding the image to the new products...</td>
	</tr>
	<tr>
	<td><input type="file" name="file" size="30"/></td>
	<td><input type="submit" value="Upload Image"/></td>	
	</tr>
	</form>
	</table>
 </div>
</div>
</body>
</html>