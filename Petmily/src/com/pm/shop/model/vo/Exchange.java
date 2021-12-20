package com.pm.shop.model.vo;

public class Exchange {
	private int ecCode;
	private int orderPnum;
	private String ecreason;
	private String payment;
	private String deliveryMemo;
	
	public Exchange() {}

	public Exchange(int ecCode, int orderPnum, String ecreason, String payment, String deliveryMemo) {
		super();
		this.ecCode = ecCode;
		this.orderPnum = orderPnum;
		this.ecreason = ecreason;
		this.payment = payment;
		this.deliveryMemo = deliveryMemo;
	}

	public int getEcCode() {
		return ecCode;
	}

	public void setEcCode(int ecCode) {
		this.ecCode = ecCode;
	}

	public int getOrderPnum() {
		return orderPnum;
	}

	public void setOrderPnum(int orderPnum) {
		this.orderPnum = orderPnum;
	}

	public String getEcreason() {
		return ecreason;
	}

	public void setEcreason(String ecreason) {
		this.ecreason = ecreason;
	}

	public String getPayment() {
		return payment;
	}

	public void setPayment(String payment) {
		this.payment = payment;
	}

	public String getDeliveryMemo() {
		return deliveryMemo;
	}

	public void setDeliveryMemo(String deliveryMemo) {
		this.deliveryMemo = deliveryMemo;
	}

	@Override
	public String toString() {
		return "Exchange [ecCode=" + ecCode + ", orderPnum=" + orderPnum + ", ecreason=" + ecreason + ", payment="
				+ payment + ", deliveryMemo=" + deliveryMemo + "]";
	}
	
	
	
	
}

