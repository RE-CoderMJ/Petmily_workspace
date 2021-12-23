package com.pm.admin_Boards.model.vo;

public class Missing {
	
	private int missingNo;
	private String missingWriter;
	private String Category;
	private String dCategory;
	private String enrollDate;
	private String pName;
	private String gender;
	private String missingImg;
	private String miDate;
	private String ageFrom;
	private String ageTo;
	private String location;
	private String feature;
	private int count;
	private String status;
	
	public Missing() {}
	
	public Missing(int missingNo, String missingWriter, String category, String dCategory, String enrollDate,
			String pName, String gender, String missingImg, String miDate, String ageFrom, String ageTo,
			String location, String feature, int count, String status) {
		super();
		this.missingNo = missingNo;
		this.missingWriter = missingWriter;
		Category = category;
		this.dCategory = dCategory;
		this.enrollDate = enrollDate;
		this.pName = pName;
		this.gender = gender;
		this.missingImg = missingImg;
		this.miDate = miDate;
		this.ageFrom = ageFrom;
		this.ageTo = ageTo;
		this.location = location;
		this.feature = feature;
		this.count = count;
		this.status = status;
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
		return Category;
	}
	public void setCategory(String category) {
		Category = category;
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
	public String getpName() {
		return pName;
	}
	public void setpName(String pName) {
		this.pName = pName;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getMissingImg() {
		return missingImg;
	}
	public void setMissingImg(String missingImg) {
		this.missingImg = missingImg;
	}
	public String getMiDate() {
		return miDate;
	}
	public void setMiDate(String miDate) {
		this.miDate = miDate;
	}
	public String getAgeFrom() {
		return ageFrom;
	}
	public void setAgeFrom(String ageFrom) {
		this.ageFrom = ageFrom;
	}
	public String getAgeTo() {
		return ageTo;
	}
	public void setAgeTo(String ageTo) {
		this.ageTo = ageTo;
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
		return "Missing [missingNo=" + missingNo + ", missingWriter=" + missingWriter + ", Category=" + Category
				+ ", dCategory=" + dCategory + ", enrollDate=" + enrollDate + ", pName=" + pName + ", gender=" + gender
				+ ", missingImg=" + missingImg + ", miDate=" + miDate + ", ageFrom=" + ageFrom + ", ageTo=" + ageTo
				+ ", location=" + location + ", feature=" + feature + ", count=" + count + ", status=" + status + "]";
	}
	
	
	

}
