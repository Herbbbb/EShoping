package com.qianfeng.pojo;

public class Login {
	private int userId;
	private String password;
	private int flag;//0用户 1商家
	public Login() {
		// TODO Auto-generated constructor stub
	}
	
	public Login(String password, int flag) {
		super();
		this.password = password;
		this.flag = flag;
	}
	
	

	public Login(int userId, String password) {
		super();
		this.userId = userId;
		this.password = password;
	}

	public Login(int userId, String password, int flag) {
		super();
		this.userId = userId;
		this.password = password;
		this.flag = flag;
	}
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public int getFlag() {
		return flag;
	}
	public void setFlag(int flag) {
		this.flag = flag;
	}
	@Override
	public String toString() {
		return "Login [userId=" + userId + ", password=" + password + ", flag=" + flag + "]";
	}
	
}
