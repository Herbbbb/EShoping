package com.qianfeng.pojo;

public class CollectShop {
	private int userId;
	private int sellerId;
	public CollectShop() {
		// TODO Auto-generated constructor stub
	}
	public CollectShop(int userId, int sellerId) {
		super();
		this.userId = userId;
		this.sellerId = sellerId;
	}
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
	public int getSellerId() {
		return sellerId;
	}
	public void setSellerId(int sellerId) {
		this.sellerId = sellerId;
	}
	@Override
	public String toString() {
		return "CollectShop [userId=" + userId + ", sellerId=" + sellerId + "]";
	}
	
}
