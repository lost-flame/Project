<%@page import="java.sql.*" %>
<html>
<head>
<style>

body
{
 background:url(9.png);
 background-size:cover;
 background-position:center;
}

.center{

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

a
{
   color:yellow;
   text-decoration:none; 
}
</style>
</head>
<body>
<div class="center">
<%
String payment = (String)session.getAttribute("payment");
String saveTotalPrice = (String)session.getAttribute("saveTotalPrice");
int totalPrice1;
if(saveTotalPrice!=null)
{
	String totalPrice = (String)session.getAttribute("saveTotalPrice");
	totalPrice1 = Integer.parseInt(totalPrice);   	
}
else
{
	String totalPrice = (String)session.getAttribute("totalPrice");
	totalPrice1 = Integer.parseInt(totalPrice);   	
}

int tnum1;
String max = (String)session.getAttribute("max");
if(max!=null)
{
	String tnum = (String)session.getAttribute("max");
	tnum1 = Integer.parseInt(tnum);
}
else
{
	String tnum = (String)session.getAttribute("order");
	tnum1 = Integer.parseInt(tnum);
}

String id = (String)session.getAttribute("id");

Class.forName("oracle.jdbc.driver.OracleDriver");
Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","nikhil");
/*
Statement st1 = con.createStatement();
String s3 ="Select max(TRAN_ID) from TRANSACTION";
ResultSet rs2 = st1.executeQuery(s3);
String seqNo = "";
//int a =1;
int tranId;
//String gid = "";
rs2.next();

	seqNo = rs2.getString(1);
	//seq = a + Integer.parseInt(seqNo);
	
		tranId = 1 + Integer.parseInt(seqNo);*/
	/*	
Statement s = con.createStatement();
String s1 ="select to_char(sysdate, 'Dy DD-Mon-YYYY') from dual";
ResultSet rs = s.executeQuery(s1);
String date = "";
rs.next();
date = rs.getString(1);
*/
//int date1 = Integer.parseInt(date);
java.sql.Date date = new java.sql.Date(new java.util.Date().getTime());

Statement st = con.createStatement();
String s2 ="select to_char(sysdate, 'HH24:MI:SS') from dual";
ResultSet rs1 = st.executeQuery(s2);
String time = "";
rs1.next();
time = rs1.getString(1);

Statement st3 = con.createStatement();
String s1 ="Select ID from GAMERS Where EMAIL='"+id+"'";
ResultSet rs4 = st3.executeQuery(s1);
String email1 = "";
rs4.next();
email1 = rs4.getString(1);

PreparedStatement ps =con.prepareStatement("Insert Into TRANSACTION VALUES(seq_tran.nextval,?,?,?,?,?,?)");
ps.setString(1, email1);
ps.setString(2, payment);
ps.setInt(3, totalPrice1);
ps.setDate(4, date);
ps.setString(5, time);
ps.setInt(6, tnum1);
//ps.setInt(6, tranId);
ps.executeUpdate();

PreparedStatement ps1 =con.prepareStatement("Select PAY_MODE,AMOUNT,DATE_,TIME  From TRANSACTION Where TNUM=?");
ps1.setInt(1, tnum1);
ResultSet rs3 = ps1.executeQuery();
%>
       <table align="center" class="table" cellpadding=4 cellspacing=4>
       <tr>
       <td align="center" colspan=4><h2>Transaction Details</h2></td>
       </tr>
       <tr>
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
    <td align="center"><%=rs3.getInt(2)%></td>
    <td align="center"><%=rs3.getString(3)%></td>
    <td align="center"><%=rs3.getString(4)%></td>
    </tr>
<%}
if(max!=null)
{
	PreparedStatement ps2 =con.prepareStatement("Delete From SAVE_TO_CART Where GNUM=? AND EMAIL='"+id+"'");
	ps2.setInt(1, tnum1);
	ResultSet rs5 = ps2.executeQuery();
	rs5.next();
	
}
%>
<tr>
<td colspan=4 align="center"><a href="aboutUs.jsp">Home</a></td>
</tr>
</table>
<%
con.close();
%>
</div>
</body>
</html>