package com.qianfeng.dao.Impl;

import java.util.ArrayList;
import java.util.List;

import com.qianfeng.dao.BaseDao;
import com.qianfeng.dao.LoveGoodsDao;
import com.qianfeng.pojo.LoveGoods;

public class LoveGoodsDaoImpl extends BaseDao<LoveGoods> implements LoveGoodsDao {

	@Override
	public void insert(LoveGoods t) {
		// TODO Auto-generated method stub

	}

	@Override
	public void update(LoveGoods t) {
		// TODO Auto-generated method stub

	}

	@Override
	public void delete(Integer k) {
		// TODO Auto-generated method stub

	}

	@Override
	public LoveGoods queryById(Integer k) {
		// TODO Auto-generated method stub
		return null;
	}
	@Override
	public List<LoveGoods> queryForAll() {
		return null;
	}
	//查询个人所有的喜爱的商品通过用户id 
	@Override
	public List<LoveGoods> findAllLoveGoods(int userId) {
		String sql = "SELECT userId,proId FROM lovegoods WHERE userId=?;";
		List<LoveGoods> list = new ArrayList<>();
		list = queryForList(sql, userId);
		return list;
	}
	//删除用户喜爱的商品
	@Override
	public void deleteLoveGoods(int userId, int proId) {
		String sql = "DELETE FROM lovegoods WHERE userId=? AND proId=?;";
		update(sql, userId, proId);
	}

}
