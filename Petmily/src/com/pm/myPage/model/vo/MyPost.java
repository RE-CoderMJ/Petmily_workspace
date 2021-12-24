package com.pm.myPage.model.vo;

import java.sql.Date;

public class MyPost {
	
	private String title;
	private Date enrollDate;
	private int count;
	private int memNo;
	private String category;
	
	public MyPost() {
		
	}

	public MyPost(String title, Date enrollDate, int count, int memNo, String category) {
		super();
		this.title = title;
		this.enrollDate = enrollDate;
		this.count = count;
		this.memNo = memNo;
		this.category = category;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public Date getEnrollDate() {
		return enrollDate;
	}

	public void setEnrollDate(Date enrollDate) {
		this.enrollDate = enrollDate;
	}

	public int getCount() {
		return count;
	}

	public void setCount(int count) {
		this.count = count;
	}

	public int getMemNo() {
		return memNo;
	}

	public void setMemNo(int memNo) {
		this.memNo = memNo;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	@Override
	public String toString() {
		return "MyPost [title=" + title + ", enrollDate=" + enrollDate + ", count=" + count + ", memNo=" + memNo
				+ ", category=" + category + "]";
	}
	
}
