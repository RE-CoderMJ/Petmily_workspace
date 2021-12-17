package com.pm.shop.model.vo;

import java.sql.Date;

public class Point {
	private int pointNo;
	private int memNo;
	private int orderNo;
	private String point;
	private String pointContent;
	private Date pointDate;
	
	public Point() {}

	public Point(int pointNo, int memNo, int orderNo, String point, String pointContent, Date pointDate) {
		super();
		this.pointNo = pointNo;
		this.memNo = memNo;
		this.orderNo = orderNo;
		this.point = point;
		this.pointContent = pointContent;
		this.pointDate = pointDate;
	}
	
	

	public Point(int pointNo, String point, String pointContent, Date pointDate) {
		super();
		this.pointNo = pointNo;
		this.point = point;
		this.pointContent = pointContent;
		this.pointDate = pointDate;
	}

	public int getPointNo() {
		return pointNo;
	}

	public void setPointNo(int pointNo) {
		this.pointNo = pointNo;
	}

	public int getMemNo() {
		return memNo;
	}

	public void setMemNo(int memNo) {
		this.memNo = memNo;
	}

	public int getOrderNo() {
		return orderNo;
	}

	public void setOrderNo(int orderNo) {
		this.orderNo = orderNo;
	}

	public String getPoint() {
		return point;
	}

	public void setPoint(String point) {
		this.point = point;
	}

	public String getPointContent() {
		return pointContent;
	}

	public void setPointContent(String pointContent) {
		this.pointContent = pointContent;
	}

	public Date getPointDate() {
		return pointDate;
	}

	public void setPointDate(Date pointDate) {
		this.pointDate = pointDate;
	}

	@Override
	public String toString() {
		return "Point [pointNo=" + pointNo + ", memNo=" + memNo + ", orderNo=" + orderNo + ", point=" + point
				+ ", pointContent=" + pointContent + ", pointDate=" + pointDate + "]";
	}
	
	
}
