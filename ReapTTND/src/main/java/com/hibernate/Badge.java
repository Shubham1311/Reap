package com.hibernate;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.OneToMany;

@Entity(name = "badge")
public class Badge {
	@Id
	private String empType;
	private int gold;
	private int goldWeight;
	private int silver;
	private int silverWeight;
	private int bronze;
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
