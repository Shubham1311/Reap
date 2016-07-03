package com.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hibernate.Badge;
import com.hibernate.Employee;
import com.service.RegisterService;

public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String empId = request.getParameter("empId");
		String name = request.getParameter("name");
		String emailID = request.getParameter("emailID");
		String password = request.getParameter("password");
		String serviceLine = request.getParameter("serviceLine");
		String practice = request.getParameter("practice");
		String empType = request.getParameter("empType");
		Employee user = new Employee(empId, name, emailID, password, serviceLine, practice);
		Badge badge = new Badge();
		badge.setEmpType(empType);
		badge.getEmp().add(user);
		user.setBadge(badge);
		try {
			RegisterService registerService = new RegisterService();
			boolean result = registerService.register(user);
			if (result) {
				response.sendRedirect("ReapLogin.jsp");
			} else {
				response.sendRedirect("ReapLogin.jsp");
			}
		} finally {
		}
	}
}
