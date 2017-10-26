package com.qianfeng.test;

import java.util.ArrayList;
import java.util.List;
import org.junit.Test;
import com.qianfeng.dao.ProductDao;
import com.qianfeng.dao.Impl.ProductDaoImpl;
import com.qianfeng.pojo.LoveGoods;
import com.qianfeng.pojo.Product;
import com.qianfeng.service.LoveGoodsService;
import com.qianfeng.service.impl.LoveGoodsServiceImpl;
import com.qianfeng.page.Page;


public class ProductTest {
	ProductDao pd = new ProductDaoImpl();
	LoveGoodsService lgs = new LoveGoodsServiceImpl();
	//查询所有喜爱的商品测试
	@Test
	public void findLoveGoodsTest(){
		List<LoveGoods> list1 = new ArrayList<>();
		list1 = lgs.findAllLoveGoods(104);
		System.out.println(list1);
		for(LoveGoods good : list1){
			System.out.println(good.getProId());
			Product p = pd.queryById(good.getProId());
			System.out.println(p);
			
		}
	}

	
	//获取分页显示信息/////
	@Test
	public void test4(){
		ProductDao pd = new ProductDaoImpl();
		Page<Product> page=pd.showProduct(100, 1);
		System.out.println(page.getList());
	}
	
	@Test
	public void test5(){
		ProductDao pd = new ProductDaoImpl();
		int num=pd.findSellerId(201);
		System.out.println(num);
	}

	//删除喜爱的商品测试
	@Test
	public void deleteLoveGoodsTest(){
		lgs.deleteLoveGoods(103, 200);
	}
	
	//查看下架商品
	@Test
	public void checkDown(){
		ProductDao pd = new ProductDaoImpl();
		Page<Product> page=pd.downProduct(100, 1);
		System.out.println(page.getList());
	}

}
