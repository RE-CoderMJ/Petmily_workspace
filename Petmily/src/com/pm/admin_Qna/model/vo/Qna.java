package com.pm.admin_Qna.model.vo;

public class Qna {
	
	private int qnaNo;
	private String memNo;
	private String managerNo;
	private String qnaTitle;
	private String qnaContent;
	private String qnaDate;
	private String qnaReplyContent;
	private String qnaReplyDate;
	private String qnaSecret;
	private int count;
	private String status;
	
	public Qna() {}

	public Qna(int qnaNo, String memNo, String managerNo, String qnaTitle, String qnaContent, String qnaDate,
			String qnaReplyContent, String qnaReplyDate, String qnaSecret, int count, String status) {
		super();
		this.qnaNo = qnaNo;
		this.memNo = memNo;
		this.managerNo = managerNo;
		this.qnaTitle = qnaTitle;
		this.qnaContent = qnaContent;
		this.qnaDate = qnaDate;
		this.qnaReplyContent = qnaReplyContent;
		this.qnaReplyDate = qnaReplyDate;
		this.qnaSecret = qnaSecret;
		this.count = count;
		this.status = status;
	}

	public int getQnaNo() {
		return qnaNo;
	}

	public void setQnaNo(int qnaNo) {
		this.qnaNo = qnaNo;
	}

	public String getMemNo() {
		return memNo;
	}

	public void setMemNo(String memNo) {
		this.memNo = memNo;
	}

	public String getManagerNo() {
		return managerNo;
	}

	public void setManagerNo(String managerNo) {
		this.managerNo = managerNo;
	}

	public String getQnaTitle() {
		return qnaTitle;
	}

	public void setQnaTitle(String qnaTitle) {
		this.qnaTitle = qnaTitle;
	}

	public String getQnaContent() {
		return qnaContent;
	}

	public void setQnaContent(String qnaContent) {
		this.qnaContent = qnaContent;
	}

	public String getQnaDate() {
		return qnaDate;
	}

	public void setQnaDate(String qnaDate) {
		this.qnaDate = qnaDate;
	}

	public String getQnaReplyContent() {
		return qnaReplyContent;
	}

	public void setQnaReplyContent(String qnaReplyContent) {
		this.qnaReplyContent = qnaReplyContent;
	}

	public String getQnaReplyDate() {
		return qnaReplyDate;
	}

	public void setQnaReplyDate(String qnaReplyDate) {
		this.qnaReplyDate = qnaReplyDate;
	}

	public String getQnaSecret() {
		return qnaSecret;
	}

	public void setQnaSecret(String qnaSecret) {
		this.qnaSecret = qnaSecret;
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
		return "Qna [qnaNo=" + qnaNo + ", memNo=" + memNo + ", managerNo=" + managerNo + ", qnaTitle=" + qnaTitle
				+ ", qnaContent=" + qnaContent + ", qnaDate=" + qnaDate + ", qnaReplyContent=" + qnaReplyContent
				+ ", qnaReplyDate=" + qnaReplyDate + ", qnaSecret=" + qnaSecret + ", count=" + count + ", status="
				+ status + "]";
	}
	
	
	
	
	

}
