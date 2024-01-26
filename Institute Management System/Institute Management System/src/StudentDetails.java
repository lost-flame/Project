import java.awt.*;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.sql.*;

import javax.swing.*;
import javax.swing.table.DefaultTableModel;

public class StudentDetails extends JFrame {
	private JPanel jp;
	private JLabel title;
	private JTable registrationDetailsTable;
	private JScrollPane registrationDetailsScroll;
	private DefaultTableModel model;
	private JButton update;
	private PreparedStatement ps;
	private Connection con;
	private ResultSet rs;
	String value1="";
	
	public StudentDetails() {
		setDefaultCloseOperation(JFrame.DISPOSE_ON_CLOSE);
		setLayout(null);
		getContentPane().setBackground(Color.orange);
		
		jp = new JPanel();
		jp.setLayout(null);
		jp.setBounds(40,40,1840,918);
		jp.setBackground(Color.white);
		setTitle("Student Details");
		setSize(1990,1030);
		setVisible(true);
		add(jp);
		
		title = new JLabel("Student Details ",JLabel.CENTER);
		title.setLayout(null);
		title.setBounds(400,100,1050,390);
		title.setForeground(Color.blue);
		title.setFont(new Font("Times New Roman", Font.BOLD, 70));
		jp.add(title);
		
		update = new JButton("Update");
		update.setLayout(null);
		update.setBounds(750,650,380,60);
		update.setFont(new Font("Times New Roman", Font.PLAIN, 30));
		jp.add(update);
		
		model = new DefaultTableModel();
		
		//model.addColumn("Roll Number");
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
		
				try {
					Class.forName("oracle.jdbc.driver.OracleDriver");
					con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","nikhil");
					ps =con.prepareStatement("select * from registration_form where username='"+StudentLogin.Username+"'");
					rs = ps.executeQuery();
					while(rs.next()) {
					    value1 = rs.getString(1);
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
						
						model.addRow(new String[] {value2, value3, value4, value5, value6
													 ,value7, value8, value9, value10, value11});
					}	
						registrationDetailsTable = new JTable(model);
						registrationDetailsTable.setFont(new Font("Times New Roman", Font.PLAIN, 25));
						registrationDetailsTable.setRowHeight(30);
						registrationDetailsScroll = new JScrollPane(registrationDetailsTable);
						registrationDetailsScroll.setLocation(100,380);
						registrationDetailsScroll.setSize(1650,50);
						jp.add(registrationDetailsScroll);
						
						update.addActionListener(new ActionListener() {
							public void actionPerformed(ActionEvent ae) {
								model = (DefaultTableModel)registrationDetailsTable.getModel();
								
						for(int i=0; i<model.getRowCount(); i++) {
							String instituteName = model.getValueAt(i, 0).toString();
							String studentName = model.getValueAt(i, 1).toString();
							String dateOfBirth = model.getValueAt(i, 2).toString();
							String address = model.getValueAt(i, 3).toString();
							String username = model.getValueAt(i, 4).toString();
							String password = model.getValueAt(i, 5).toString();
							String mobileNumber = model.getValueAt(i, 6).toString();
							String gender = model.getValueAt(i, 7).toString();
							String standard = model.getValueAt(i, 8).toString();
							String age = model.getValueAt(i, 9).toString();
							
						try {
								ps =con.prepareStatement("update registration_form set INSTITUTE_NAME=?, STUDENT_NAME=?,DATE_OF_BIRTH=?,ADDRESS=?,USERNAME=?,PASSWORD=?,PHONE_NUMBER=?,GENDER=?,STANDARD=?,AGE=? where R_ID='"+value1+"'");
								ps.setString(1,instituteName);
								ps.setString(2,studentName);
								ps.setString(3,dateOfBirth);
								ps.setString(4,address);
								ps.setString(5,username);
								ps.setString(6,password);
								ps.setString(7,mobileNumber);
								ps.setString(8,gender);
								ps.setString(9,standard);
								ps.setString(10,age);
								ps.executeUpdate();
								
						}
						catch(Exception e) {
							e.printStackTrace();
						}
						
						}//loop
						try {
							con.close();
						} catch (Exception e){
							e.printStackTrace();
						}
						dispose();//closing current frame
						StudentDetails rd = new StudentDetails();//reopening it after updating it 
						}
								
						}
					);
				}
				catch(Exception e) {
					e.printStackTrace();
				}
				
				}
		
	public static void main(String[] arg) {
		StudentDetails sd = new StudentDetails();
		sd.setVisible(true);
}
}
