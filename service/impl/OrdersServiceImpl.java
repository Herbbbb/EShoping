package com.qianfeng.service.impl;

import java.util.List;
import com.qianfeng.dao.OrdersDao;
import com.qianfeng.dao.ProductDao;
import com.qianfeng.dao.Impl.OrdersDaoImpl;
import com.qianfeng.dao.Impl.ProductDaoImpl;
import com.qianfeng.pojo.Orders;
import com.qianfeng.pojo.PseudoOrder;
import com.qianfeng.service.OrdersService;
public class OrdersServiceImpl implements OrdersService {
	OrdersDao orderDao =new OrdersDaoImpl();
	ProductDao productDao=new ProductDaoImpl();
	//查看个人订单、订单详情
	@Override
	public List<PseudoOrder> checkMyOrder(int userId) {
		List<PseudoOrder> list=orderDao.queryForMyOrder(userId);
		return list;
	}
	
	//查看商家订单
	@Override
	public List<PseudoOrder> checkSellerOrder(int sellerId) {
		List<PseudoOrder> list=orderDao.queryForSeller(sellerId);
		return list;
	}
	//添加订单
	@Override
	public void addOrder(int userId, int sellerId, Orders order) {
		orderDao.insertToUser(userId, order.getOrderId());
		orderDao.insert(order);
		orderDao.insertToSeller(userId, sellerId);
		
	}

	//用户删除订单
	@Override
	public void userDeleteOrder(int orderId) {
		orderDao.userDeleteOrder(orderId);
		orderDao.delete(orderId);
	}
	//商家删除订单
	@Override
	public void sellerDeleteOrder(int userId) {
		orderDao.sellerDeleteOrder(userId);
		orderDao.sellerDeleteOrder(userId);
		
	}
	
	

}
