package com.Dao;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.criterion.Restrictions;

import com.hibernate.Employee;
import com.hibernate.HibernateUtil;

public class LoginDao {
	public Employee getUserByEmailId(String emailID) {
		Session session = HibernateUtil.openSession();
		Transaction tx = null;
		Employee user = null;
		try {
			tx = session.getTransaction();
			tx.begin();
			Criteria criteria = session.createCriteria(Employee.class);
			criteria.add(Restrictions.eq("emailID", emailID));
			user = (Employee) criteria.uniqueResult();
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
