package com.qianfeng.pojo;

public class LoveGoods {
	private int userId;
	private int proId;
	public LoveGoods() {
		// TODO Auto-generated constructor stub
	}
	public LoveGoods(int userId, int proId) {
		super();
		this.userId = userId;
		this.proId = proId;
	}
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
	public int getProId() {
		return proId;
	}
	public void setProId(int proId) {
		this.proId = proId;
	}
	@Override
	public String toString() {
		return "LoveGoods [userId=" + userId + ", proId=" + proId + "]";
	}
	
}
