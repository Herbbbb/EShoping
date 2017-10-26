package com.qianfeng.pojo;

public class Orders {
	private int orderId;
	private int proId;
	private int proNum;
	private double subtotal;
	public Orders() {
		// TODO Auto-generated constructor stub
	}
	public Orders(int orderId, int proId, int proNum, double subtotal) {
		super();
		this.orderId = orderId;
		this.proId = proId;
		this.proNum = proNum;
		this.subtotal = subtotal;
	}
	public int getOrderId() {
		return orderId;
	}
	public void setOrderId(int orderId) {
		this.orderId = orderId;
	}
	public int getProId() {
		return proId;
	}
	public void setProId(int proId) {
		this.proId = proId;
	}
	public int getProNum() {
		return proNum;
	}
	public void setProNum(int proNum) {
		this.proNum = proNum;
	}
	public double getSubtotal() {
		return subtotal;
	}
	public void setSubtotal(double subtotal) {
		this.subtotal = subtotal;
	}
	@Override
	public String toString() {
		return "Orders [orderId=" + orderId + ", proId=" + proId + ", proNum=" + proNum + ", subtotal=" + subtotal
				+ "]";
	}
	
}
