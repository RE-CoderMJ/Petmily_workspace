package com.pm.common.model.vo;

public class Reply {
	private int replyNo;
	private String replyWriter;
	private int boardNo;
	private int contentNo;
	private String replyContent;
	private String enrollDate;
	private String status;
	private String privateVa;
	
	public Reply(int replyNo, String replyWriter, int boardNo, int contentNo, String replyContent, String enrollDate,
			String status, String privateVa) {
		super();
		this.replyNo = replyNo;
		this.replyWriter = replyWriter;
		this.boardNo = boardNo;
		this.contentNo = contentNo;
		this.replyContent = replyContent;
		this.enrollDate = enrollDate;
		this.status = status;
		this.privateVa = privateVa;
	}

	public int getReplyNo() {
		return replyNo;
	}

	public void setReplyNo(int replyNo) {
		this.replyNo = replyNo;
	}

	public String getReplyWriter() {
		return replyWriter;
	}

	public void setReplyWriter(String replyWriter) {
		this.replyWriter = replyWriter;
	}

	public int getBoardNo() {
		return boardNo;
	}

	public void setBoardNo(int boardNo) {
		this.boardNo = boardNo;
	}

	public int getContentNo() {
		return contentNo;
	}

	public void setContentNo(int contentNo) {
		this.contentNo = contentNo;
	}

	public String getReplyContent() {
		return replyContent;
	}

	public void setReplyContent(String replyContent) {
		this.replyContent = replyContent;
	}

	public String getEnrollDate() {
		return enrollDate;
	}

	public void setEnrollDate(String enrollDate) {
		this.enrollDate = enrollDate;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getPrivateVa() {
		return privateVa;
	}

	public void setPrivateVa(String privateVa) {
		this.privateVa = privateVa;
	}

	@Override
	public String toString() {
		return "Reply [replyNo=" + replyNo + ", replyWriter=" + replyWriter + ", boardNo=" + boardNo + ", contentNo="
				+ contentNo + ", replyContent=" + replyContent + ", enrollDate=" + enrollDate + ", status=" + status
				+ ", privateVa=" + privateVa + "]";
	}
}
