import javax.swing.*;
import javax.swing.border.Border;

import java.awt.*;
import java.awt.event.*;
import java.sql.*;

public class Feedback extends JFrame{
	private JPanel jp;
	private JLabel title;
	private JTextArea textArea;
	private JButton submit;
	
	public Feedback() {
	setDefaultCloseOperation(JFrame.DISPOSE_ON_CLOSE);
	setLayout(null);
	getContentPane().setBackground(Color.orange);
	
	jp = new JPanel();
	jp.setLayout(null);
	jp.setBounds(40,40,1840,918);
	jp.setBackground(Color.white);
	setTitle("Feedback");
	setSize(1990,1030);
	setVisible(true);
	add(jp);
	
	title = new JLabel("Feedback ",JLabel.CENTER);
	title.setLayout(null);
	title.setBounds(430,-120,1050,400);
	title.setForeground(Color.blue);
	title.setFont(new Font("Times New Roman", Font.BOLD, 90));
	jp.add(title);
	
	textArea = new JTextArea();
	textArea.setLayout(null);
	textArea.setBounds(430,160,1050,600);
	textArea.setForeground(Color.black);
	textArea.setFont(new Font("Times New Roman", Font.PLAIN, 30));
	jp.add(textArea);
	
	Border border = BorderFactory.createLineBorder(Color.black, 2);
	textArea.setBorder(border);
	
	submit = new JButton("Submit");
	submit.setLayout(null);
	submit.setBounds(730,790,380,60);
	submit.setFont(new Font("Times New Roman", Font.PLAIN, 40));
	jp.add(submit);
	
	submit.addActionListener(new ActionListener() {
		public void actionPerformed(ActionEvent ae) {
			String feedback = textArea.getText();
			if(feedback.trim().isEmpty()) {
				JOptionPane.showMessageDialog(submit,"Please enter the feedback...");
			}
			else {
			try {
				Class.forName("oracle.jdbc.driver.OracleDriver");
				Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","nikhil");
				PreparedStatement ps =con.prepareStatement("insert into feedback values(fid.nextval,?)");
				ps.setString(1,feedback);
				ps.executeUpdate();
				con.close();
			}
			catch(Exception e) {
				e.printStackTrace();
			} 
			JOptionPane.showMessageDialog(submit,"Submitted");
			dispose();
			Feedback home = new Feedback();
			}
		}
			});
	
	}
	public static void main(String[] arg) {
		Feedback home = new Feedback();
}
}
