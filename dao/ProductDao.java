package com.qianfeng.dao;

import com.qianfeng.page.Page;
import com.qianfeng.pojo.Product;
import com.qianfeng.pojo.PseudoOrder;
/*
 * 商品接口
 * 
 * 需添加额外功能,在此接口添加
 * */

public interface ProductDao extends BaseInterface<Product, String>{
	
	
	//保存商家商品
	public void saveSeller(int sellerId, int proId);
	//删除商家商品
	public void deleteSeller(int sellerId, int proId);	
	//获取该商家的商品总数
	public int getCount(int sellerId,int flag);		
	// 分页显示商家商品
	public Page<Product> showProduct(int sellerId,int pageNow);
	//获取商品总数
	public int getCount();
	//分页显示所有商品
	public Page<Product> showAllProduct(int pageNow);
	public Product queryById(int k);
	//通过商品ID删除商品
	public void delete(int k);
	//根据姓名查找
	public Product queryByName(String proName);	
	
	//通过商品名称查找
	public PseudoOrder queryByProName(String proName);
	
	//通过商品Id查找商家
	public int findSellerId(int proId);
	//下架商品查询
	public Page<Product> downProduct(int sellerId,int pageNow);
	
	//恢复上架
	public void recycle(int proId);
}
