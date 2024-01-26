import javax.swing.*;
import javax.swing.border.Border;
import javax.swing.table.DefaultTableModel;
import java.awt.*;
import java.awt.event.*;
import java.sql.*;

public class ScheduleDetails extends JFrame {
	private JPanel jp;
	private JLabel schdeduleDetails, note;
	private JTextField noteField;
	private JTable scheduleDetailsTable;
	private JScrollPane schdeduleDetailsScroll;
	private DefaultTableModel model;
	private JButton update;
	private PreparedStatement ps;
	private Connection con;
	private ResultSet rs;
	
	public ScheduleDetails() {
		setDefaultCloseOperation(JFrame.DISPOSE_ON_CLOSE);
		setLayout(null);
		getContentPane().setBackground(Color.orange);
		
		jp = new JPanel();
		jp.setLayout(null);
		jp.setBounds(40,40,1840,918);
		jp.setBackground(Color.white);
		add(jp);
	  
		schdeduleDetails = new JLabel("Schedule Details",JLabel.CENTER);
		schdeduleDetails.setLayout(null);
		schdeduleDetails.setBounds(400,-100,1050,400);
		schdeduleDetails.setForeground(Color.blue);
		schdeduleDetails.setFont(new Font("Times New Roman", Font.BOLD, 50));
		jp.add(schdeduleDetails);
		
		note = new JLabel("*Note*:- ",JLabel.CENTER);
		note.setLayout(null);
		note.setBounds(10,480,1050,400);
		note.setForeground(Color.black);
		note.setFont(new Font("Times New Roman", Font.BOLD, 30));
		jp.add(note);
		
		noteField = new JTextField();
		noteField.setText("Every sunday is test (Timings:- 10:00am - 11:00am)");
		noteField.setLayout(null);
		noteField.setEditable(false);
		noteField.setBounds(600,660,630,40);
		noteField.setBackground(Color.white);
		noteField.setFont(new Font("Times New Roman", Font.PLAIN, 30));
		jp.add(noteField);
		
		Border border = BorderFactory.createLineBorder(Color.white, 0);
		noteField.setBorder(border);
		
		model = new DefaultTableModel();
		
		model.addColumn("SNO");
		model.addColumn("TEACHER_NAME");
		model.addColumn("COURSE");
		model.addColumn("DAY");
		model.addColumn("TIME");
		model.addColumn("STANDARD");
		
		setTitle("Schdedule Details");
		setSize(1990,1030);
		setVisible(true);
		
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","nikhil");
		
			ps =con.prepareStatement("select * from schedule_details");
			rs= ps.executeQuery();
			while(rs.next()) {
				String value1 = rs.getString(1);
				String value2 = rs.getString(2);
				String value3 = rs.getString(3);
				String value4 = rs.getString(4);
				String value5 = rs.getString(5);
				String value6 = rs.getString(6);
				
				model.addRow(new String[] {value1, value2, value3, value4, value5, value6});
				}
			
			scheduleDetailsTable = new JTable(model);
			scheduleDetailsTable.setFont(new Font("Times New Roman", Font.PLAIN, 25));
			scheduleDetailsTable.setRowHeight(30);
			schdeduleDetailsScroll = new JScrollPane(scheduleDetailsTable);
			schdeduleDetailsScroll.setLocation(100,200);
			schdeduleDetailsScroll.setSize(1650,440);
			jp.add(schdeduleDetailsScroll);
			
			
			if(StudentLogin.check == false) {
				
			update = new JButton("Update");
			update.setLayout(null);
			update.setBounds(750,830,380,60);
			update.setFont(new Font("Times New Roman", Font.PLAIN, 30));
			jp.add(update);	
				
			update.addActionListener(new ActionListener() {
				public void actionPerformed(ActionEvent ae) {
					model = (DefaultTableModel)scheduleDetailsTable.getModel();
					
			for(int i=0; i<model.getRowCount(); i++) {
				String sno = model.getValueAt(i, 0).toString();
				String teacherName = model.getValueAt(i, 1).toString();
				String course = model.getValueAt(i, 2).toString();
				String day = model.getValueAt(i, 3).toString();
				String time = model.getValueAt(i, 4).toString();
				String standard = model.getValueAt(i, 5).toString();
				
			try {
					ps =con.prepareStatement("update schedule_details set SNO=?, TEACHER_NAME=?,COURSE=?,DAY=?,TIME=?,STANDARD=? where SNO='"+sno+"'");
					ps.setString(1,sno);
					ps.setString(2,teacherName);
					ps.setString(3,course);
					ps.setString(4,day);
					ps.setString(5,time);
					ps.setString(6,standard);
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
			ScheduleDetails rd = new ScheduleDetails();//reopening it after updating it 
			}
					
			}
		);
		    }//if close
			else {
				scheduleDetailsTable.setEnabled(false);
			}
	}
	catch(Exception e) {
		e.printStackTrace();
	}
	}
	public static void main(String[] arg) {
		ScheduleDetails rd = new ScheduleDetails();
	} 
}
