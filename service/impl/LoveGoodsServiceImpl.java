package com.qianfeng.service.impl;

import java.util.ArrayList;
import java.util.List;

import com.qianfeng.dao.LoveGoodsDao;
import com.qianfeng.dao.Impl.LoveGoodsDaoImpl;
import com.qianfeng.pojo.LoveGoods;
import com.qianfeng.service.LoveGoodsService;

public class LoveGoodsServiceImpl implements LoveGoodsService {
	LoveGoodsDao lgd = new LoveGoodsDaoImpl();
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
		// TODO Auto-generated method stub
		return null;
	}
	//查询该用户所有的喜爱商品
	@Override
	public List<LoveGoods> findAllLoveGoods(int userId) {
		List<LoveGoods> list = new ArrayList<>();
		list = lgd.findAllLoveGoods(userId);
		return list;
	}
	//通过用户id删除商品id
	@Override
	public void deleteLoveGoods(int userId, int proId) {
		lgd.deleteLoveGoods(userId, proId);
	}

}
