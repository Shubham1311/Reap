package com.servlet;

import java.io.IOException;
import java.util.Properties;

import javax.mail.PasswordAuthentication;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.mail.*;
import javax.mail.internet.*;

import com.hibernate.Employee;
import com.service.LoginService;
import com.service.RegisterService;

public class ReapForgetPasswordValidate extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String emailID = request.getParameter("emailID");
		RegisterService registerService = new RegisterService();
		boolean result = registerService.isUserExistsbyEmailID(emailID);
		if (result == true) {
			try {
				Properties props = new Properties();
				props.put("mail.smtp.host", "smtp.gmail.com");
				props.put("mail.smtp.socketFactory.port", "465");
				props.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
				props.put("mail.smtp.auth", "true");
				props.put("mail.smtp.port", "465");

				LoginService loginService = new LoginService();
				Employee user = loginService.getUserByEmailId(emailID);
				String password = user.getPassword();
				ServletContext context=getServletContext();
				final String ReapEmailID=context.getInitParameter("ReapEmailID");
				final String ReapEmailPassword=context.getInitParameter("ReapEmailPassword");  
		        Session session = Session.getDefaultInstance(props, new javax.mail.Authenticator() 
		        {
		            @Override
		            protected PasswordAuthentication getPasswordAuthentication()
		            {
		                return new PasswordAuthentication(ReapEmailID, ReapEmailPassword);
		            }  
		        });
		        MimeMessage message = new MimeMessage(session);
		        message.setFrom(new InternetAddress(ReapEmailID));
		        message.addRecipient(Message.RecipientType.TO,new InternetAddress(emailID));
		        String con = "Dear User, <br><br><br>The request for the password has been made from the associated username and email Id. <br><br>The requested password is : " + password + ". <br><br>If the request has not been made by you, please ignore the mail. <br><br><br><br>Thank you, <br><br>To The New Digital, Noida" ;
		        message.setSubject("Request for Reap Password");
		        MimeBodyPart messageBodyPart = new MimeBodyPart();
		        messageBodyPart.setContent(con, "text/html");
		        Multipart multipart = new MimeMultipart();
		        multipart.addBodyPart(messageBodyPart);
		        message.setContent(multipart);
		        Transport.send(message);
			} catch (Exception e) {
				e.printStackTrace();
			}
			response.sendRedirect("ReapLogin.jsp");
		} else {
			/*response.sendRedirect("ReapLogin.jsp");*/
		}
	}
}
