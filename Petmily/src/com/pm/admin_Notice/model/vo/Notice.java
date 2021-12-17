package com.pm.admin_Notice.model.vo;

import java.util.Date;

public class Notice {
	
	private int noticeNo;
	private String noticeTitle;
	private String noticeContent;
	private String noticeDate;
	private String noticeCate;
	private String status;
	private String managerNo;
	
	public Notice() {}

	public Notice(int noticeNo, String noticeTitle, String noticeContent, String noticeDate, String noticeCate,
			String status, String managerNo) {
		super();
		this.noticeNo = noticeNo;
		this.noticeTitle = noticeTitle;
		this.noticeContent = noticeContent;
		this.noticeDate = noticeDate;
		this.noticeCate = noticeCate;
		this.status = status;
		this.managerNo = managerNo;
	}

	public Notice(int noticeNo, String noticeTitle, String noticeContent, String noticeDate, String noticeCate,
			String managerNo) {
		super();
		this.noticeNo = noticeNo;
		this.noticeTitle = noticeTitle;
		this.noticeContent = noticeContent;
		this.noticeDate = noticeDate;
		this.noticeCate = noticeCate;
		this.managerNo = managerNo;
	}

	public int getNoticeNo() {
		return noticeNo;
	}

	public void setNoticeNo(int noticeNo) {
		this.noticeNo = noticeNo;
	}

	public String getNoticeTitle() {
		return noticeTitle;
	}

	public void setNoticeTitle(String noticeTitle) {
		this.noticeTitle = noticeTitle;
	}

	public String getNoticeContent() {
		return noticeContent;
	}

	public void setNoticeContent(String noticeContent) {
		this.noticeContent = noticeContent;
	}

	public String getNoticeDate() {
		return noticeDate;
	}

	public void setNoticeDate(String noticeDate) {
		this.noticeDate = noticeDate;
	}

	public String getNoticeCate() {
		return noticeCate;
	}

	public void setNoticeCate(String noticeCate) {
		this.noticeCate = noticeCate;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getManagerNo() {
		return managerNo;
	}

	public void setManagerNo(String managerNo) {
		this.managerNo = managerNo;
	}

	@Override
	public String toString() {
		return "Notice [noticeNo=" + noticeNo + ", noticeTitle=" + noticeTitle + ", noticeContent=" + noticeContent
				+ ", noticeDate=" + noticeDate + ", noticeCate=" + noticeCate + ", status=" + status + ", managerNo="
				+ managerNo + "]";
	}

	
	

}
