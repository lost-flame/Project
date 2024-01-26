import javax.swing.*;
import javax.swing.table.DefaultTableModel;
import java.awt.*;
import java.awt.event.*;
import java.sql.*;
import javax.swing.table.JTableHeader.*;


public class RegistrationDetails extends JFrame{
	private JPanel jp;
	private JLabel registrationDetails;
	private JTable registrationDetailsTable;
	private JScrollPane registrationDetailsScroll;
	private DefaultTableModel model;
	
	public RegistrationDetails() {
		
		setDefaultCloseOperation(JFrame.DISPOSE_ON_CLOSE);
		setLayout(null);
		getContentPane().setBackground(Color.orange);
		
		jp = new JPanel();
		jp.setLayout(null);
		jp.setBounds(40,40,1840,918);
		jp.setBackground(Color.white);
		add(jp);
	  
		registrationDetails = new JLabel("Registration Details",JLabel.CENTER);
		registrationDetails.setLayout(null);
		registrationDetails.setBounds(430,-140,1050,400);
		registrationDetails.setForeground(Color.blue);
		registrationDetails.setFont(new Font("Times New Roman", Font.BOLD, 50));
		jp.add(registrationDetails);
		
		model = new DefaultTableModel();
		
		model.addColumn("Roll Number");
		model.addColumn("INSTITUTE_NAME");
		model.addColumn("STUDENT_NAME");
		model.addColumn("DATE_OF_BIRTH");
		model.addColumn("ADDRESS");
		model.addColumn("USERNAME");
		model.addColumn("PASSWORD");
		model.addColumn("MOBILE_NUMBER");
		model.addColumn("GENDER");
		model.addColumn("STANDARD");
		model.addColumn("AGE");
		
		setTitle("Registration Details");
		setSize(1990,1030);
		setVisible(true);
		
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","nikhil");
			PreparedStatement ps =con.prepareStatement("select * from registration_form");
			ResultSet rs= ps.executeQuery();
			while(rs.next()) {
				String value1 = rs.getString(1);
				String value2 = rs.getString(2);
				String value3 = rs.getString(3);
				String value4 = rs.getString(4);
				String value5 = rs.getString(5);
				String value6 = rs.getString(6);
				String value7 = rs.getString(7);
				String value8 = rs.getString(8);
				String value9 = rs.getString(9);
				String value10 = rs.getString(10);
				String value11 = rs.getString(11);
				
				model.addRow(new String[] {value1, value2, value3, value4, value5, value6
											 ,value7, value8, value9, value10, value11});
				}
			
			registrationDetailsTable = new JTable(model);
			registrationDetailsTable.setFont(new Font("Times New Roman", Font.PLAIN, 25));
			registrationDetailsTable.setRowHeight(30);
			registrationDetailsTable.setEnabled(false);
			registrationDetailsScroll = new JScrollPane(registrationDetailsTable);
			registrationDetailsScroll.setLocation(100,110);
			registrationDetailsScroll.setSize(1650,780);
			jp.add(registrationDetailsScroll);
			con.close();
		}
		catch(Exception e) {
			e.printStackTrace();
		} 
	}

	public static void main(String[] arg) {
		RegistrationDetails rd = new RegistrationDetails();
	}
}
