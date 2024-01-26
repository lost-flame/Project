import javax.swing.*;
import java.awt.*;
import java.awt.event.*;
import java.sql.*;

public class Home extends JFrame {
	private JPanel jp;
	private JLabel title;
	private JButton registrationDetails, scheduleDetails, registrationForm, admin, faculty, adminLogin, feedback, update;
	
	public Home() {
		setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		setLayout(null);
		getContentPane().setBackground(Color.orange);
		
		jp = new JPanel();
		jp.setLayout(null);
		jp.setBounds(40,40,1840,918);
		jp.setBackground(Color.white);
		setTitle("Home");
		setSize(1990,1030);
		setVisible(true);
		add(jp);
		
		title = new JLabel("INSTITUTE ",JLabel.CENTER);
		title.setLayout(null);
		title.setBounds(430,-120,1050,400);
		title.setForeground(Color.blue);
		title.setFont(new Font("Times New Roman", Font.BOLD, 90));
		jp.add(title);
		
		title = new JLabel("MANAGEMENT ",JLabel.CENTER);
		title.setLayout(null);
		title.setBounds(430,-20,1050,400);
		title.setForeground(Color.blue);
		title.setFont(new Font("Times New Roman", Font.BOLD, 90));
		jp.add(title);
		
		title = new JLabel("SYSTEM ",JLabel.CENTER);
		title.setLayout(null);
		title.setBounds(430,80,1050,400);
		title.setForeground(Color.blue);
		title.setFont(new Font("Times New Roman", Font.BOLD, 90));
		jp.add(title);
		
		admin = new JButton("Admin");
		admin.setLayout(null);
		admin.setBounds(730,400,380,60);
		admin.setFont(new Font("Times New Roman", Font.PLAIN, 40));
		jp.add(admin);
		
		registrationForm = new JButton("Registration Form");
		registrationForm.setLayout(null);
		registrationForm.setBounds(730,640,380,60);
		registrationForm.setFont(new Font("Times New Roman", Font.PLAIN, 40));
		jp.add(registrationForm);
		
		faculty = new JButton("Faculty");
		faculty.setLayout(null);
		faculty.setBounds(730,520,380,60);
		faculty.setFont(new Font("Times New Roman", Font.PLAIN, 40));
		jp.add(faculty);
		
		feedback = new JButton("Feedback");
		feedback.setLayout(null);
		feedback.setBounds(730,750,380,60);
		feedback.setFont(new Font("Times New Roman", Font.PLAIN, 40));
		jp.add(feedback);
		
		
		registrationForm.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent ae) {
				RegistrationForm rf = new RegistrationForm();
				rf.setVisible(true);
				}
				});
		
		admin.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent ae) {
				AdminLogin login = new AdminLogin();
				login.setVisible(true);
				StudentLogin.check=false;
				}
				});
		
		faculty.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent ae) {
				FacultyLogin facultyLogin= new FacultyLogin();
				facultyLogin.setVisible(true);
				}
				});
		
		feedback.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent ae) {
				Feedback feedback = new Feedback();
				feedback.setVisible(true);
				}
				});
		}
	
	public static void main(String[] arg) {
		Home home = new Home();
		
}
}
