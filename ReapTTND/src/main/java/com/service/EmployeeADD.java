package com.service;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

import com.hibernate.*;

public class EmployeeADD {
	public static void main(String args[]) {
		/*Session session = null;
		@SuppressWarnings("deprecation")
		SessionFactory sessionFactory = new Configuration().configure("hibernate.cfg.xml").buildSessionFactory();
		session = sessionFactory.openSession();
		session.beginTransaction();
		
		Employee emp = new Employee();
		emp.setEmpId("1");
		emp.setEmailID("prashant.gupta@tothenew.com");
		emp.setPassword("abc321123");
		emp.setName("prashant");
		emp.setPractice("Intern");
		emp.setServiceLine("TTND-Intern");
		
		Employee emp1 = new Employee();
		emp1.setEmpId("2");
		emp1.setName("garima");
		emp1.setEmailID("garima2707@gmail.com");
		emp1.setPassword("abc321123");
		emp1.setPractice("Intern");
		emp1.setServiceLine("TTND-Intern");
		
		Badge badge = new Badge();
		badge.setEmpType("Supervisor");
		badge.setGold(6);
		badge.setSilver(4);
		badge.setBronze(2);
		badge.setGoldWeight(30);
		badge.setSilverWeight(20);
		badge.setBronzeWeight(10);
		
		Badge badge1 = new Badge();
		badge1.setEmpType("Practice Head");
		badge1.setGold(9);
		badge1.setSilver(6);
		badge1.setBronze(3);
		badge1.setGoldWeight(30);
		badge1.setSilverWeight(20);
		badge1.setBronzeWeight(10);
		
		Badge badge2 = new Badge();
		badge2.setEmpType("User");
		badge2.setGold(3);
		badge2.setSilver(2);
		badge2.setBronze(1);
		badge2.setGoldWeight(30);
		badge2.setSilverWeight(20);
		badge2.setBronzeWeight(10);
		
		badge.getEmp().add(emp);
		badge.getEmp().add(emp1);
		emp1.setBadge(badge);
		emp.setBadge(badge);
		
		session.save(emp);
		session.save(emp1);
		session.save(badge);
		session.save(badge1);
		session.save(badge2);
		session.getTransaction().commit();
		session.close();*/
	}
}
