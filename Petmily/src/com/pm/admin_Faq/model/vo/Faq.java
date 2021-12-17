package com.pm.admin_Faq.model.vo;

public class Faq {
	
	private int faqNo;
	private String faqTitle;
	private String faqContent;
	private String faqCate;
	private String status;
	private String managerNo;

	public Faq() {}

	public Faq(int faqNo, String faqTitle, String faqContent, String faqCate, String status, String managerNo) {
		super();
		this.faqNo = faqNo;
		this.faqTitle = faqTitle;
		this.faqContent = faqContent;
		this.faqCate = faqCate;
		this.status = status;
		this.managerNo = managerNo;
	}

	public Faq(int faqNo, String faqTitle, String faqCate, String managerNo) {
		super();
		this.faqNo = faqNo;
		this.faqTitle = faqTitle;
		this.faqCate = faqCate;
		this.managerNo = managerNo;
	}
	
	

	public Faq(int faqNo, String faqTitle, String faqContent, String faqCate, String managerNo) {
		super();
		this.faqNo = faqNo;
		this.faqTitle = faqTitle;
		this.faqContent = faqContent;
		this.faqCate = faqCate;
		this.managerNo = managerNo;
	}

	public int getFaqNo() {
		return faqNo;
	}

	public void setFaqNo(int faqNo) {
		this.faqNo = faqNo;
	}

	public String getFaqTitle() {
		return faqTitle;
	}

	public void setFaqTitle(String faqTitle) {
		this.faqTitle = faqTitle;
	}

	public String getFaqContent() {
		return faqContent;
	}

	public void setFaqContent(String faqContent) {
		this.faqContent = faqContent;
	}

	public String getFaqCate() {
		return faqCate;
	}

	public void setFaqCate(String faqCate) {
		this.faqCate = faqCate;
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
		return "Faq [faqNo=" + faqNo + ", faqTitle=" + faqTitle + ", faqContent=" + faqContent + ", faqCate=" + faqCate
				+ ", status=" + status + ", managerNo=" + managerNo + "]";
	}
	
	

	
	
	
	
	
}

	
