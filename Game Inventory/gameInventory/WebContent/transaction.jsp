<%@page import="java.sql.*" %>

<%
try{
String payment = (String)session.getAttribute("payment");
String totalStock1 = (String)session.getAttribute("stock1");


Class.forName("oracle.jdbc.driver.OracleDriver");
Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","nikhil");

java.sql.Date date = new java.sql.Date(new java.util.Date().getTime());

Statement st = con.createStatement();
String s2 ="select to_char(sysdate, 'HH24:MI:SS') from dual";
ResultSet rs1 = st.executeQuery(s2);
String time = "";
rs1.next();
time = rs1.getString(1);

PreparedStatement ps =con.prepareStatement("Insert Into TRANSACTION VALUES(seq_tran.nextval,?,?,?,?)");
ps.setString(1, payment);
ps.setString(2, totalStock1);
ps.setDate(3, date);
ps.setString(4, time);
ps.executeUpdate();

response.sendRedirect("transaction1.jsp");
con.close();
}
catch(Exception e){
	out.println(e);
}
%>
</div>
</body>
</html>