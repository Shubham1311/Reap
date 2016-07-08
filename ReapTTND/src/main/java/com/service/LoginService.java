package com.service;

import com.Dao.LoginDao;
import com.hibernate.Employee;

public class LoginService {
	public boolean authenticateUser(String emailID, String password) {
		boolean result = validate(emailID, password);
		if (result == false) {
			return false;
		}
		Employee user = getUserByEmailId(emailID);
		if (user != null && user.getEmailID().equals(emailID) && user.getPassword().equals(password)) {
			return true;
		} else {
			return false;
		}
	}

	public boolean validate(String email, String password) {
		// Name: Alphabets, numbers and space(' ') no special characters min 3
		// and max 20 characters.
		String ck_name = "/^[A-Za-z0-9 ]{3,20}$/";
		// Email: Standard email address
		String ck_email = "^([\\w-]+(?:\\.[\\w-]+)*)@((?:[\\w-]+\\.)*\\w[\\w-]{0,66})\\.([a-z]{2,6}(?:\\.[a-z]{2})?)$";
		// UserId: Supports alphabets and numbers no special characters except
		// underscore('_') min 3 and max 20 characters.
		String ck_username = "/^[A-Za-z0-9_]{1,20}$/";
		// Password: Password supports special characters and here min length 6
		// max 20 charters.
		String ck_password = "^[A-Za-z0-9!@#$%^&*()_]{6,20}$";

		String EMAIL_REGEX = "^[\\w-_\\.+]*[\\w-_\\.]\\@([\\w]+\\.)+[\\w]+[\\w]$";

		if (!email.matches(EMAIL_REGEX)) {
			return false;
		}

		/*
		 * if (!ck_email.matches(email)) { return false; }
		 */
		if (!password.matches(ck_password)) {
			return false;
		}

		return true;
	}

	public Employee getUserByEmailId(String emailID) {
		LoginDao loginDao = new LoginDao();
		Employee user = loginDao.getUserByEmailId(emailID);
		return user;
	}
}
