package com.pm.boards.ask.model.vo;

public class Ask {
	private int askNo;
	private int writerNo;
	private String askWriterNickName;
	private int category;
	private String askTitle;
	private String enrollDate;
	private String askContent;
	private int count;
	private String status;
	private String titleImg;
	
	public Ask () {}

	public Ask(int askNo, int writerNo, String askWriterNickName, int category, String askTitle, String enrollDate,
			String askContent, int count, String status, String titleImg) {
		super();
		this.askNo = askNo;
		this.writerNo = writerNo;
		this.askWriterNickName = askWriterNickName;
		this.category = category;
		this.askTitle = askTitle;
		this.enrollDate = enrollDate;
		this.askContent = askContent;
		this.count = count;
		this.status = status;
		this.titleImg = titleImg;
	}

	public int getAskNo() {
		return askNo;
	}

	public void setAskNo(int askNo) {
		this.askNo = askNo;
	}

	public int getWriterNo() {
		return writerNo;
	}

	public void setWriterNo(int writerNo) {
		this.writerNo = writerNo;
	}

	public String getAskWriterNickName() {
		return askWriterNickName;
	}

	public void setAskWriterNickName(String askWriterNickName) {
		this.askWriterNickName = askWriterNickName;
	}

	public int getCategory() {
		return category;
	}

	public void setCategory(int category) {
		this.category = category;
	}

	public String getAskTitle() {
		return askTitle;
	}

	public void setAskTitle(String askTitle) {
		this.askTitle = askTitle;
	}

	public String getEnrollDate() {
		return enrollDate;
	}

	public void setEnrollDate(String enrollDate) {
		this.enrollDate = enrollDate;
	}

	public String getAskContent() {
		return askContent;
	}

	public void setAskContent(String askContent) {
		this.askContent = askContent;
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

	public String getTitleImg() {
		return titleImg;
	}

	public void setTitleImg(String titleImg) {
		this.titleImg = titleImg;
	}

	@Override
	public String toString() {
		return "Ask [askNo=" + askNo + ", writerNo=" + writerNo + ", askWriterNickName=" + askWriterNickName
				+ ", category=" + category + ", askTitle=" + askTitle + ", enrollDate=" + enrollDate + ", askContent="
				+ askContent + ", count=" + count + ", status=" + status + ", titleImg=" + titleImg + "]";
	}

}
