package com.qianfeng.test;

import org.junit.Test;

import com.qianfeng.dao.ProductDao;
import com.qianfeng.dao.Impl.PseudoOrderDaoImpl;
import com.qianfeng.pojo.PseudoOrder;

public class PseudoOrderTest {
	ProductDao product = new PseudoOrderDaoImpl();
	@Test
	public void test1(){
		PseudoOrder pro = product.queryByProName("茅台");
		System.out.println(pro);
	}
}

