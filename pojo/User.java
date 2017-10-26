package com.qianfeng.pojo;

public class User {
	private int userId;
	private String userName;
	private String city;
	private String address;
	private String tel;
	private String imgPath;
	private Login login;
	public User() {
		// TODO Auto-generated constructor stub
	}
	
	public User(String userName, String city, String address, String tel, String imgPath, Login login) {
		super();
		this.userName = userName;
		this.city = city;
		this.address = address;
		this.tel = tel;
		this.imgPath = imgPath;
		this.login = login;
	}

	public User(int userId, String userName, String city, String address, String tel, String imgPath) {
		super();
		this.userId = userId;
		this.userName = userName;
		this.city = city;
		this.address = address;
		this.tel = tel;
		this.imgPath = imgPath;
	}
	
	public User(int userId, String userName, String city, String address, String tel, String imgPath, Login login) {
		super();
		this.userId = userId;
		this.userName = userName;
		this.city = city;
		this.address = address;
		this.tel = tel;
		this.imgPath = imgPath;
		this.login = login;
	}
	
	public Login getLogin() {
		return login;
	}
	public void setLogin(Login login) {
		this.login = login;
	}
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	public String getImgPath() {
		return imgPath;
	}
	public void setImgPath(String imgPath) {
		this.imgPath = imgPath;
	}
	@Override
	public String toString() {
		return "User [userId=" + userId + ", userName=" + userName + ", city=" + city + ", address=" + address
				+ ", tel=" + tel + ", imgPath=" + imgPath + "]";
	}
	
	
}
