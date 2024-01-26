<html>
<head>
<title>Amnesia The Dark Descent</title>
<script src="games.js"></script>
<link rel="stylesheet" type="text/css" href="games.css">
</head>
<body >

<div class="table">
<table class="table1" cellpadding="10" align="center" border=2px>
<td> <a href="aboutUs.jsp">Home</a> </td> 

<%
String id = (String)session.getAttribute("id");
if(id==null){
%>
<td> <a href="signUp.jsp">Sign-Up</a> </td>
<td> <a href="login.jsp">Log-In</a> </td>
<%
}
else{
%>
<td> <a> Game Inventory</a> </td>
<td> <a href="update.jsp">Account</a> </td>
<td> <a href="logout.jsp">Log-Out</a> </td>
<%} %>
</tr>
</table>
</div>

<div class="left">
<table class="table2" border=2px>
<tr>
<td align="center" style="text-decoration:none; color:white;"><b>Genres</b></td>
</tr>
<tr>
<td align="center"><a href="aboutUs.jsp">Action</a></td>
</tr>
<tr>
<td align="center"><a href="adventure.jsp">Adventure</a></td>
</tr>
<tr>
<td align="center"><a href="strategy.jsp">Strategy</a></td>
</tr>
<tr>
<td align="center"><a href="survival.jsp">Survival</a></td>
</tr>
<tr>
<td align="center"><a href="horror.jsp">Horror</a></td>
</tr>
<tr>
<td align="center"><a href="shooting.jsp">Shooting</a></td>
</tr>
</table>
</div>

<form action="add.jsp" onsubmit="return call()" method="post">
<input type="hidden" name="gameName" value="Amnesia The Dark Descent"/>
<div class="center">
</br>
<img src="atdd.jpg">
<p style="font-size:24px;">
Amnesia: The Dark Descent is a survival horror adventure video game by Frictional Games, 
released in 2010 for Microsoft Windows, Mac OS X and Linux operating systems, in 2016 for 
the PlayStation 4 platform and in 2018 for the Xbox One. The game features a protagonist 
named Daniel exploring a dark and foreboding castle, while trying to maintain his sanity by 
avoiding monsters and other terrifying obstructions. The game was critically well-received, 
earning two awards from the Independent Games Festival and numerous positive reviews.

Originally released independently via online distribution, the game has since been published 
in retail by 1C Company in Russia and Eastern Europe, as well as THQ in North America. 
A collection of five short stories set in the world of Amnesia, written by Mikael Hedberg and 
illustrated by the game's concept artists, was also made available.  In addition, the game's 
soundtrack is available for purchase and a free content expansion Justine has been released, 
as well as many fan-made expansions and stories for its unique "Custom Story" game mode. 
The Amnesia Collection – which contains The Dark Descent, its Amnesia: Justine expansion and 
the sequel, A Machine for Pigs – was released for PlayStation 4 on 22 November 2016, and for 
Xbox One on 28 September 2018. The same collection was released on the Nintendo Switch on 12 
September 2019.[10](digital download only from the Nintendo eShop). A second sequel, 
Amnesia: Rebirth, was announced on 6 March 2020, and is scheduled for release in late 2020.
</p>
</br>
<center><iframe width="600" height="400" src="https://www.youtube.com/embed/u1nY_5-UrY4?autoplay=1">
</iframe></center>
</br>	
<span class="span1">Price: Rs.2000</span>
<input type="hidden" name="price" value="2000"/>
<input type="submit" value="Purchase"/>
<span class="span2">Quantity<input type="text" id="quantity" name="quantity" required maxlength=1 size=1/></span>
</div>
</form>
</body>
</html>



