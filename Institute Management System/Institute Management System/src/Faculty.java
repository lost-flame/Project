import javax.swing.*;
import javax.swing.table.DefaultTableModel;
import java.awt.*;
import java.awt.event.*;
import java.sql.*;

public class Faculty extends JFrame{
	private JPanel jp;
	private JLabel facultyDetails;
	private JTable facultyDetailsTable;
	private JScrollPane facultyDetailsScroll;
	private DefaultTableModel model;
	
	public Faculty() {
		setDefaultCloseOperation(JFrame.DISPOSE_ON_CLOSE);
		setLayout(null);
		getContentPane().setBackground(Color.orange);
		
		jp = new JPanel();
		jp.setLayout(null);
		jp.setBounds(40,40,1840,918);
		jp.setBackground(Color.white);
		add(jp);
	  
		facultyDetails = new JLabel("Faculty Details",JLabel.CENTER);
		facultyDetails.setLayout(null);
		facultyDetails.setBounds(430,-50,1050,400);
		facultyDetails.setForeground(Color.blue);
		facultyDetails.setFont(new Font("Times New Roman", Font.BOLD, 50));
		jp.add(facultyDetails);
		
		model = new DefaultTableModel();
		
		model.addColumn("NAME");
		model.addColumn("AGE");
		model.addColumn("MOBILE_NUMBER");
		model.addColumn("ADDRESS");
		model.addColumn("GENDER");
		model.addColumn("DATE_JOINED_FROM");
		model.addColumn("DATE_OF_BIRTH");
		
		setTitle("Faculty Details");
		setSize(1990,1030);
		setVisible(true);
		
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection con  = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","nikhil");
		
			PreparedStatement ps =con.prepareStatement("select * from faculty_details");
			ResultSet rs= ps.executeQuery();
			while(rs.next()) {
				String value1 = rs.getString(1);
				String value2 = rs.getString(2);
				String value3 = rs.getString(3);
				String value4 = rs.getString(4);
				String value5 = rs.getString(5);
				String value6 = rs.getString(6);
				String value7 = rs.getString(7);
				
				model.addRow(new String[] {value1, value2, value3, value4, value5, value6
										    ,value7});
				}
			
			facultyDetailsTable = new JTable(model);
			facultyDetailsTable.setFont(new Font("Times New Roman", Font.PLAIN, 25));
			facultyDetailsTable.setRowHeight(30);
			facultyDetailsTable.setEnabled(false);
			facultyDetailsScroll = new JScrollPane(facultyDetailsTable);
			facultyDetailsScroll.setLocation(40,340);
			facultyDetailsScroll.setSize(1760,202);
			jp.add(facultyDetailsScroll);
	   }
		catch(Exception e) {
			e.printStackTrace();
		}
	}

	public static void main(String[] arg) {
		Faculty faculty = new Faculty();
		faculty.setVisible(true);
	}
}
