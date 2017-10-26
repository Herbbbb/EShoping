package com.qianfeng.test;

import org.junit.Test;

import com.qianfeng.pojo.CollectShop;
import com.qianfeng.service.CollectShopService;
import com.qianfeng.service.impl.CollectShopServiceImpl;

public class CollectShopTest {
	
	CollectShopService collectShopService = new CollectShopServiceImpl();

	@Test
	public void test1(){
		CollectShop collectShop = new CollectShop(100,1001);
		collectShopService.insert(collectShop);
	}
	@Test
	public void test2(){
		collectShopService.delete(100);
	}
}
