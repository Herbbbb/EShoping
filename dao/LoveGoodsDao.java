package com.qianfeng.dao;

import java.util.List;

import com.qianfeng.pojo.LoveGoods;

public interface LoveGoodsDao extends BaseInterface<LoveGoods, Integer> {
	//查询所有的喜爱的商品///
	public List<LoveGoods> findAllLoveGoods(int userId);
	//删除用户的喜爱的商品
	public void deleteLoveGoods(int userId, int proId);
}
