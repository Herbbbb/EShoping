package com.qianfeng.pojo;

/**
 * @author Administrator
 *
 */
public class ShopCarItem {
	private int proNum;// 商品数量
	private Product products;

	public ShopCarItem() {
		// TODO Auto-generated constructor stub
	}

	public ShopCarItem(int proNum, Product products) {
		super();
		this.proNum = proNum;
		this.products = products;
	}

	public int getProNum() {
		return proNum;
	}

	public void setProNum(int proNum) {
		this.proNum = proNum;
	}

	public Product getProducts() {
		return products;
	}

	public void setProducts(Product products) {
		this.products = products;
	}

	@Override
	public String toString() {
		return "ShopCarItem [proNum=" + proNum + ", products=" + products + "]";
	}

	// 增加书的数量
	public void addProNum(int proNum) {
		proNum++;
		this.proNum = proNum;
	}

	public double getTotalMoney() {
		return products.getPrice() * getProNum();
	}

}
