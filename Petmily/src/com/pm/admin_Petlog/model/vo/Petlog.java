package com.pm.admin_Petlog.model.vo;

public class Petlog {
	
	private int petlogNo;
	private String memNo;
	private String enrollDate;
	private String petlogContent;
	private String status;
	
	private String titleImg; // 대표이미지경로를 보관할 필드
	
	public Petlog() {}

	public Petlog(int petlogNo, String memNo, String enrollDate, String petlogContent, String status) {
		super();
		this.petlogNo = petlogNo;
		this.memNo = memNo;
		this.enrollDate = enrollDate;
		this.petlogContent = petlogContent;
		this.status = status;
	}
	
	

	public Petlog(String memNo, String titleImg) {
		super();
		this.memNo = memNo;
		this.titleImg = titleImg;
	}

	public int getPetlogNo() {
		return petlogNo;
	}

	public void setPetlogNo(int petlogNo) {
		this.petlogNo = petlogNo;
	}

	public String getMemNo() {
		return memNo;
	}

	public void setMemNo(String memNo) {
		this.memNo = memNo;
	}

	public String getEnrollDate() {
		return enrollDate;
	}

	public void setEnrollDate(String enrollDate) {
		this.enrollDate = enrollDate;
	}

	public String getPetlogContent() {
		return petlogContent;
	}

	public void setPetlogContent(String petlogContent) {
		this.petlogContent = petlogContent;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}
	
	

	public String getTitleImg() {
		return titleImg;
	}

	public void setTitleImg(String titleImg) {
		this.titleImg = titleImg;
	}

	@Override
	public String toString() {
		return "Petlog [petlogNo=" + petlogNo + ", memNo=" + memNo + ", enrollDate=" + enrollDate + ", petlogContent="
				+ petlogContent + ", status=" + status + "]";
	}


	
	
	

}
