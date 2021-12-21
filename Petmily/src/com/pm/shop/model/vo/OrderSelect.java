package com.pm.shop.model.vo;

import java.sql.Date;

public class OrderSelect {
	private int orderPnum; 			// 주문별 상품번호
	private int orderNo; 			// 주문번호
	private int productNo; 			// 상품번호
	private String pOption; 		// 상품옵션
	private int pAmount; 			// 상품수량
	private String productName; 	// 상품명
	private int price; 				// 가격
	private Date orderDate; 		// 주문날짜

	private String orderPoption; 	// 주문상품 옵션
	private int orderPamount; 		// 주문상품 수량


	
	public OrderSelect() {}


	public OrderSelect(int orderPnum, int orderNo, int productNo, String pOption, int pAmount, String productName,
			int price, Date orderDate, String orderPoption, int orderPamount) {
		super();
		this.orderPnum = orderPnum;
		this.orderNo = orderNo;
		this.productNo = productNo;
		this.pOption = pOption;
		this.pAmount = pAmount;
		this.productName = productName;
		this.price = price;
		this.orderDate = orderDate;
		this.orderPoption = orderPoption;
		this.orderPamount = orderPamount;
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
	
	public OrderSelect(String orderPoption, int orderPamount, int price, String product_name) {
		super();
		this.orderPoption = orderPoption;
		this.orderPamount = orderPamount;
		this.price = price;
		this.productName = product_name;
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


	public String getOrderPoption() {
		return orderPoption;
	}


	public void setOrderPoption(String orderPoption) {
		this.orderPoption = orderPoption;
	}


	public int getOrderPamount() {
		return orderPamount;
	}


	public void setOrderPamount(int orderPamount) {
		this.orderPamount = orderPamount;
	}


	@Override
	public String toString() {
		return "OrderSelect [orderPnum=" + orderPnum + ", orderNo=" + orderNo + ", productNo=" + productNo
				+ ", pOption=" + pOption + ", pAmount=" + pAmount + ", productName=" + productName + ", price=" + price
				+ ", orderDate=" + orderDate + ", orderPoption=" + orderPoption + ", orderPamount=" + orderPamount
				+ "]";
	}

	
	
	
	
}
