package com.hibernate;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;

@Entity(name = "post")
public class Post {
	@Id
	@Column(nullable= false)
	private int postId;
	@Column(nullable= false, length=10)
	private int empIdReceive;
	@Column(nullable= false, length=10)
	private int empIdGiving;
	@Column(nullable= false, length=20)
	private String badge;
	@Column(nullable= false, length=20)
	private String karma;
	@Column(nullable= false, length=1000)
	private String postDescription;
	@Column(nullable= false)
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
