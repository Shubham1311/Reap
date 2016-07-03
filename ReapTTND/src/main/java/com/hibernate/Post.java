package com.hibernate;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity(name = "post")
public class Post {
	@Id
	private int postId;
	private int empIdReceive;
	private int empIdGiving;
	private String badge;
	private String karma;
	private String postDescription;
	private Date postDateTime;

	public int getPostId() {
		return postId;
	}

	public void setPostId(int postId) {
		this.postId = postId;
	}

	public int getEmpIdReceived() {
		return empIdReceive;
	}

	public void setEmpIdReceived(int empIdReceive) {
		this.empIdReceive = empIdReceive;
	}

	public int getEmpIdGiving() {
		return empIdGiving;
	}

	public void setEmpIdGiving(int empIdGiving) {
		this.empIdGiving = empIdGiving;
	}

	public String getBadge() {
		return badge;
	}

	public void setBadge(String badge) {
		this.badge = badge;
	}

	public String getKarma() {
		return karma;
	}

	public void setKarma(String karma) {
		this.karma = karma;
	}

	public String getPostDescription() {
		return postDescription;
	}

	public void setPostDescription(String postDescription) {
		this.postDescription = postDescription;
	}

	public Date getPostDateTime() {
		return postDateTime;
	}

	public void setPostDateTime(Date postDateTime) {
		this.postDateTime = postDateTime;
	}

}
