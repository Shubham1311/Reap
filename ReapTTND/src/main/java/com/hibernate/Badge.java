package com.hibernate;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.OneToMany;

@Entity(name = "badge")
public class Badge {
	@Id
	@Column(nullable= false, length=30)
	private String empType;
	@Column(nullable= true, length=10)
	private int gold;
	@Column(nullable= true, length=10)
	private int goldWeight;
	@Column(nullable= true, length=10)
	private int silver;
	@Column(nullable= true, length=10)
	private int silverWeight;
	@Column(nullable= true, length=10)
	private int bronze;
	@Column(nullable= true, length=10)
	private int bronzeWeight;

	@OneToMany(mappedBy = "badge")
	List<Employee> emp = new ArrayList<Employee>();

	public List<Employee> getEmp() {
		return emp;
	}

	public void setEmp(List<Employee> emp) {
		this.emp = emp;
	}

	public String getEmpType() {
		return empType;
	}

	public void setEmpType(String empType) {
		this.empType = empType;
	}

	public int getGold() {
		return gold;
	}

	public void setGold(int gold) {
		this.gold = gold;
	}

	public int getGoldWeight() {
		return goldWeight;
	}

	public void setGoldWeight(int goldWeight) {
		this.goldWeight = goldWeight;
	}

	public int getSilver() {
		return silver;
	}

	public void setSilver(int silver) {
		this.silver = silver;
	}

	public int getSilverWeight() {
		return silverWeight;
	}

	public void setSilverWeight(int silverWeight) {
		this.silverWeight = silverWeight;
	}

	public int getBronze() {
		return bronze;
	}

	public void setBronze(int bronze) {
		this.bronze = bronze;
	}

	public int getBronzeWeight() {
		return bronzeWeight;
	}

	public void setBronzeWeight(int bronzeWeight) {
		this.bronzeWeight = bronzeWeight;
	}
}
