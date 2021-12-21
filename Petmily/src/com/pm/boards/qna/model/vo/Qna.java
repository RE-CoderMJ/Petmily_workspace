package com.pm.boards.qna.model.vo;


public class Qna {
	
	private int qnaNo;
	private String memNo;
	private String qnaTitle;
	private String qnaContent;
	private String qnaDate;
	private String qnaSecret;
	private int count;
	private String status;
	
	public Qna() {}
	

	public Qna(int qnaNo, String memNo, String qnaTitle, String qnaContent, String qnaDate, String qnaSecret, int count,
			String status) {
		super();
		this.qnaNo = qnaNo;
		this.memNo = memNo;
		this.qnaTitle = qnaTitle;
		this.qnaContent = qnaContent;
		this.qnaDate = qnaDate;
		this.qnaSecret = qnaSecret;
		this.count = count;
		this.status = status;
	}

	public Qna(int qnaNo, String memNo, String qnaTitle, String qnaDate, int count) {
		super();
		this.qnaNo = qnaNo;
		this.memNo = memNo;
		this.qnaTitle = qnaTitle;
		this.qnaDate = qnaDate;
		this.count = count;
	}
	

	public Qna(int qnaNo, String memNo, String qnaTitle, String qnaContent, String qnaDate, int count) {
		super();
		this.qnaNo = qnaNo;
		this.memNo = memNo;
		this.qnaTitle = qnaTitle;
		this.qnaContent = qnaContent;
		this.qnaDate = qnaDate;
		this.count = count;
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
		return "Qna [qnaNo=" + qnaNo + ", memNo=" + memNo + ", qnaTitle=" + qnaTitle + ", qnaContent=" + qnaContent
				+ ", qnaDate=" + qnaDate + ", qnaSecret=" + qnaSecret + ", count=" + count + ", status=" + status + "]";
	}


}
