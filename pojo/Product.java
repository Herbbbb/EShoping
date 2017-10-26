package com.qianfeng.pojo;

public class Product {
	private  int proId;
	private String proName;
	private String proType;
	private double price;
	private int counts;
	private String imgPath;
	private String introduct;
	private int flag;
	public Product() {
		// TODO Auto-generated constructor stub
	}
	public Product(int proId, String proName, String proType,double price, int counts, String imgPath, String introduct, int flag) {
		super();
		this.proId = proId;
		this.proName = proName;
		this.proType = proType;
		this.price = price;
		this.counts = counts;
		this.imgPath = imgPath;
		this.introduct = introduct;
		this.flag = flag;
	}
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
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
	public String getProType() {
		return proType;
	}
	public void setProType(String proType) {
		this.proType = proType;
	}
	public int getCounts() {
		return counts;
	}
	public void setCounts(int counts) {
		this.counts = counts;
	}
	public String getImgPath() {
		return imgPath;
	}
	public void setImgPath(String imgPath) {
		this.imgPath = imgPath;
	}
	public String getIntroduct() {
		return introduct;
	}
	public void setIntroduct(String introduct) {
		this.introduct = introduct;
	}
	public int getFlag() {
		return flag;
	}
	public void setFlag(int flag) {
		this.flag = flag;
	}
	@Override
	public String toString() {
		return "Product [proId=" + proId + ", proName=" + proName + ", proType=" + proType + ", price=" + price
				+ ", counts=" + counts + ", imgPath=" + imgPath + ", introduct=" + introduct + ", flag=" + flag + "]";
	}
}
