import javax.swing.*;
import javax.swing.table.DefaultTableModel;
import java.awt.*;
import java.awt.event.*;
import java.sql.*;

public class Update extends JFrame {
	private JPanel jp;
	private JLabel registrationDetails;
	private JTable registrationDetailsTable;
	private JScrollPane registrationDetailsScroll;
	private DefaultTableModel model;
	private JButton update;
	private String value1="", value="";
	private PreparedStatement ps;
	private Connection con,c1;
	private ResultSet rs;
	
	public Update() {
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
		
		model.addColumn("INSTITUTE_NAME");
		model.addColumn("STUDENT_NAME");
		model.addColumn("DATE_OF_BIRTH");
		model.addColumn("ADDRESS");
		model.addColumn("USERNAME");
		model.addColumn("PASSWORD");
		model.addColumn("MOBILENUMBER");
		model.addColumn("GENDER");
		model.addColumn("STANDARD");
		
		update = new JButton("Update");
		update.setLayout(null);
		update.setBounds(800,830,380,60);
		update.setFont(new Font("Times New Roman", Font.PLAIN, 30));
		jp.add(update);
		
		setTitle("Registration Details");
		setSize(1990,1030);
		setVisible(true);
		
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","nikhil");
		
			ps =con.prepareStatement("select * from registration_form");
			rs= ps.executeQuery();
			while(rs.next()) {
				String value2 = rs.getString(2);
				String value3 = rs.getString(3);
				String value4 = rs.getString(4);
				String value5 = rs.getString(5);
				String value6 = rs.getString(6);
				String value7 = rs.getString(7);
				String value8 = rs.getString(8);
				String value9 = rs.getString(9);
				String value10 = rs.getString(10);
				
				model.addRow(new String[] {value2, value3, value4, value5, value6
											 ,value7, value8, value9, value10});
				}
			
			registrationDetailsTable = new JTable(model);
			registrationDetailsTable.setBounds(986,300,1840,918);
			registrationDetailsTable.setFont(new Font("Times New Roman", Font.PLAIN, 25));
			registrationDetailsTable.setRowHeight(30);
			registrationDetailsScroll = new JScrollPane(registrationDetailsTable);
			registrationDetailsScroll.setLocation(100,110);
			registrationDetailsScroll.setSize(1650,700);
			jp.add(registrationDetailsScroll);
		
		
			//System.out.println("before");
			
			
			update.addActionListener(new ActionListener() {
				public void actionPerformed(ActionEvent ae) {
					model = (DefaultTableModel)registrationDetailsTable.getModel();
					
			for(int i=0; i<model.getRowCount(); i++) {
			//	System.out.println("value of i: "+i);
				String instituteName = model.getValueAt(i, 0).toString();
				String studentName = model.getValueAt(i, 1).toString();
				String dateOfBirth = model.getValueAt(i, 2).toString();
				String address = model.getValueAt(i, 3).toString();
				String username = model.getValueAt(i, 4).toString();
				String password = model.getValueAt(i, 5).toString();
				String mobileNumber = model.getValueAt(i, 6).toString();
				String gender = model.getValueAt(i, 7).toString();
				String standard = model.getValueAt(i, 8).toString();
			//	System.out.println(instituteName);
			//	System.out.println(gender);
			try {
					ps =con.prepareStatement("update registration_form set INSTITUTE_NAME=?,STUDENT_NAME=?,DATE_OF_BIRTH=?,ADDRESS=?,USERNAME=?,PASSWORD=?,MOBILENUMBER=?,GENDER=?,STANDARD=? where STUDENT_NAME='"+studentName+"'");
					System.out.println("Getting updated....");
					System.out.println(instituteName);
					ps.setString(1,instituteName);
					ps.setString(2,studentName);
					ps.setString(3,dateOfBirth);
					ps.setString(4,address);
					ps.setString(5,username);
					ps.setString(6,password);
					ps.setString(7,mobileNumber);
					ps.setString(8,gender);
					ps.setString(9,standard);
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
			Update rd = new Update();//reopening it after updating it 
			}
					
			}
		);
	}
	catch(Exception e) {
		e.printStackTrace();
	}
			
		
	}
	
	public static void main(String[] arg) {
		Update rd = new Update();
	} 
}
