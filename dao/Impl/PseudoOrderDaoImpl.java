package com.qianfeng.dao.Impl;

import java.util.List;

import com.qianfeng.dao.BaseDao;
import com.qianfeng.dao.ProductDao;
import com.qianfeng.page.Page;
import com.qianfeng.pojo.Product;
import com.qianfeng.pojo.PseudoOrder;

public class PseudoOrderDaoImpl extends BaseDao<PseudoOrder> implements ProductDao {
	
	@Override
	public PseudoOrder queryByProName(String proName) {
		String sql = "SELECT proId,imgPath,proName,price FROM product WHERE proName=?";
		PseudoOrder pseudoOrder = queryForOne(sql, proName);
		return pseudoOrder;
	}

	


	@Override
	public void delete(String k) {
		// TODO Auto-generated method stub
		
	}

	
	@Override
	public void saveSeller(int sellerId, int proId) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void deleteSeller(int sellerId, int proId) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void insert(Product t) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void update(Product t) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public Product queryById(String k) {
		// TODO Auto-generated method stub
		return null;
	}




	@Override
	public List<Product> queryForAll() {
		// TODO Auto-generated method stub
		return null;
	}




	@Override
	public Page<Product> showProduct(int sellerId, int pageNow) {
		// TODO Auto-generated method stub
		return null;
	}


	

	@Override
	public void delete(int k) {
		// TODO Auto-generated method stub
		
	}

	




	@Override
	public Product queryById(int k) {
		// TODO Auto-generated method stub
		return null;
	}




	@Override
	public Product queryByName(String proName) {
		// TODO Auto-generated method stub
		return null;
	}




	@Override
	public int getCount() {
		// TODO Auto-generated method stub
		return 0;
	}




	@Override
	public Page<Product> showAllProduct(int pageNow) {
		// TODO Auto-generated method stub
		return null;
	}




	@Override
	public int findSellerId(int proId) {
		// TODO Auto-generated method stub
		return 0;
	}




	@Override
	public int getCount(int sellerId, int flag) {
		// TODO Auto-generated method stub
		return 0;
	}




	@Override
	public Page<Product> downProduct(int sellerId, int pageNow) {
		// TODO Auto-generated method stub
		return null;
	}




	@Override
	public void recycle(int proId) {
		// TODO Auto-generated method stub
		
	}

	

}
