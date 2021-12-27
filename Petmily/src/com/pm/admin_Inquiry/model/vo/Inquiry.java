package com.pm.admin_Inquiry.model.vo;

import java.util.Date;

public class Inquiry {
	
	private int pinquiryNo;
	private String memNo;
	private String productNo;
	private String pinquiryTitle;
	private String pinquiryContent;
	private String pinquiryDate;
	private String managerNo;
	private String replyContent;
	private String replyDate;
	private String secret;
	private int count;
	private String status;
	
	public Inquiry() {}

	public Inquiry(int pinquiryNo, String memNo, String productNo, String pinquiryTitle, String pinquiryContent,
			String pinquiryDate, String managerNo, String replyContent, String replyDate, String secret, int count,
			String status) {
		super();
		this.pinquiryNo = pinquiryNo;
		this.memNo = memNo;
		this.productNo = productNo;
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

	public Inquiry(int pinquiryNo, String memNo, String productNo, String pinquiryTitle, String pinquiryDate,
			String managerNo) {
		super();
		this.pinquiryNo = pinquiryNo;
		this.memNo = memNo;
		this.productNo = productNo;
		this.pinquiryTitle = pinquiryTitle;
		this.pinquiryDate = pinquiryDate;
		this.managerNo = managerNo;
	}
	
	

	public Inquiry(int pinquiryNo, String memNo, String productNo, String pinquiryTitle, String pinquiryDate,
			String managerNo, String replyContent, String replyDate) {
		super();
		this.pinquiryNo = pinquiryNo;
		this.memNo = memNo;
		this.productNo = productNo;
		this.pinquiryTitle = pinquiryTitle;
		this.pinquiryDate = pinquiryDate;
		this.managerNo = managerNo;
		this.replyContent = replyContent;
		this.replyDate = replyDate;
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

	public String getProductNo() {
		return productNo;
	}

	public void setProductNo(String productNo) {
		this.productNo = productNo;
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
		return "Inquiry [pinquiryNo=" + pinquiryNo + ", memNo=" + memNo + ", productNo=" + productNo
				+ ", pinquiryTitle=" + pinquiryTitle + ", pinquiryContent=" + pinquiryContent + ", pinquiryDate="
				+ pinquiryDate + ", managerNo=" + managerNo + ", replyContent=" + replyContent + ", replyDate="
				+ replyDate + ", secret=" + secret + ", count=" + count + ", status=" + status + "]";
	}

	
	

}
