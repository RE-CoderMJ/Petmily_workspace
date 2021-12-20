package com.pm.admin_Shopping.model.vo;

public class AdminShopping {
	
	private int productNo;
	private String category;
	private String productName;
	private String productOp;
	private int price;
	private String explain;
	private String detail;
	private int amount;
	private String basicImg;
	private int managerNo;
	
	public AdminShopping() {}

	public AdminShopping(int productNo, String category, String productName, String productOp, int price,
			String explain, String detail, int amount, String basicImg, int managerNo) {
		super();
		this.productNo = productNo;
		this.category = category;
		this.productName = productName;
		this.productOp = productOp;
		this.price = price;
		this.explain = explain;
		this.detail = detail;
		this.amount = amount;
		this.basicImg = basicImg;
		this.managerNo = managerNo;
	}
	
	public AdminShopping(int productNo, String category, String productName, int price, int amount) {
		super();
		this.productNo = productNo;
		this.category = category;
		this.productName = productName;
		this.price = price;
		this.amount = amount;
	}

	public int getProductNo() {
		return productNo;
	}

	public void setProductNo(int productNo) {
		this.productNo = productNo;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public String getProductName() {
		return productName;
	}

	public void setProductName(String productName) {
		this.productName = productName;
	}

	public String getProductOp() {
		return productOp;
	}

	public void setProductOp(String productOp) {
		this.productOp = productOp;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public String getExplain() {
		return explain;
	}

	public void setExplain(String explain) {
		this.explain = explain;
	}

	public String getDetail() {
		return detail;
	}

	public void setDetail(String detail) {
		this.detail = detail;
	}

	public int getAmount() {
		return amount;
	}

	public void setAmount(int amount) {
		this.amount = amount;
	}

	public String getBasicImg() {
		return basicImg;
	}

	public void setBasicImg(String basicImg) {
		this.basicImg = basicImg;
	}

	public int getManagerNo() {
		return managerNo;
	}

	public void setManagerNo(int managerNo) {
		this.managerNo = managerNo;
	}

	@Override
	public String toString() {
		return "AdminShopping [productNo=" + productNo + ", category=" + category + ", productName=" + productName
				+ ", productOp=" + productOp + ", price=" + price + ", explain=" + explain + ", detail=" + detail
				+ ", amount=" + amount + ", basicImg=" + basicImg + ", managerNo=" + managerNo + "]";
	}
	
	
}
