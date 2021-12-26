package com.pm.shop.model.vo;

import java.sql.Date;

public class Like {
	private int memNo;
	private int productNo;
	private Date likdDate;
	private String productName;
	private int price;
	
	public Like() {}

	public Like(int memNo, int productNo, Date likdDate, String productName, int price) {
		super();
		this.memNo = memNo;
		this.productNo = productNo;
		this.likdDate = likdDate;
		this.productName = productName;
		this.price = price;
	}
	

	public Like(int productNo, String productName, int price) {
		super();
		this.productNo = productNo;
		this.productName = productName;
		this.price = price;
	}

	public int getMemNo() {
		return memNo;
	}

	public void setMemNo(int memNo) {
		this.memNo = memNo;
	}

	public int getProductNo() {
		return productNo;
	}

	public void setProductNo(int productNo) {
		this.productNo = productNo;
	}

	public Date getLikdDate() {
		return likdDate;
	}

	public void setLikdDate(Date likdDate) {
		this.likdDate = likdDate;
	}

	public String getProductName() {
		return productName;
	}

	public void setProductName(String productName) {
		this.productName = productName;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	@Override
	public String toString() {
		return "Like [memNo=" + memNo + ", productNo=" + productNo + ", likdDate=" + likdDate + ", productName="
				+ productName + ", price=" + price + "]";
	}
	
	
}
