package com.pm.shop.model.vo;

import java.sql.Date;

public class OrderSelect {
	private int orderPnum;
	private int orderNo;
	private int productNo;
	private String pOption;
	private int pAmount;
	private String productName;
	private int price;
	private Date orderDate;
	
	public OrderSelect() {}

	public OrderSelect(int orderPnum, int orderNo, int productNo, String pOption, int pAmount, String productName,
			int price, Date orderDate) {
		super();
		this.orderPnum = orderPnum;
		this.orderNo = orderNo;
		this.productNo = productNo;
		this.pOption = pOption;
		this.pAmount = pAmount;
		this.productName = productName;
		this.price = price;
		this.orderDate = orderDate;
	}
	
	



	public OrderSelect(int orderNo, String productName, String pOption, int pAmount, int price, Date orderDate) {
		super();
		this.orderNo = orderNo;
		this.productName = productName;
		this.pOption = pOption;
		this.pAmount = pAmount;
		this.price = price;
		this.orderDate = orderDate;
	}

	public int getOrderPnum() {
		return orderPnum;
	}

	public void setOrderPnum(int orderPnum) {
		this.orderPnum = orderPnum;
	}

	public int getOrderNo() {
		return orderNo;
	}

	public void setOrderNo(int orderNo) {
		this.orderNo = orderNo;
	}

	public int getProductNo() {
		return productNo;
	}

	public void setProductNo(int productNo) {
		this.productNo = productNo;
	}

	public String getpOption() {
		return pOption;
	}

	public void setpOption(String pOption) {
		this.pOption = pOption;
	}

	public int getpAmount() {
		return pAmount;
	}

	public void setpAmount(int pAmount) {
		this.pAmount = pAmount;
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

	public Date getOrderDate() {
		return orderDate;
	}

	public void setOrderDate(Date orderDate) {
		this.orderDate = orderDate;
	}

	@Override
	public String toString() {
		return "OrderSelect [orderPnum=" + orderPnum + ", orderNo=" + orderNo + ", productNo=" + productNo
				+ ", pOption=" + pOption + ", pAmount=" + pAmount + ", productName=" + productName + ", price=" + price
				+ ", orderDate=" + orderDate + "]";
	}

	
	
	
}
