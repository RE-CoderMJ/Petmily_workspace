package com.pm.member.model.vo;

import java.sql.Date;

public class Member {
	
	private int memNo;
	private String memEmail;
	private String memPwd; 
	private String memName;
	private String memTel;
	private String nickname;
	private String postalCode;
	private String address;
	private String detailAddress;
	private Date memEnrollDate;
	private String status;
	private Date memDelDate;
	private String memDelDetail;
	private String memBlock;
	private String memImg;
	
	public Member() {
		
	}

	public Member(int memNo, String memEmail, String memPwd, String memName, String memTel, String nickname,
			String postalCode, String address, String detailAddress, Date memEnrollDate, String status, Date memDelDate,
			String memDelDetail, String memBlock, String memImg) {
		super();
		this.memNo = memNo;
		this.memEmail = memEmail;
		this.memPwd = memPwd;
		this.memName = memName;
		this.memTel = memTel;
		this.nickname = nickname;
		this.postalCode = postalCode;
		this.address = address;
		this.detailAddress = detailAddress;
		this.memEnrollDate = memEnrollDate;
		this.status = status;
		this.memDelDate = memDelDate;
		this.memDelDetail = memDelDetail;
		this.memBlock = memBlock;
		this.memImg = memImg;
	}

	public int getMemNo() {
		return memNo;
	}

	public void setMemNo(int memNo) {
		this.memNo = memNo;
	}

	public String getMemEmail() {
		return memEmail;
	}

	public void setMemEmail(String memEmail) {
		this.memEmail = memEmail;
	}

	public String getMemPwd() {
		return memPwd;
	}

	public void setMemPwd(String memPwd) {
		this.memPwd = memPwd;
	}

	public String getMemName() {
		return memName;
	}

	public void setMemName(String memName) {
		this.memName = memName;
	}

	public String getMemTel() {
		return memTel;
	}

	public void setMemTel(String memTel) {
		this.memTel = memTel;
	}

	public String getNickname() {
		return nickname;
	}

	public void setNickname(String nickname) {
		this.nickname = nickname;
	}

	public String getPostalCode() {
		return postalCode;
	}

	public void setPostalCode(String postalCode) {
		this.postalCode = postalCode;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getDetailAddress() {
		return detailAddress;
	}

	public void setDetailAddress(String detailAddress) {
		this.detailAddress = detailAddress;
	}

	public Date getMemEnrollDate() {
		return memEnrollDate;
	}

	public void setMemEnrollDate(Date memEnrollDate) {
		this.memEnrollDate = memEnrollDate;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public Date getMemDelDate() {
		return memDelDate;
	}

	public void setMemDelDate(Date memDelDate) {
		this.memDelDate = memDelDate;
	}

	public String getMemDelDetail() {
		return memDelDetail;
	}

	public void setMemDelDetail(String memDelDetail) {
		this.memDelDetail = memDelDetail;
	}

	public String getMemBlock() {
		return memBlock;
	}

	public void setMemBlock(String memBlock) {
		this.memBlock = memBlock;
	}

	public String getMemImg() {
		return memImg;
	}

	public void setMemImg(String memImg) {
		this.memImg = memImg;
	}

	@Override
	public String toString() {
		return "Member [memNo=" + memNo + ", memEmail=" + memEmail + ", memPwd=" + memPwd + ", memName=" + memName
				+ ", memTel=" + memTel + ", nickname=" + nickname + ", postalCode=" + postalCode + ", address="
				+ address + ", detailAddress=" + detailAddress + ", memEnrollDate=" + memEnrollDate + ", status="
				+ status + ", memDelDate=" + memDelDate + ", memDelDetail=" + memDelDetail + ", memBlock=" + memBlock
				+ ", memImg=" + memImg + "]";
	}
	

}
