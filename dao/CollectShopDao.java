package com.qianfeng.dao;

import java.util.List;

import com.qianfeng.pojo.CollectShop;

public interface CollectShopDao extends BaseInterface<CollectShop, Integer>{
	//查询用户收藏的店铺
	public List<CollectShop> findCollectShop(int userId);
	//删除用户收藏的店铺
	public void deleteCollectShop(int userId, int sellerId);
}
