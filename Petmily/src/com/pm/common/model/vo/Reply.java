package com.pm.common.model.vo;

public class Reply {
	private int replyNo;
	private int replyWriter;
	private int boardNo;
	private int contentNo;
	private String replyContent;
	private String enrollDate;
	private String modifyDate;
	private String status;
	private String privateVa;
	private String writerNickname;
	private String writerImg;
	
	public Reply() {}
	
	public Reply(int replyNo, int replyWriter, int boardNo, int contentNo, String replyContent, String enrollDate,
			String modifyDate, String status, String privateVa) {
		super();
		this.replyNo = replyNo;
		this.replyWriter = replyWriter;
		this.boardNo = boardNo;
		this.contentNo = contentNo;
		this.replyContent = replyContent;
		this.enrollDate = enrollDate;
		this.modifyDate = modifyDate;
		this.status = status;
		this.privateVa = privateVa;
	}

	public Reply(int replyNo, int replyWriter, String replyContent, String enrollDate, String privateVa) {
		super();
		this.replyNo = replyNo;
		this.replyWriter = replyWriter;
		this.replyContent = replyContent;
		this.enrollDate = enrollDate;
		this.privateVa = privateVa;
	}

	public Reply(int replyNo, int replyWriter, int boardNo, int contentNo, String replyContent, String enrollDate,
			String modifyDate, String status, String privateVa, String writerNickname, String writerImg) {
		super();
		this.replyNo = replyNo;
		this.replyWriter = replyWriter;
		this.boardNo = boardNo;
		this.contentNo = contentNo;
		this.replyContent = replyContent;
		this.enrollDate = enrollDate;
		this.modifyDate = modifyDate;
		this.status = status;
		this.privateVa = privateVa;
		this.writerNickname = writerNickname;
		this.writerImg = writerImg;
	}

	
	public String getWriterNickname() {
		return writerNickname;
	}

	public void setWriterNickname(String writerNickname) {
		this.writerNickname = writerNickname;
	}

	public String getWriterImg() {
		return writerImg;
	}

	public void setWriterImg(String writerImg) {
		this.writerImg = writerImg;
	}

	public int getReplyNo() {
		return replyNo;
	}

	public void setReplyNo(int replyNo) {
		this.replyNo = replyNo;
	}

	public int getReplyWriter() {
		return replyWriter;
	}

	public void setReplyWriter(int replyWriter) {
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

	public String getModifyDate() {
		return modifyDate;
	}

	public void setModifyDate(String modifyDate) {
		this.modifyDate = modifyDate;
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
				+ contentNo + ", replyContent=" + replyContent + ", enrollDate=" + enrollDate + ", modifyDate="
				+ modifyDate + ", status=" + status + ", privateVa=" + privateVa + "]";
	}
	
}