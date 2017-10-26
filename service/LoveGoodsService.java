package com.qianfeng.service;

import java.util.List;

import com.qianfeng.pojo.LoveGoods;

public interface LoveGoodsService {
	public void insert(LoveGoods t);
	public void update(LoveGoods t);
	public void delete(Integer k);
	public LoveGoods queryById(Integer k);
	public List<LoveGoods> queryForAll();
	//查询个人所有的喜爱的商品通过用户id 
	public List<LoveGoods> findAllLoveGoods(int userId);
	//通过用户id删除喜欢的商品id
	public void deleteLoveGoods(int userId, int proId);
}
