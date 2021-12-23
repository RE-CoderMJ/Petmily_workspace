package com.pm.shopping.model.vo;

public class ShoppingQna {
	
	private int pinquiryNo;
	private String memNo;
	private String memberNick;
	private String productNo;
	private String productName;
	private String pinquiryTitle;
	private String pinquiryContent;
	private String pinquiryDate;
	private String managerNo;
	private String replyContent;
	private String replyDate; 
	private String secret;
	private int count;
	private String status;
	
	public ShoppingQna() {}

	public ShoppingQna(int pinquiryNo, String memNo, String memberNick, String productNo, String productName,
			String pinquiryTitle, String pinquiryContent, String pinquiryDate, String managerNo, String replyContent,
			String replyDate, String secret, int count, String status) {
		super();
		this.pinquiryNo = pinquiryNo;
		this.memNo = memNo;
		this.memberNick = memberNick;
		this.productNo = productNo;
		this.productName = productName;
		this.pinquiryTitle = pinquiryTitle;
		this.pinquiryContent = pinquiryContent;
		this.pinquiryDate = pinquiryDate;
		this.managerNo = managerNo;
		this.replyContent = replyContent;
		this.replyDate = replyDate;
		this.secret = secret;
		this.count = count;
		this.status = status;
	}

	public int getPinquiryNo() {
		return pinquiryNo;
	}

	public void setPinquiryNo(int pinquiryNo) {
		this.pinquiryNo = pinquiryNo;
	}

	public String getMemNo() {
		return memNo;
	}

	public void setMemNo(String memNo) {
		this.memNo = memNo;
	}

	public String getMemberNick() {
		return memberNick;
	}

	public void setMemberNick(String memberNick) {
		this.memberNick = memberNick;
	}

	public String getProductNo() {
		return productNo;
	}

	public void setProductNo(String productNo) {
		this.productNo = productNo;
	}

	public String getProductName() {
		return productName;
	}

	public void setProductName(String productName) {
		this.productName = productName;
	}

	public String getPinquiryTitle() {
		return pinquiryTitle;
	}

	public void setPinquiryTitle(String pinquiryTitle) {
		this.pinquiryTitle = pinquiryTitle;
	}

	public String getPinquiryContent() {
		return pinquiryContent;
	}

	public void setPinquiryContent(String pinquiryContent) {
		this.pinquiryContent = pinquiryContent;
	}

	public String getPinquiryDate() {
		return pinquiryDate;
	}

	public void setPinquiryDate(String pinquiryDate) {
		this.pinquiryDate = pinquiryDate;
	}

	public String getManagerNo() {
		return managerNo;
	}

	public void setManagerNo(String managerNo) {
		this.managerNo = managerNo;
	}

	public String getReplyContent() {
		return replyContent;
	}

	public void setReplyContent(String replyContent) {
		this.replyContent = replyContent;
	}

	public String getReplyDate() {
		return replyDate;
	}

	public void setReplyDate(String replyDate) {
		this.replyDate = replyDate;
	}

	public String getSecret() {
		return secret;
	}

	public void setSecret(String secret) {
		this.secret = secret;
	}

	public int getCount() {
		return count;
	}

	public void setCount(int count) {
		this.count = count;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	@Override
	public String toString() {
		return "ShoppingQna [pinquiryNo=" + pinquiryNo + ", memNo=" + memNo + ", memberNick=" + memberNick
				+ ", productNo=" + productNo + ", productName=" + productName + ", pinquiryTitle=" + pinquiryTitle
				+ ", pinquiryContent=" + pinquiryContent + ", pinquiryDate=" + pinquiryDate + ", managerNo=" + managerNo
				+ ", replyContent=" + replyContent + ", replyDate=" + replyDate + ", secret=" + secret + ", count="
				+ count + ", status=" + status + "]";
	}
	
	
	
	
	

}	