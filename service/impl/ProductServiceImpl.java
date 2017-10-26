package com.qianfeng.service.impl;

import java.util.List;

import com.qianfeng.dao.ProductDao;
import com.qianfeng.dao.Impl.ProductDaoImpl;
import com.qianfeng.page.Page;
import com.qianfeng.pojo.Product;
import com.qianfeng.service.ProductService;

public class ProductServiceImpl implements ProductService{
	ProductDao pd=new ProductDaoImpl();
	//商品上架1
	@Override
	public void insert(int sellerId, Product t) {
		pd.saveSeller(sellerId, t.getProId());
		pd.insert(t);
	}

	@Override
	public void update(Product t) {
		pd.update(t);
	}
	//删除商家的商品
	@Override
	public void delete(int sellerId, int k) {
		pd.deleteSeller(sellerId, k);
		pd.delete(k);
	}

	@Override
	public Product queryById(int k) {
		Product pro=pd.queryById(k);
		return pro;
	}

	@Override
	public List<Product> queryForAll() {
		List<Product> pros=pd.queryForAll();
		return pros;
	}

	@Override
	public Product queryByName(String proName) {
		Product pro=pd.queryByName(proName);
		return pro;
	}

	@Override
	public Page<Product> showProduct(int sellerId, int pageNow) {
		Page<Product> page=pd.showProduct(sellerId, pageNow);
		return page;
	}

	@Override
	public int getCount() {
		return pd.getCount();
	}

	@Override
	public Page<Product> showAllProduct(int pageNow) {
		return pd.showAllProduct(pageNow);
	}
	//通过商品Id获取商家ID
	@Override
	public int getSellerIdByProId(int proId) {
		int sellerId=pd.findSellerId(proId);
		return sellerId;
	}
	//查看下架商品
	@Override
	public Page<Product> checkDownProduct(int sellerId, int pageNow) {
		Page<Product> page=pd.downProduct(sellerId, pageNow);
		return page;
	}

}
