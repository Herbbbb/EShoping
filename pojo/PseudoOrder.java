package com.qianfeng.pojo;
//伪类订单
public class PseudoOrder {
	private int orderId;
	private int userId;
	private String userName;
	private int proId;
	private String proName;
	private double price;
	private String imgPath;
	private int proNum;
	private double subtotal;
	private String address;
	private String tel;
	private double totalPrice;
	public PseudoOrder() {
		// TODO Auto-generated constructor stub
	}
	//订单列表显示类容
	public PseudoOrder(int orderId, String userName, String address, String tel, double totalPrice) {
		super();
		this.orderId = orderId;
		this.userName = userName;
		this.address = address;
		this.tel = tel;
		this.totalPrice = totalPrice;
	}
	//详细订单类容
	public PseudoOrder(int orderId, int userId, String userName, String proName, double price, String imgPath,
			int proNum, double subtotal) {
		super();
		this.orderId = orderId;
		this.userId = userId;
		this.userName = userName;
		this.proName = proName;
		this.price = price;
		this.imgPath = imgPath;
		this.proNum = proNum;
		this.subtotal = subtotal;
	}
	
	public PseudoOrder(int orderId, int userId, String userName, int proId, String proName, double price,
			String imgPath, int proNum, double subtotal, String address, String tel, double totalPrice) {
		super();
		this.orderId = orderId;
		this.userId = userId;
		this.userName = userName;
		this.proId = proId;
		this.proName = proName;
		this.price = price;
		this.imgPath = imgPath;
		this.proNum = proNum;
		this.subtotal = subtotal;
		this.address = address;
		this.tel = tel;
		this.totalPrice = totalPrice;
	}
	public int getOrderId() {
		return orderId;
	}
	public void setOrderId(int orderId) {
		this.orderId = orderId;
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
	public int getProId() {
		return proId;
	}
	public void setProId(int proId) {
		this.proId = proId;
	}
	public String getProName() {
		return proName;
	}
	public void setProName(String proName) {
		this.proName = proName;
	}
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}
	public String getImgPath() {
		return imgPath;
	}
	public void setImgPath(String imgPath) {
		this.imgPath = imgPath;
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
	public double getTotalPrice() {
		return totalPrice;
	}
	public void setTotalPrice(double totalPrice) {
		this.totalPrice = totalPrice;
	}
	@Override
	public String toString() {
		return "PseudoOrder [orderId=" + orderId + ", userId=" + userId + ", userName=" + userName + ", proName="
				+ proName + ", price=" + price + ", imgPath=" + imgPath + ", proNum=" + proNum + ", subtotal="
				+ subtotal + "]";
	}
}
