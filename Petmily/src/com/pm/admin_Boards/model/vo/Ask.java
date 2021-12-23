package com.pm.admin_Boards.model.vo;

public class Ask {

	
	private int askNo;
	private String askWriter;
	private String category;
	private String askTitle;
	private String enrollDate;
	private String askContent;
	private int count;
	private String status;
	
	public Ask() {}
	
	
	public Ask(int askNo, String askWriter, String category, String askTitle, String enrollDate, String askContent,
			int count, String status) {
		super();
		this.askNo = askNo;
		this.askWriter = askWriter;
		this.category = category;
		this.askTitle = askTitle;
		this.enrollDate = enrollDate;
		this.askContent = askContent;
		this.count = count;
		this.status = status;
	}


	public int getAskNo() {
		return askNo;
	}

	public void setAskNo(int askNo) {
		this.askNo = askNo;
	}

	public String getAskWriter() {
		return askWriter;
	}

	public void setAskWriter(String askWriter) {
		this.askWriter = askWriter;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
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

	@Override
	public String toString() {
		return "Ask [askNo=" + askNo + ", askWriter=" + askWriter + ", category=" + category + ", askTitle=" + askTitle
				+ ", enrollDate=" + enrollDate + ", askContent=" + askContent + ", count=" + count + ", status="
				+ status + "]";
	}
	
	
	
	
	
}
