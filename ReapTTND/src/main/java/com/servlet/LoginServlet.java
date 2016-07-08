package com.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hibernate.Employee;
import com.service.LoginService;

public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String emailID = request.getParameter("emailID");
		String password = request.getParameter("password");
		LoginService loginService = new LoginService();
		boolean result = loginService.authenticateUser(emailID, password);
		Employee user = loginService.getUserByEmailId(emailID);
		if (result == true) {
			request.getSession().setAttribute("user", user);
			response.sendRedirect("ReapDashboard.jsp");
		} else {
			response.sendRedirect("ReapLogin.jsp");
		}
	}
}
