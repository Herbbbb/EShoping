package com.qianfeng.dao;

import java.util.List;

import com.qianfeng.pojo.Orders;
import com.qianfeng.pojo.PseudoOrder;
/*
 * 若订单有新功能，在此接口添加功能
 * */
public interface OrdersDao extends BaseInterface<Orders, Integer> {
	////查看个人订单
	public List<PseudoOrder> queryForMyOrder(int userId);
	
	//查看商家订单
	public List<PseudoOrder> queryForSeller(int sellerId);
	
	//将订单添加到个人订单表
	public void insertToUser(int userId,int orderId);
	
	//将订单添加到商家订单表
	public void insertToSeller(int userId,int sellerId);
	
	//用户删除订单
	public void userDeleteOrder(int orderId);
	
	//商家删除订单
	public void sellerDelOrder(int userId);
	//商家删除订单
	public void sellerDeleteOrder(int userId);
	
}
