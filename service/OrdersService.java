package com.qianfeng.service;

import java.util.List;

import com.qianfeng.pojo.Orders;
import com.qianfeng.pojo.PseudoOrder;

public interface OrdersService {
	//查看个人订单、订单详情
	public List<PseudoOrder> checkMyOrder(int userId);
	
	//查看商家订单
	public List<PseudoOrder> checkSellerOrder(int sellerId);
	//添加订单
	public void addOrder(int userId,int sellerId,Orders order);
	
	//用户删除订单
	public void userDeleteOrder(int orderId);
	
	//商家删除订单
	public void sellerDeleteOrder(int userId);
}
