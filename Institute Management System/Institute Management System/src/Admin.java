import java.awt.Color;
import java.awt.Font;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JPanel;

public class Admin extends JFrame{
	private JPanel jp;
	private JLabel title;
	private JButton registrationDetails, scheduleDetails, facultyDetails;
	
	public Admin() {
		setDefaultCloseOperation(JFrame.DISPOSE_ON_CLOSE);
		setLayout(null);
		getContentPane().setBackground(Color.orange);
		
		jp = new JPanel();
		jp.setLayout(null);
		jp.setBounds(40,40,1840,918);
		jp.setBackground(Color.white);
		setTitle("Admin");
		setSize(1990,1030);
		setVisible(true);
		add(jp);
		
		title = new JLabel("Admin ",JLabel.CENTER);
		title.setLayout(null);
		title.setBounds(400,100,1050,400);
		title.setForeground(Color.blue);
		title.setFont(new Font("Times New Roman", Font.BOLD, 70));
		jp.add(title);
		
		registrationDetails = new JButton("Registration Details");
		registrationDetails.setLayout(null);
		registrationDetails.setBounds(730,400,380,60);
		registrationDetails.setFont(new Font("Times New Roman", Font.PLAIN, 40));
		jp.add(registrationDetails);
		
		scheduleDetails = new JButton("Schedule Details");
		scheduleDetails.setLayout(null);
		scheduleDetails.setBounds(730,520,380,60);
		scheduleDetails.setFont(new Font("Times New Roman", Font.PLAIN, 40));
		jp.add(scheduleDetails);
		
		facultyDetails = new JButton("Faculty Details");
		facultyDetails.setLayout(null);
		facultyDetails.setBounds(730,640,380,60);
		facultyDetails.setFont(new Font("Times New Roman", Font.PLAIN, 40));
		jp.add(facultyDetails);
		
		registrationDetails.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent ae) {
				RegistrationDetails rd = new RegistrationDetails();
				rd.setVisible(true);
				}
				});
		
		scheduleDetails.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent ae) {
				ScheduleDetails sd = new ScheduleDetails();
				sd.setVisible(true);
				}
				});
		
		facultyDetails.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent ae) {
				Faculty faculty = new Faculty();
				faculty.setVisible(true);
				}
				});
	}
	
	public static void main(String[] arg) {
		Admin admin = new Admin();
		admin.setVisible(true);
}
}
