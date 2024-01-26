import java.awt.*;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.sql.*;

import javax.swing.*;
import javax.swing.table.DefaultTableModel;

public class Student extends JFrame{
	private JPanel jp;
	private JLabel title;
	private JButton studentDetails, scheduleDetails, leave;
	private JTable registrationDetailsTable;
	private JScrollPane registrationDetailsScroll;
	private DefaultTableModel model;
	
	public Student() {
		setDefaultCloseOperation(JFrame.DISPOSE_ON_CLOSE);
		setLayout(null);
		getContentPane().setBackground(Color.orange);
		
		jp = new JPanel();
		jp.setLayout(null);
		jp.setBounds(40,40,1840,918);
		jp.setBackground(Color.white);
		setTitle("Student");
		setSize(1990,1030);
		setVisible(true);
		add(jp);
		
		title = new JLabel("Student ",JLabel.CENTER);
		title.setLayout(null);
		title.setBounds(400,100,1050,400);
		title.setForeground(Color.blue);
		title.setFont(new Font("Times New Roman", Font.BOLD, 70));
		jp.add(title);
		
		studentDetails = new JButton("Student Details");
		studentDetails.setLayout(null);
		studentDetails.setBounds(730,400,380,60);
		studentDetails.setFont(new Font("Times New Roman", Font.PLAIN, 40));
		jp.add(studentDetails);
		
		scheduleDetails = new JButton("Schedule Details");
		scheduleDetails.setLayout(null);
		scheduleDetails.setBounds(730,520,380,60);
		scheduleDetails.setFont(new Font("Times New Roman", Font.PLAIN, 40));
		jp.add(scheduleDetails);
		
		leave = new JButton("Leave");
		leave.setLayout(null);
		leave.setBounds(730,640,380,60);
		leave.setFont(new Font("Times New Roman", Font.PLAIN, 40));
		jp.add(leave);
		
		model = new DefaultTableModel();
		
		model.addColumn("Roll Number");
		model.addColumn("INSTITUTE_NAME");
		model.addColumn("STUDENT_NAME");
		model.addColumn("DATE_OF_BIRTH");
		model.addColumn("ADDRESS");
		model.addColumn("USERNAME");
		model.addColumn("PASSWORD");
		model.addColumn("PHONE_NUMBER");
		model.addColumn("GENDER");
		model.addColumn("STANDARD");
		model.addColumn("AGE");
		
		studentDetails.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent ae) {
				StudentDetails sd = new StudentDetails();
				sd.setVisible(true);
			}
				});
		
		scheduleDetails.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent ae) {
				ScheduleDetails sd = new ScheduleDetails();
				sd.setVisible(true);
				}
				});
		
		leave.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent ae) {
				}
				});
	}
	
	public static void main(String[] arg) {
		Student student = new Student();
		student.setVisible(true);
}
}
