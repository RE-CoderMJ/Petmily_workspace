package com.pm.petLog.model.vo;

public class PetLog {
	private int petLogNo;
	private String memNo; //작성자 회원번호, 펫룸이름으로 조회됨
	private int memNo2;
	private String enrollDate;
	private String petLogContent;
	private String status;
	private String titleImg;
	private String roomName;

	public PetLog () {}

	public PetLog(int petLogNo, String memNo, String enrollDate, String petLogContent, String status) {
		super();
		this.petLogNo = petLogNo;
		this.memNo = memNo;
		this.enrollDate = enrollDate;
		this.petLogContent = petLogContent;
		this.status = status;
	}

	
	
	public PetLog(int petLogNo, String memNo, int memNo2, String enrollDate, String petLogContent, String status,
			String titleImg, String roomName) {
		super();
		this.petLogNo = petLogNo;
		this.memNo = memNo;
		this.memNo2 = memNo2;
		this.enrollDate = enrollDate;
		this.petLogContent = petLogContent;
		this.status = status;
		this.titleImg = titleImg;
		this.roomName = roomName;
	}

	
	public int getMemNo2() {
		return memNo2;
	}

	public void setMemNo2(int memNo2) {
		this.memNo2 = memNo2;
	}

	public String getRoomName() {
		return roomName;
	}

	public void setRoomName(String roomName) {
		this.roomName = roomName;
	}

	public String getTitleImg() {
		return titleImg;
	}

	public void setTitleImg(String titleImg) {
		this.titleImg = titleImg;
	}

	public int getPetLogNo() {
		return petLogNo;
	}

	public void setPetLogNo(int petLogNo) {
		this.petLogNo = petLogNo;
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

	public String getPetLogContent() {
		return petLogContent;
	}

	public void setPetLogContent(String petLogContent) {
		this.petLogContent = petLogContent;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	@Override
	public String toString() {
		return "PetLog [petLogNo=" + petLogNo + ", memNo=" + memNo + ", enrollDate=" + enrollDate + ", petLogContent="
				+ petLogContent + ", status=" + status + ", titleImg=" + titleImg + ", roomName=" + roomName + "]";
	}

	
}


