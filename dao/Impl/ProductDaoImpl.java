package com.qianfeng.dao.Impl;


import java.util.List;

import com.qianfeng.dao.BaseDao;
import com.qianfeng.dao.ProductDao;
import com.qianfeng.page.Page;
import com.qianfeng.pojo.Product;
import com.qianfeng.pojo.PseudoOrder;


public class ProductDaoImpl extends BaseDao<Product> implements ProductDao {

	// 添加商品（商品上架）
	@Override
	public void insert(Product t) {
		String sql = "INSERT INTO product(proId,proName,proType,counts,imgPath,introduct,flag,price) VALUES(?,?,?,?,?,?,?,?);";
		update(sql, t.getProId(), t.getProName(), t.getProType(), t.getCounts(), t.getImgPath(), t.getIntroduct(),
				t.getFlag(), t.getPrice());
	}

	@Override
	public void update(Product t) {

	}

	

	
	// 查询所有
	@Override
	public List<Product> queryForAll() {
		String sql = "select proId,proName,proType,counts,imgPath,introduct,flag,price from product";
		List<Product> pros = queryForList(sql);
		return pros;
	}

	// 保存商家的商品
	@Override
	public void saveSeller(int sellerId, int proId) {
		String sql = "INSERT INTO seller(sellerId,proId) VALUES(?,?);";
		update(sql, sellerId, proId);
	}

	// 删除商家商品根据商家id和商品id
	@Override
	public void deleteSeller(int sellerId, int proId) {
		String sql = "DELETE FROM seller WHERE sellerId=? AND proId=?;";
		update(sql, sellerId, proId);
	}

	// 获取该商家的商品总数
	@Override
	public int getCount(int sellerId,int flag) {
		String sql = "SELECT COUNT(*) FROM product WHERE proId IN (SELECT proId FROM seller WHERE sellerId=?)  AND flag=?";
		//Product obj = queryForField(sql,sellerId);
		Long num=getSingal(sql, sellerId,flag);
		int count=num.intValue();
		return count;
	}

	// 分页显示商家商品
	@Override
	public Page<Product> showProduct(int sellerId,int pageNow) {
		Page<Product> page=new Page<Product>();
		page.setPageNow(pageNow);
		int total=getCount(sellerId,0);
		page.setTotalNumber(total);
		int begin=(page.getPageNow()-1)*page.getPageSize();
		String sql="SELECT proId,proName,proType,counts,price,imgPath,introduct,flag FROM product WHERE proId IN (SELECT proId FROM seller WHERE sellerId=?)  AND flag=0 LIMIT ?,?";
		List<Product> products=queryForList(sql, sellerId,begin,page.getPageSize());
		page.setList(products);
		return page;
	}
	
	//分页显示下架商品
	@Override
	public Page<Product> downProduct(int sellerId,int pageNow){
		Page<Product> page=new Page<Product>();
		page.setPageNow(pageNow);
		int total=getCount(sellerId,1);
		page.setTotalNumber(total);
		int begin=(page.getPageNow()-1)*page.getPageSize();
		String sql="SELECT proId,proName,proType,counts,price,imgPath,introduct,flag FROM product WHERE proId IN (SELECT proId FROM seller WHERE sellerId=?)  AND flag=1 LIMIT ?,?";
		List<Product> products=queryForList(sql, sellerId,begin,page.getPageSize());
		page.setList(products);
		return page;
	}

	@Override
	public void delete(String k) {
		
	}

	@Override
	public Product queryById(String k) {
		// TODO Auto-generated method stub
		return null;
	}

	
	//根据id查询商品
	@Override
	public Product queryById(int k) {
		String sql = "SELECT proId,proName,proType,counts,imgPath,introduct,flag,price FROM product WHERE proId=?";
		Product product = new Product();
		product = queryForOne(sql, k);
		return product;
	}

	@Override
	public void delete(int k) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public Product queryByName(String proName) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public PseudoOrder queryByProName(String proName) {
		// TODO Auto-generated method stub
		return null;
	}
	//查询所有商品总数
	@Override
	public int getCount() {
		String sql="SELECT COUNT(*) FROM product";
		Long num=getSingal(sql);
		int count=num.intValue();
		return count;
	}

	@Override
	public Page<Product> showAllProduct(int pageNow) {
		Page<Product> page=new Page<Product>();
		page.setPageNow(pageNow);
		int total=getCount();
		page.setTotalNumber(total);
		int begin=(page.getPageNow()-1)*3;
		String sql="SELECT proId,proName,proType,counts,price,imgPath,introduct,flag FROM product limit ?,?";
		List<Product> products=queryForList(sql,begin,3);
		page.setList(products);
		return page;
	}
	
	//通过商品ID查找商家
	@Override
	public int findSellerId(int proId) {
		String sql="SELECT sellerId FROM seller WHERE proId=?";
		Integer seller=getSingal(sql, proId);
		int sellerId=(int) seller;
		return sellerId;
	}

	@Override
	public void recycle(int proId) {
		// TODO Auto-generated method stub
		
	}

	
}
