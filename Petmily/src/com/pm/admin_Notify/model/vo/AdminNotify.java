package com.pm.admin_Notify.model.vo;

import java.sql.Date;

public class AdminNotify {
	
	private int reportNo;
	private String clientId;
	private String comments;
	private String boardType;
	private int boardNo;
	private String reportId;
	private String reportReason;
	private String reportContent;
	private Date reportDate;
	
	public AdminNotify() {}

	public AdminNotify(int reportNo, String clientId, String comments, String boardType, int boardNo, String reportId,
			String reportReason, String reportContent, Date reportDate) {
		super();
		this.reportNo = reportNo;
		this.clientId = clientId;
		this.comments = comments;
		this.boardType = boardType;
		this.boardNo = boardNo;
		this.reportId = reportId;
		this.reportReason = reportReason;
		this.reportContent = reportContent;
		this.reportDate = reportDate;
	}

	public int getReportNo() {
		return reportNo;
	}

	public void setReportNo(int reportNo) {
		this.reportNo = reportNo;
	}

	public String getClientId() {
		return clientId;
	}

	public void setClientId(String clientId) {
		this.clientId = clientId;
	}

	public String getComments() {
		return comments;
	}

	public void setComments(String comments) {
		this.comments = comments;
	}

	public String getBoardType() {
		return boardType;
	}

	public void setBoardType(String boardType) {
		this.boardType = boardType;
	}

	public int getBoardNo() {
		return boardNo;
	}

	public void setBoardNo(int boardNo) {
		this.boardNo = boardNo;
	}

	public String getReportId() {
		return reportId;
	}

	public void setReportId(String reportId) {
		this.reportId = reportId;
	}

	public String getReportReason() {
		return reportReason;
	}

	public void setReportReason(String reportReason) {
		this.reportReason = reportReason;
	}

	public String getReportContent() {
		return reportContent;
	}

	public void setReportContent(String reportContent) {
		this.reportContent = reportContent;
	}

	public Date getReportDate() {
		return reportDate;
	}

	public void setReportDate(Date reportDate) {
		this.reportDate = reportDate;
	}

	@Override
	public String toString() {
		return "AdminNotify [reportNo=" + reportNo + ", clientId=" + clientId + ", comments=" + comments
				+ ", boardType=" + boardType + ", boardNo=" + boardNo + ", reportId=" + reportId + ", reportReason="
				+ reportReason + ", reportContent=" + reportContent + ", reportDate=" + reportDate + "]";
	}
	
	
	
}
