package com.pm.shop.model.vo;

public class OrderProduct {
	private int orderPnum;
	private int orderNo;
	private int productNo;
	private String orderPoption;
	private int orderPamount;
	private int price;
	private String product_name;
	
	public OrderProduct() {}

	

	public OrderProduct(int orderPnum, int orderNo, int productNo, String orderPoption, int orderPamount, int price,
			String product_name) {
		super();
		this.orderPnum = orderPnum;
		this.orderNo = orderNo;
		this.productNo = productNo;
		this.orderPoption = orderPoption;
		this.orderPamount = orderPamount;
		this.price = price;
		this.product_name = product_name;
	}
	
	public OrderProduct(String orderPoption, int orderPamount, int price, String product_name) {
		super();
		this.orderPoption = orderPoption;
		this.orderPamount = orderPamount;
		this.price = price;
		this.product_name = product_name;
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
	
	

	public int getPrice() {
		return price;
	}



	public void setPrice(int price) {
		this.price = price;
	}



	public String getProduct_name() {
		return product_name;
	}



	public void setProduct_name(String product_name) {
		this.product_name = product_name;
	}



	@Override
	public String toString() {
		return "OrderProduct [orderPnum=" + orderPnum + ", orderNo=" + orderNo + ", productNo=" + productNo
				+ ", orderPoption=" + orderPoption + ", orderPamount=" + orderPamount + "]";
	}
	
	
	
}
