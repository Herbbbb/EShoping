package com.qianfeng.service.impl;

import java.util.ArrayList;
import java.util.List;

import com.qianfeng.dao.BaseDao;
import com.qianfeng.dao.CollectShopDao;
import com.qianfeng.dao.Impl.CollectShopDaoImpl;
import com.qianfeng.pojo.CollectShop;
import com.qianfeng.service.CollectShopService;

public class CollectShopServiceImpl extends BaseDao<CollectShop> implements CollectShopService{
	CollectShopDao csd = new CollectShopDaoImpl();
	@Override
	public void insert(CollectShop t) {
		String sql = "INSERT INTO collectshop(userId,sellerId) VALUES(?,?)";
		update(sql,t.getUserId(),t.getSellerId());	
	}
	@Override
	public void delete(int id) {
		String sql = "DELETE FROM collectshop WHERE userId=?";
		update(sql,id);
	}
	//查询个人所收藏的所有店铺
	@Override
	public List<CollectShop> findCollectShop(int userId) {
		List<CollectShop> list = new ArrayList<>();
		list = csd.findCollectShop(userId);
		return list;
	}
	//删除用户收藏的店铺
	@Override
	public void deleteCollectShop(int userId, int sellerId) {
		csd.deleteCollectShop(userId, sellerId);
	}
}
