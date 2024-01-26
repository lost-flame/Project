<html>
<head>
<title>Assassin's Creed</title>
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
<input type="hidden" name="gameName" value="Assassins Creed"/>
<div class="center">
</br>
<img src="ac.webp">
<p style="font-size:24px;">
Assassin's Creed is an action-adventure stealth video game franchise created by Patrice Désilets, Jade Raymond and Corey May, developed and published by Ubisoft using the game engine Anvil
and its more advanced derivatives. It depicts a centuries-old struggle, now and then, between
the Assassins, who fight for peace with free will, and the Templars, who desire peace
through control. The series features historical fiction, science fiction and characters, 
intertwined with real-world historical events and figures. For the majority of time players 
would control an Assassin in the past history, while they also play as Desmond Miles or an 
Assassin Initiate in the present day, who hunt down their Templar targets.
</p>
</br>
<center><iframe width="600" height="400" src="https://www.youtube.com/embed/ouwusBhFnPw?autoplay=1">
</iframe></center>
</br>	
<span class="span1">Price: Rs.900</span>
<input type="hidden" name="price" value="900"/>
<input type="submit" value="Purchase"/>
<span class="span2">Quantity<input type="text" id="quantity" name="quantity" required maxlength=1 size=1/></span>
</div>
</form>

</body>
</html>



