package com.hibernate;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.ManyToOne;

@Entity(name = "employee")
public class Employee {
	@Id
	@Column(nullable= false, length=10)
	private String empId;
	@Column(nullable= false, length=30)
	private String name;
	@Column(nullable= false, unique = true, length=30)
	private String emailID;
	@Column(nullable= false, length=20)
	private String password;
	@Column(nullable= false, length=30)
	private String serviceLine;
	@Column(nullable= false, length=30)
	private String practice;
	@Column(nullable= true, length=10)
	private int goldReceived;
	@Column(nullable= true, length=10)
	private int silverReceived;
	@Column(nullable= true, length=10)
	private int bronzeReceived;
	@Column(nullable= true, length=10)
	private int goldHaving;
	@Column(nullable= true, length=10)
	private int silverHaving;
	@Column(nullable= true, length=10)
	private int bronzeHaving;
	@Column(nullable= true)
	private boolean verified;
	@Column(nullable= true)
	private boolean status;

	@ManyToOne
	Badge badge = new Badge();

	public Employee() {
		super();
	}

	public Employee(String empId, String name, String emailID, String password, String serviceLine, String practice) {
		this.empId = empId;
		this.name = name;
		this.emailID = emailID;
		this.password = password;
		this.serviceLine = serviceLine;
		this.practice = practice;
	}

	public String getEmpId() {
		return empId;
	}

	public void setEmpId(String empId) {
		this.empId = empId;
	}

	public Badge getBadge() {
		return badge;
	}

	public void setBadge(Badge badge) {
		this.badge = badge;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getEmailID() {
		return emailID;
	}

	public void setEmailID(String emailID) {
		this.emailID = emailID;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getServiceLine() {
		return serviceLine;
	}

	public void setServiceLine(String serviceLine) {
		this.serviceLine = serviceLine;
	}

	public String getPractice() {
		return practice;
	}

	public void setPractice(String practice) {
		this.practice = practice;
	}

	public int getGoldReceived() {
		return goldReceived;
	}

	public void setGoldReceived(int goldReceived) {
		this.goldReceived = goldReceived;
	}

	public int getSilverReceived() {
		return silverReceived;
	}

	public void setSilverReceived(int silverReceived) {
		this.silverReceived = silverReceived;
	}

	public int getBronzeReceived() {
		return bronzeReceived;
	}

	public void setBronzeReceived(int bronzeReceived) {
		this.bronzeReceived = bronzeReceived;
	}

	public int getGoldHaving() {
		return goldHaving;
	}

	public void setGoldHaving(int goldHaving) {
		this.goldHaving = goldHaving;
	}

	public int getSilverHaving() {
		return silverHaving;
	}

	public void setSilverHaving(int silverHaving) {
		this.silverHaving = silverHaving;
	}

	public int getBronzeHaving() {
		return bronzeHaving;
	}

	public void setBronzeHaving(int bronzeHaving) {
		this.bronzeHaving = bronzeHaving;
	}

	public boolean isVerified() {
		return verified;
	}

	public void setVerified(boolean verified) {
		this.verified = verified;
	}

	public boolean isStatus() {
		return status;
	}

	public void setStatus(boolean status) {
		this.status = status;
	}
}
