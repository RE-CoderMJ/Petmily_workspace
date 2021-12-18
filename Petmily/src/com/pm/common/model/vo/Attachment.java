package com.pm.common.model.vo;

import java.sql.Date;

public class Attachment {
	
	private int attachmentNo;
	private String originName;
	private String changeName;
	private int refBoardNo; // 게시판 번호 궁금해요:1, 중고거래:2, 찾고있어요:3
	private int refNo; // 글번호
	private String filePath;
	private Date uploadDate;
	private String status;
	private int fileLevel;
	
	public Attachment () {}

	public Attachment(int attachmentNo, String originName, String changeName, int refBoardNo, int refNo,
			String filePath, Date uploadDate, String status) {
		super();
		this.attachmentNo = attachmentNo;
		this.originName = originName;
		this.changeName = changeName;
		this.refBoardNo = refBoardNo;
		this.refNo = refNo;
		this.filePath = filePath;
		this.uploadDate = uploadDate;
		this.status = status;
	}
	
	public Attachment(int attachmentNo, String originName, String changeName, int refBoardNo, int refNo,
			String filePath, Date uploadDate, String status, int fileLevel) {
		super();
		this.attachmentNo = attachmentNo;
		this.originName = originName;
		this.changeName = changeName;
		this.refBoardNo = refBoardNo;
		this.refNo = refNo;
		this.filePath = filePath;
		this.uploadDate = uploadDate;
		this.status = status;
		this.fileLevel = fileLevel;
	}
	

	public int getAttachmentNo() {
		return attachmentNo;
	}

	public void setAttachmentNo(int attachmentNo) {
		this.attachmentNo = attachmentNo;
	}

	public String getOriginName() {
		return originName;
	}

	public void setOriginName(String originName) {
		this.originName = originName;
	}

	public String getChangeName() {
		return changeName;
	}

	public void setChangeName(String changeName) {
		this.changeName = changeName;
	}

	public int getRefBoardNo() {
		return refBoardNo;
	}

	public void setRefBoardNo(int refBoardNo) {
		this.refBoardNo = refBoardNo;
	}

	public int getRefNo() {
		return refNo;
	}

	public void setRefNo(int refNo) {
		this.refNo = refNo;
	}

	public String getFilePath() {
		return filePath;
	}

	public void setFilePath(String filePath) {
		this.filePath = filePath;
	}

	public Date getUploadDate() {
		return uploadDate;
	}

	public void setUploadDate(Date uploadDate) {
		this.uploadDate = uploadDate;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}
	
	public int getFileLevel() {
		return fileLevel;
	}

	public void setFileLevel(int fileLevel) {
		this.fileLevel = fileLevel;
	}

	@Override
	public String toString() {
		return "Attachment [attachmentNo=" + attachmentNo + ", originName=" + originName + ", changeName=" + changeName
				+ ", refBoardNo=" + refBoardNo + ", refNo=" + refNo + ", filePath=" + filePath + ", uploadDate="
				+ uploadDate + ", status=" + status + ", fileLevel=" + fileLevel + "]";
	}

	
}
