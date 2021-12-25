package com.pm.admin_Missing.model.vo;

public class Missing {
	
	private int missingNo;
	private String missingWriter;
	private String category;
	private String dCategory;
	private String enrollDate;
	private String location;
	private int count;
	private String status;
	
	public Missing() {}
	
	
	public Missing(int missingNo, String missingWriter, String category, String dCategory, String enrollDate,
			String location, int count, String status) {
		super();
		this.missingNo = missingNo;
		this.missingWriter = missingWriter;
		this.category = category;
		this.dCategory = dCategory;
		this.enrollDate = enrollDate;
		this.location = location;
		this.count = count;
		this.status = status;
	}
	
	
	public Missing(int missingNo, String missingWriter, String category, String dCategory, String enrollDate,
			String location) {
		super();
		this.missingNo = missingNo;
		this.missingWriter = missingWriter;
		this.category = category;
		this.dCategory = dCategory;
		this.enrollDate = enrollDate;
		this.location = location;
	}


	public int getMissingNo() {
		return missingNo;
	}


	public void setMissingNo(int missingNo) {
		this.missingNo = missingNo;
	}


	public String getMissingWriter() {
		return missingWriter;
	}


	public void setMissingWriter(String missingWriter) {
		this.missingWriter = missingWriter;
	}


	public String getCategory() {
		return category;
	}


	public void setCategory(String category) {
		this.category = category;
	}


	public String getdCategory() {
		return dCategory;
	}


	public void setdCategory(String dCategory) {
		this.dCategory = dCategory;
	}


	public String getEnrollDate() {
		return enrollDate;
	}


	public void setEnrollDate(String enrollDate) {
		this.enrollDate = enrollDate;
	}


	public String getLocation() {
		return location;
	}


	public void setLocation(String location) {
		this.location = location;
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
		return "Missing [missingNo=" + missingNo + ", missingWriter=" + missingWriter + ", category=" + category
				+ ", dCategory=" + dCategory + ", enrollDate=" + enrollDate + ", location=" + location + ", count="
				+ count + ", status=" + status + "]";
	}
	
	

}
