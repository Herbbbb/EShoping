package com.qianfeng.dao.Impl;

import java.util.ArrayList;
import java.util.List;

import com.qianfeng.dao.BaseDao;
import com.qianfeng.dao.CollectShopDao;
import com.qianfeng.pojo.CollectShop;

public class CollectShopDaoImpl extends BaseDao<CollectShop> implements CollectShopDao{

	//本案例中只需要实现增删两个
	@Override
	public void insert(CollectShop t) {
		String sql = "INSERT INTO collectshop VALUES(?,?)";
		update(sql,t.getUserId(),t.getSellerId());	
	}


	@Override
	public void delete(Integer k) {
		String sql = "DELETE FROM  collectshop WHERE userId=?";
		update(sql,k);
	}

	@Override
	public CollectShop queryById(Integer k) {
		// TODO Auto-generated method stub
		return null;
	}
	@Override
	public List<CollectShop> queryForAll() {
		// TODO Auto-generated method stub
		return null;
	}


	@Override
	public void update(CollectShop t) {
		// TODO Auto-generated method stub
		
	}
	//查找个人收藏的店铺
	@Override
	public List<CollectShop> findCollectShop(int userId) {
		String sql = "SELECT userId,sellerId FROM collectshop WHERE userId=?;";
		List<CollectShop> list = new ArrayList<>();
		list = queryForList(sql, userId);
		return list;
	}

	//删除用户收藏的店铺
	@Override
	public void deleteCollectShop(int userId, int sellerId) {
		String sql = "DELETE FROM collectshop WHERE userId=? AND sellerId=?;";
		update(sql, userId, sellerId);
	}

}
