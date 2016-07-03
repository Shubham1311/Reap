package com.service;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.hibernate.Employee;
import com.hibernate.HibernateUtil;

public class LoginService {
	public boolean authenticateUser(String emailID, String password) {
		Employee user = getUserByEmailId(emailID);
		if (user != null && user.getEmailID().equals(emailID) && user.getPassword().equals(password)) {
			return true;
		} else {
			return false;
		}
	}

	public Employee getUserByEmailId(String emailID) {
		Session session = HibernateUtil.openSession();
		Transaction tx = null;
		Employee user = null;
		try {
			tx = session.getTransaction();
			tx.begin();
			org.hibernate.Query query = session.createQuery("from employee where emailID='" + emailID + "'");
			user = (Employee)query.uniqueResult();
			tx.commit();
		} catch (Exception e) {
			if (tx != null) {
				tx.rollback();
			}
			e.printStackTrace();
		} finally {
			session.close();
		}
		return user;
	}
}
