package com.pm.shop.model.vo;

public class Cart {
	private int memNo;
	private int productNo;
	private String productOp;
	private int amount;
	private int price;
	
	public Cart() {}

	public Cart(int memNo, int productNo, String productOp, int amount, int price) {
		super();
		this.memNo = memNo;
		this.productNo = productNo;
		this.productOp = productOp;
		this.amount = amount;
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

	public String getProductOp() {
		return productOp;
	}

	public void setProductOp(String productOp) {
		this.productOp = productOp;
	}

	public int getAmount() {
		return amount;
	}

	public void setAmount(int amount) {
		this.amount = amount;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	@Override
	public String toString() {
		return "Cart [memNo=" + memNo + ", productNo=" + productNo + ", productOp=" + productOp + ", amount=" + amount
				+ ", price=" + price + "]";
	}
	
	
}
