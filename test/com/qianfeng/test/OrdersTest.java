package com.qianfeng.test;

import java.util.List;
import org.junit.Test;
import com.qianfeng.dao.OrdersDao;
import com.qianfeng.dao.ProductDao;
import com.qianfeng.dao.Impl.OrdersDaoImpl;
import com.qianfeng.dao.Impl.ProductDaoImpl;
import com.qianfeng.pojo.Orders;
import com.qianfeng.pojo.PseudoOrder;
import com.qianfeng.service.OrdersService;
import com.qianfeng.service.impl.OrdersServiceImpl;

public class OrdersTest {
	OrdersDao orderDao =new OrdersDaoImpl();
	ProductDao productDao=new ProductDaoImpl();
	OrdersService service=new OrdersServiceImpl();
	//详细订单及个人订单测试
	@Test
	public void test3(){
		List<PseudoOrder> list=service.checkMyOrder(101);
		System.out.println(list);
	}
	//商家订单
	@Test
	public void test4(){
		List<PseudoOrder> list=orderDao.queryForSeller(100);
		for(PseudoOrder order:list){
			System.out.println(order.getTotalPrice());
			System.out.println(order.getOrderId());
		}
	}
	
	//添加订单
	/*public void test5(){
		Orders order=new Orders(6, 203, 2, 130);
		service.addOrder(101, 100, order);
	}*/
	public static void main(String[] args) {
		OrdersService service=new OrdersServiceImpl();
		Orders order=new Orders(8, 400, 1, 33);
		service.addOrder(104, 300, order);
	}
}
