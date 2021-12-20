package com.pm.admin_Review.model.vo;

public class Review {
	
	private int reviewNo;
	private String productNo;
	private String productName;
	private String memNo;
	private String memNick;
	private String reviewContent;
	private String reviewGrade;
	private String reviewDate;
	private String managerNo;
	private String replyContent;
	private String replyDate;
	private int count;
	private String status;
	
	public Review () {}

	public Review(int reviewNo, String productNo, String productName, String memNo, String memNick,
			String reviewContent, String reviewGrade, String reviewDate, String managerNo, String replyContent,
			String replyDate, int count, String status) {
		super();
		this.reviewNo = reviewNo;
		this.productNo = productNo;
		this.productName = productName;
		this.memNo = memNo;
		this.memNick = memNick;
		this.reviewContent = reviewContent;
		this.reviewGrade = reviewGrade;
		this.reviewDate = reviewDate;
		this.managerNo = managerNo;
		this.replyContent = replyContent;
		this.replyDate = replyDate;
		this.count = count;
		this.status = status;
	}

	public int getReviewNo() {
		return reviewNo;
	}

	public void setReviewNo(int reviewNo) {
		this.reviewNo = reviewNo;
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

	public String getMemNo() {
		return memNo;
	}

	public void setMemNo(String memNo) {
		this.memNo = memNo;
	}

	public String getMemNick() {
		return memNick;
	}

	public void setMemNick(String memNick) {
		this.memNick = memNick;
	}

	public String getReviewContent() {
		return reviewContent;
	}

	public void setReviewContent(String reviewContent) {
		this.reviewContent = reviewContent;
	}

	public String getReviewGrade() {
		return reviewGrade;
	}

	public void setReviewGrade(String reviewGrade) {
		this.reviewGrade = reviewGrade;
	}

	public String getReviewDate() {
		return reviewDate;
	}

	public void setReviewDate(String reviewDate) {
		this.reviewDate = reviewDate;
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
		return "Review [reviewNo=" + reviewNo + ", productNo=" + productNo + ", productName=" + productName + ", memNo="
				+ memNo + ", memNick=" + memNick + ", reviewContent=" + reviewContent + ", reviewGrade=" + reviewGrade
				+ ", reviewDate=" + reviewDate + ", managerNo=" + managerNo + ", replyContent=" + replyContent
				+ ", replyDate=" + replyDate + ", count=" + count + ", status=" + status + "]";
	}

	
	
	
	
	
}
