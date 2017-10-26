package com.qianfeng.service;

import java.util.List;

import com.qianfeng.pojo.CollectShop;

public interface CollectShopService{
	//增加商铺收藏
	public void insert(CollectShop c);
	//删除收藏的店铺
	public void delete(int id);
	//查询个人所收藏的所有店铺
	public List<CollectShop> findCollectShop(int userId);
	//删除用户收藏的店铺
	public void deleteCollectShop(int userId, int sellerId);
}
