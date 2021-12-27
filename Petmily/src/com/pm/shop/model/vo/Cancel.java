package com.pm.shop.model.vo;

import java.sql.Date;

public class Cancel {

	private int ccNo;				// 취소번호
	private String ccReason;		// 취소사유
	private String ccPayment;		// 결제수단
	private String ccSledding;		// 처리상태 (취소신청|취소처리중|취소처리완료)
	private int orderPnum; 			// 주문별 상품번호
	private int orderNo; 			// 주문번호
	private int productNo; 			// 상품번호
	private String productName; 	// 상품명
	private int price; 				// 가격
	private Date orderDate; 		// 주문날짜
	private String orderPoption; 	// 주문상품 옵션
	private int orderPamount; 		// 주문상품 수량
	private String memName; 
	private String phone;
	private String adderess;
	private String deliveryMemo;
	private int priceSum;
	private int amountSum;
	
	public Cancel() {}

	
	public Cancel(int ccNo, String ccReason, String ccPayment, String ccSledding, int orderPnum, int orderNo,
			int productNo, String productName, int price, Date orderDate, String orderPoption, int orderPamount,
			String memName, String phone, String adderess, String deliveryMemo) {
		super();
		this.ccNo = ccNo;
		this.ccReason = ccReason;
		this.ccPayment = ccPayment;
		this.ccSledding = ccSledding;
		this.orderPnum = orderPnum;
		this.orderNo = orderNo;
		this.productNo = productNo;
		this.productName = productName;
		this.price = price;
		this.orderDate = orderDate;
		this.orderPoption = orderPoption;
		this.orderPamount = orderPamount;
		this.memName = memName;
		this.phone = phone;
		this.adderess = adderess;
		this.deliveryMemo = deliveryMemo;
	}




	public Cancel(int orderNo, String productName, String orderPoption, int orderPamount, int price, Date orderDate,
			String ccSledding, String ccPayment) {
		super();
		this.orderNo = orderNo;
		this.productName = productName;
		this.orderPoption = orderPoption;
		this.orderPamount = orderPamount;
		this.price = price;
		this.orderDate = orderDate;
		this.ccSledding = ccSledding;
		this.ccPayment = ccPayment;
	}
	
	

	public Cancel(int orderNo, String productName, int orderPnum, String orderPoption, int orderPamount, int price,
			String memName, String phone, String adderess, String ccPayment) {
		super();
		this.orderNo = orderNo;
		this.productName = productName;
		this.orderPnum = orderPnum;
		this.orderPoption = orderPoption;
		this.orderPamount = orderPamount;
		this.price = price;
		this.memName = memName;
		this.phone = phone;
		this.adderess = adderess;
		this.ccPayment = ccPayment;
	}


	


	public Cancel(int orderNo, Date orderDate, String memName, String phone, String adderess, String deliveryMemo,
			int price) {
		super();
		this.orderNo = orderNo;
		this.orderDate = orderDate;
		this.memName = memName;
		this.phone = phone;
		this.adderess = adderess;
		this.deliveryMemo = deliveryMemo;
		this.price = price;
	}
	
	


	public Cancel(int priceSum, int amountSum) {
		super();
		this.priceSum = priceSum;
		this.amountSum = amountSum;
	}


	public int getCcNo() {
		return ccNo;
	}

	public void setCcNo(int ccNo) {
		this.ccNo = ccNo;
	}

	
	public String getCcReason() {
		return ccReason;
	}


	public void setCcReason(String ccReason) {
		this.ccReason = ccReason;
	}


	public String getCcPayment() {
		return ccPayment;
	}


	public void setCcPayment(String ccPayment) {
		this.ccPayment = ccPayment;
	}


	public String getCcSledding() {
		return ccSledding;
	}


	public void setCcSledding(String ccSledding) {
		this.ccSledding = ccSledding;
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

	public String getMemName() {
		return memName;
	}

	public void setMemName(String memName) {
		this.memName = memName;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getAdderess() {
		return adderess;
	}

	public void setAdderess(String adderess) {
		this.adderess = adderess;
	}

	public String getDeliveryMemo() {
		return deliveryMemo;
	}

	public void setDeliveryMemo(String deliveryMemo) {
		this.deliveryMemo = deliveryMemo;
	}


	public int getPriceSum() {
		return priceSum;
	}


	public void setPriceSum(int priceSum) {
		this.priceSum = priceSum;
	}


	public int getAmountSum() {
		return amountSum;
	}


	public void setAmountSum(int amountSum) {
		this.amountSum = amountSum;
	}


	@Override
	public String toString() {
		return "Cancel [ccNo=" + ccNo + ", ccReason=" + ccReason + ", ccPayment=" + ccPayment + ", ccSledding="
				+ ccSledding + ", orderPnum=" + orderPnum + ", orderNo=" + orderNo + ", productNo=" + productNo
				+ ", productName=" + productName + ", price=" + price + ", orderDate=" + orderDate + ", orderPoption="
				+ orderPoption + ", orderPamount=" + orderPamount + ", memName=" + memName + ", phone=" + phone
				+ ", adderess=" + adderess + ", deliveryMemo=" + deliveryMemo + ", priceSum=" + priceSum
				+ ", amountSum=" + amountSum + "]";
	}


		
}
