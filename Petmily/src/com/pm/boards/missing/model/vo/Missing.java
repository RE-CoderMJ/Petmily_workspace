package com.pm.boards.missing.model.vo;

public class Missing {
	
	private int missingNo;
	private String missingWriter;
	private int category;
	private int dCategory;
	private String enrollDate;
	private String pName;
	private String pGender;
	private String missingImg;
	private String missingDate;
	private int pAgeFrom;
	private int pAgeTo;
	private String location;
	private String feature;
	private int count;
	private String status;
	private String titleImg;
	
	public Missing () {}
	
	public Missing(int missingNo, String missingWriter, int category, int dCategory, String enrollDate,
			String pName, String pGender, String missingImg, String missingDate, int pAgeFrom, int pAgeTo,
			String location, String feature, int count, String status) {
		super();
		this.missingNo = missingNo;
		this.missingWriter = missingWriter;
		this.category = category;
		this.dCategory = dCategory;
		this.enrollDate = enrollDate;
		this.pName = pName;
		this.pGender = pGender;
		this.missingImg = missingImg;
		this.missingDate = missingDate;
		this.pAgeFrom = pAgeFrom;
		this.pAgeTo = pAgeTo;
		this.location = location;
		this.feature = feature;
		this.count = count;
		this.status = status;
	}

	
	public String getTitleImg() {
		return titleImg;
	}

	public void setTitleImg(String titleImg) {
		this.titleImg = titleImg;
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

	public int getCategory() {
		return category;
	}

	public void setCategory(int category) {
		this.category = category;
	}

	public int getdCategory() {
		return dCategory;
	}

	public void setdCategory(int dCategory) {
		this.dCategory = dCategory;
	}

	public String getEnrollDate() {
		return enrollDate;
	}

	public void setEnrollDate(String enrollDate) {
		this.enrollDate = enrollDate;
	}

	public String getpName() {
		return pName;
	}

	public void setpName(String pName) {
		this.pName = pName;
	}

	public String getpGender() {
		return pGender;
	}

	public void setpGender(String pGender) {
		this.pGender = pGender;
	}

	public String getMissingImg() {
		return missingImg;
	}

	public void setMissingImg(String missingImg) {
		this.missingImg = missingImg;
	}

	public String getMissingDate() {
		return missingDate;
	}

	public void setMissingDate(String missingDate) {
		this.missingDate = missingDate;
	}

	public int getpAgeFrom() {
		return pAgeFrom;
	}

	public void setpAgeFrom(int pAgeFrom) {
		this.pAgeFrom = pAgeFrom;
	}

	public int getpAgeTo() {
		return pAgeTo;
	}

	public void setpAgeTo(int pAgeTo) {
		this.pAgeTo = pAgeTo;
	}

	public String getLocation() {
		return location;
	}

	public void setLocation(String location) {
		this.location = location;
	}

	public String getFeature() {
		return feature;
	}

	public void setFeature(String feature) {
		this.feature = feature;
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
				+ ", dCategory=" + dCategory + ", enrollDate=" + enrollDate + ", pName=" + pName + ", pGender="
				+ pGender + ", missingImg=" + missingImg + ", missingDate=" + missingDate + ", pAgeFrom=" + pAgeFrom
				+ ", pAgeTo=" + pAgeTo + ", location=" + location + ", feature=" + feature + ", count=" + count
				+ ", status=" + status + "]";
	}
	
	
	
	
	
	
}
