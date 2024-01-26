import javax.swing.*;
import java.awt.*;
import java.awt.event.*;
import java.sql.*;

public class RegistrationForm extends JFrame{
	private JPanel jp;
	private JLabel registrationForm, instituteName, studentName, dateOfBirth, address, username, password, mobileNumber, gender, standard, age;
	private JTextField instituteNameField, studentNameField, dateOfBirthField, addressField, usernameField, mobileNumberField, standardField, ageField;
	private JPasswordField passwordField;
	private JRadioButton male, female;
	private JButton submitButton, loginButton;
	
	public RegistrationForm(){
		
		setDefaultCloseOperation(JFrame.DISPOSE_ON_CLOSE);
		setLayout(null);
		getContentPane().setBackground(Color.orange);
		
		jp = new JPanel();
		jp.setLayout(null);
		jp.setBounds(40,40,1840,918);
		jp.setBackground(Color.white);
		add(jp);
		
		
		registrationForm = new JLabel("Registration Form",JLabel.CENTER);
		registrationForm.setLayout(null);
		registrationForm.setBounds(430,-120,1050,400);
		registrationForm.setForeground(Color.blue);
		registrationForm.setFont(new Font("Times New Roman", Font.BOLD, 50));
		jp.add(registrationForm);
		
		
		instituteName = new JLabel("Institute Name ",JLabel.LEFT);
		instituteName.setLayout(null);
		instituteName.setBounds(460,-30,1050,400);
		instituteName.setForeground(Color.black);
		instituteName.setFont(new Font("Times New Roman", Font.BOLD, 40));
		jp.add(instituteName);
		
		instituteNameField = new JTextField();
		instituteNameField.setLayout(null);
		instituteNameField.setBounds(730,150,500,40);
		instituteNameField.setFont(new Font("Times New Roman", Font.PLAIN, 30));
		instituteNameField.setBackground(Color.white);
		jp.add(instituteNameField);
		
		studentName = new JLabel("Student Name ",JLabel.LEFT);
		studentName.setLayout(null);
		studentName.setBounds(462,40,1050,400);
		studentName.setForeground(Color.black);
		studentName.setFont(new Font("Times New Roman", Font.BOLD, 40));
		jp.add(studentName);
		
		studentNameField = new JTextField();
		studentNameField.setLayout(null);
		studentNameField.setBounds(730,220,500,40);
		studentNameField.setFont(new Font("Times New Roman", Font.PLAIN, 30));
		studentNameField.setBackground(Color.white);
		jp.add(studentNameField);
		
		dateOfBirth = new JLabel("Date of Birth ",JLabel.LEFT);
		dateOfBirth.setLayout(null);
		dateOfBirth.setBounds(462,100,1050,400);
		dateOfBirth.setForeground(Color.black);
		dateOfBirth.setFont(new Font("Times New Roman", Font.BOLD, 35));
		jp.add(dateOfBirth);
		
		dateOfBirth = new JLabel("(dd/mm/yy) ",JLabel.LEFT);
		dateOfBirth.setLayout(null);
		dateOfBirth.setBounds(485,125,1050,400);
		dateOfBirth.setForeground(Color.black);
		dateOfBirth.setFont(new Font("Times New Roman", Font.BOLD, 28));
		jp.add(dateOfBirth);
		
		dateOfBirthField = new JTextField();
		dateOfBirthField.setLayout(null);
		dateOfBirthField.setBounds(730,290,500,40);
		dateOfBirthField.setFont(new Font("Times New Roman", Font.PLAIN, 30));
		dateOfBirthField.setBackground(Color.white);
		jp.add(dateOfBirthField);
		
		address = new JLabel("Address ",JLabel.LEFT);
		address.setLayout(null);
		address.setBounds(462,180,1050,400);
		address.setForeground(Color.black);
		address.setFont(new Font("Times New Roman", Font.BOLD, 40));
		jp.add(address);
		
		addressField = new JTextField();
		addressField.setLayout(null);
		addressField.setBounds(730,360,500,40);
		addressField.setFont(new Font("Times New Roman", Font.PLAIN, 30));
		addressField.setBackground(Color.white);
		jp.add(addressField);
		
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
		password.setBounds(462,300,1050,400);
		password.setForeground(Color.black);
		password.setFont(new Font("Times New Roman", Font.BOLD, 40));
		jp.add(password);
		
		passwordField = new JPasswordField();
		passwordField.setLayout(null);
		passwordField.setBounds(730,480,500,40);
		passwordField.setFont(new Font("Times New Roman", Font.PLAIN, 30));
		passwordField.setBackground(Color.white);
		jp.add(passwordField);
		
		mobileNumber = new JLabel("MobileNumber ",JLabel.LEFT);
		mobileNumber.setLayout(null);
		mobileNumber.setBounds(462,360,1050,400);
		mobileNumber.setForeground(Color.black);
		mobileNumber.setFont(new Font("Times New Roman", Font.BOLD, 40));
		jp.add(mobileNumber);
		
		mobileNumberField = new JTextField();
		mobileNumberField.setLayout(null);
		mobileNumberField.setBounds(730,540,500,40);
		mobileNumberField.setFont(new Font("Times New Roman", Font.PLAIN, 30));
		mobileNumberField.setBackground(Color.white);
		jp.add(mobileNumberField);
		
		gender = new JLabel("Gender ",JLabel.LEFT);
		gender.setLayout(null);
		gender.setBounds(462,600,500,40);
		gender.setForeground(Color.black);
		gender.setFont(new Font("Times New Roman", Font.BOLD, 40));
		jp.add(gender);
		
		ButtonGroup b = new ButtonGroup();

		male = new JRadioButton("Male"); female = new JRadioButton("Female"); 
		male.setLayout(null);
		male.setBounds(730,600,130,40);
		male.setBackground(Color.white);
		male.setFont(new Font("Times New Roman", Font.BOLD, 40));
		b.add(male);
		jp.add(male);
		
		female = new JRadioButton("Female");
		female.setLayout(null);
		female.setBounds(950,600,170,40);
		female.setBackground(Color.white);
		female.setFont(new Font("Times New Roman", Font.BOLD, 40));
		b.add(female);
		jp.add(female);
		
		standard = new JLabel("Standard ",JLabel.LEFT);
		standard.setLayout(null);
		standard.setBounds(462,650,500,40);
		standard.setForeground(Color.black);
		standard.setFont(new Font("Times New Roman", Font.BOLD, 40));
		jp.add(standard);
		
		standardField = new JTextField();
		standardField.setLayout(null);
		standardField.setBounds(730,650,500,40);
		standardField.setFont(new Font("Times New Roman", Font.PLAIN, 30));
		standardField.setBackground(Color.white);
		jp.add(standardField);
		
		age = new JLabel("Age ",JLabel.LEFT);
		age.setLayout(null);
		age.setBounds(462,705,300,45);
		age.setForeground(Color.black);
		age.setFont(new Font("Times New Roman", Font.BOLD, 40));
		jp.add(age);
		
		ageField = new JTextField();
		ageField.setLayout(null);
		ageField.setBounds(730,705,500,40);
		ageField.setFont(new Font("Times New Roman", Font.PLAIN, 30));
		ageField.setBackground(Color.white);
		jp.add(ageField);
		
		submitButton = new JButton("Submit");
		submitButton.setLayout(null);
		submitButton.setBounds(760,760,420,45);
		submitButton.setFont(new Font("Times New Roman", Font.PLAIN, 40));
		jp.add(submitButton);
		
		loginButton = new JButton("Already have an account");
		loginButton.setLayout(null);
		loginButton.setBounds(760,815,420,45);
		loginButton.setFont(new Font("Times New Roman", Font.PLAIN, 30));
		jp.add(loginButton);
		
		setTitle("Registration Form");
		setSize(1990,1030);
		setVisible(true);
		
		submitButton.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent ae) {
				String instituteName = instituteNameField.getText();
				String studentName = studentNameField.getText();
				String dateOfBirth = dateOfBirthField.getText();
				String address = addressField.getText();
				String username = usernameField.getText();
				String password = new String(passwordField.getPassword());
				String mobileNumber = mobileNumberField.getText();
				String standard = standardField.getText();
				String age = ageField.getText();
				String gender = "";
				boolean flag = false;
				if(male.isSelected()) {
					gender = "Male";
					flag = true;
				}
				else if(female.isSelected()) {
					gender = "Female";
					flag = true;
				}
				if( instituteName.trim().isEmpty() || studentName.trim().isEmpty() ||
					dateOfBirth.trim().isEmpty() || address.trim().isEmpty() ||
					username.trim().isEmpty() || password.trim().isEmpty() ||
					mobileNumber.trim().isEmpty() || flag==false || standard.trim().isEmpty()
					|| age.trim().isEmpty()) {
					JOptionPane.showMessageDialog(submitButton,"Enter Details");
				}
				else {
				try {
					Class.forName("oracle.jdbc.driver.OracleDriver");
					Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","nikhil");
					PreparedStatement ps =con.prepareStatement("insert into registration_form values(rid.nextval,?,?,?,?,?,?,?,?,?,?)");
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
					con.close();
				}
				catch(Exception e) {
					e.printStackTrace();
				} 
				JOptionPane.showMessageDialog(submitButton,"Registered");
				dispose();
				}
			}
				});
		
		loginButton.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent ae) {
				StudentLogin sl = new StudentLogin();
				sl.setVisible(true);
				dispose();
				}
				});
		
	}
	
	public static void main(String[] arg) {
		RegistrationForm rf = new RegistrationForm();
	}
}
/*
Institute name
student name
Date of Birth
address
username
password
mobile number
*/