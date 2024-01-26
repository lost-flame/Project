<%@page import="java.sql.*" %>
<html>
<head>
<title>Transaction Details</title>

<style>

body
{
 background-image:url(7.jpg);
 background-size:cover;
 background-position:center;
}

.center{
overflow: scroll;
 margin-left:150px;
  width:1226px;
  height:695px;
  margin-top:30px;
  background:rgba(0,0,0,0.5);

}

.table tr td
{
   color:white;
   font-size:35px;
}

h2
{
   color:orange;
}

button
{
   background:none;
}

a
{
   text-decoration:none;
   font-size:25px; 
   color:yellow;
}

</style>
</head>
<body>
<div class="center">
<%
try{
String gameName = (String)session.getAttribute("gameName");	
Class.forName("oracle.jdbc.driver.OracleDriver");
Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","nikhil");

PreparedStatement ps =con.prepareStatement("select max(tran_id) from TRANSACTION");
ResultSet rs3 = ps.executeQuery();
rs3.next();
String t = rs3.getString(1);

PreparedStatement ps1 =con.prepareStatement("Select *  From TRANSACTION where tran_id='"+t+"'");
rs3 = ps1.executeQuery();
%>     <div class="c">
       <table align="center" class="table" cellpadding=4 cellspacing=4>
       <tr>
       <td align="center" colspan=5><h2>Transaction Details</h2></td>
       </tr>
       <tr>
       <td align="center">Transaction ID</td>
       <td align="center">Payment Mode</td>
       <td align="center">Amount</td>
       <td align="center">Date</td>
       <td align="center">Time</td>
       </tr>
<%
while(rs3.next())
{%>
    <tr>
    <td align="center"><%=rs3.getString(1)%></td>
    <td align="center"><%=rs3.getString(2)%></td>
    <td align="center"><%=rs3.getString(3)%></td>
    <td align="center"><%=rs3.getString(4)%></td>
    <td align="center"><%=rs3.getString(5)%></td>
    </tr>
<%}
%>
<tr>
<td colspan=5 align="center"> 
<br>
<button onclick="call()">

<%if(gameName.equals("Amnesia The Dark Descent")) %>
<a href="https://gamerpeace.com/wp-content/uploads/2020/12/gamerpeace.com-55A6511.zip" download>
<%if(gameName.equals("DragonBall Xenoverse 2")) %>
<a href="https://gamerpeace.com/wp-content/uploads/2020/12/gamerpeace.com-55A6511.zip" download>
<%if(gameName.equals("Call of Duty Modern Warfare")) %>
<a href="https://gamerpeace.com/wp-content/uploads/2020/12/gamerpeace.com-55A6511.zip" download>
<%if(gameName.equals("Darwin Project")) %>
<a href="https://gamerpeace.com/wp-content/uploads/2020/12/gamerpeace.com-55A6511.zip" download>
<%if(gameName.equals("League Of Legends")) %>
<a href="https://gamerpeace.com/wp-content/uploads/2020/12/gamerpeace.com-55A6511.zip" download>
<%if(gameName.equals("Paladins")) %>
<a href="https://gamerpeace.com/wp-content/uploads/2020/12/gamerpeace.com-55A6511.zip" download>
<%if(gameName.equals("Prototype")) %>
<a href="https://gamerpeace.com/wp-content/uploads/2020/12/gamerpeace.com-55A6511.zip" download>
<%if(gameName.equals("Assassins Creed")) %>
<a href="https://gamerpeace.com/wp-content/uploads/2020/12/gamerpeace.com-55A6511.zip" download>

<span id="change">Download Your Game</span></a>
</button>
</td><script>
function call(){
document.write('<body style=" background-image:url(7.jpg); background-size:cover; background-position:center; background-attachment: fixed; ">');
document.write('<center><div style=" background:rgba(0,0,0,0.5); width:70%; font-size:30px; color:white; margin-top:356px">');
document.write('<table style="font-size:30px;"><tr><td align="center" ><a  style="text-decoration:none; color:yellow;" href="aboutUs.jsp">Home</a></td></tr></table>');
document.write('</div></center></body>');
}
</script>
</tr>
</table>

</div>
<%
con.close();
}
catch(Exception e){
	out.println(e);
}
%>
</div>
</body>
</html>