import javax.swing.*;
import java.awt.*;
import java.awt.event.*;
import java.io.PrintStream;
import java.sql.*;

public class StudentLogin extends JFrame{
	private JPanel jp;
	private JLabel login, username, password;
	private JTextField usernameField;
	private JPasswordField passwordField;
	private JButton loginButton;
	public static String Username="";
	public static boolean check = false;
	
	public StudentLogin() {
	setDefaultCloseOperation(JFrame.DISPOSE_ON_CLOSE);
	setLayout(null);
	getContentPane().setBackground(Color.orange);
	
	jp = new JPanel();
	jp.setLayout(null);
	jp.setBounds(40,40,1840,918);
	jp.setBackground(Color.white);
	setTitle("Student Login");
	setSize(1990,1030);
	add(jp);
	
	login = new JLabel("Student Login ",JLabel.CENTER);
	login.setLayout(null);
	login.setBounds(450,100,1050,400);
	login.setForeground(Color.blue);
	login.setFont(new Font("Times New Roman", Font.BOLD, 70));
	jp.add(login);
	
	username = new JLabel("Username ",JLabel.LEFT);
	username.setLayout(null);
	username.setBounds(462,240,1050,400);
	username.setForeground(Color.black);
	username.setFont(new Font("Times New Roman", Font.BOLD, 40));
	jp.add(username);
	
	usernameField = new JTextField();
	usernameField.setLayout(null);
	usernameField.setBounds(730,420,500,40);
	usernameField.setFont(new Font("Times New Roman", Font.PLAIN, 30));
	usernameField.setBackground(Color.white);
	jp.add(usernameField);
	
	password = new JLabel("Password ",JLabel.LEFT);
	password.setLayout(null);
	password.setBounds(462,320,1050,400);
	password.setForeground(Color.black);
	password.setFont(new Font("Times New Roman", Font.BOLD, 40));
	jp.add(password);
	
	passwordField = new JPasswordField();
	passwordField.setLayout(null);
	passwordField.setBounds(730,500,500,40);
	passwordField.setFont(new Font("Times New Roman", Font.PLAIN, 30));
	passwordField.setBackground(Color.white);
	jp.add(passwordField);
	
	loginButton = new JButton("Log-in");
	loginButton.setLayout(null);
	loginButton.setBounds(760,570,420,45);
	loginButton.setFont(new Font("Times New Roman", Font.PLAIN, 30));
	jp.add(loginButton);
	
	loginButton.addActionListener(new ActionListener() {
		public void actionPerformed(ActionEvent ae) {
			Username = usernameField.getText();
			String Password = new String(passwordField.getPassword());
			try {
				Class.forName("oracle.jdbc.driver.OracleDriver");
				Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","nikhil");
				PreparedStatement ps =con.prepareStatement("select username, password from registration_form where username=? and password=?");
				ps.setString(1,Username);
				ps.setString(2,Password);
				ResultSet rs = ps.executeQuery();
				if(rs.next()) {
					dispose();
					Student student = new Student();
					student.setVisible(true);
				    check = true;
					
				}
				else {
					JOptionPane.showMessageDialog(loginButton,"Wrong Details");	
				}
				con.close();
			}
			catch(Exception e) {
				e.printStackTrace();
			} 
			}
			});
	
}
	public static void main(String[] arg) {
		StudentLogin studentLogin = new StudentLogin();
		studentLogin.setVisible(true);
	}
}