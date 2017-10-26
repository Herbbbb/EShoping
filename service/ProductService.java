package com.qianfeng.service;

import java.util.List;

import com.qianfeng.page.Page;
import com.qianfeng.pojo.Product;

public interface ProductService {
	//132
	public void insert(int sellerId, Product t);
	public void update(Product t);
	//删除商家商品
	public void delete(int sellerId, int k);
	public Product queryById(int k);
	public List<Product> queryForAll();
	public Product queryByName(String proName);
	
	//分页显示
	public Page<Product> showProduct(int sellerId,int pageNow);
	//获取商品总数
	public int getCount();
	//分页显示所有商品
	public Page<Product> showAllProduct(int pageNow);
	
	//通过商品Id查找商家
	public int getSellerIdByProId(int proId);
	
	//查看下架商品
	public Page<Product> checkDownProduct(int sellerId,int pageNow);
}
