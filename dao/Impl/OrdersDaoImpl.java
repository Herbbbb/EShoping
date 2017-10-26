package com.qianfeng.dao.Impl;

import java.util.ArrayList;
import java.util.List;

import com.qianfeng.dao.BaseDao;
import com.qianfeng.dao.OrdersDao;
import com.qianfeng.pojo.Orders;
import com.qianfeng.pojo.PseudoOrder;

public class OrdersDaoImpl extends BaseDao<Orders> implements OrdersDao {
	//将订单添加到个人订单表
	@Override
	public void insertToUser(int userId,int orderId){
		String sql="INSERT INTO userorder(orderId,userId) VALUES(?,?)";
		update(sql, orderId,userId);
	}
	//将订单添加到商家订单表
	@Override
	public void insertToSeller(int userId,int sellerId){
		String sql="INSERT INTO sellerorder(userId,sellerId) VALUES(?,?)";
		update(sql, userId,sellerId);
	}
	//将订单详情添加到订单表
	
	@Override
	public void insert(Orders t) {
		String sql="INSERT INTO orders(orderId,proId,proNum,subtotal) VALUES(?,?,?,?)";
		update(sql, t.getOrderId(),t.getProId(),t.getProNum(),t.getSubtotal());

	}
	//用户删除订单
	@Override
	public void userDeleteOrder(int orderId){
		String sql="DELETE FROM userorder WHERE orderId=?";
		update(sql, orderId);
	}
	//用户删除订单
	@Override
	public void delete(Integer k) {
		String sql="DELETE FROM orders WHERE orderId=?";
		update(sql, k);
		
	}
	
	//商家删除订单
	@Override
	public void sellerDelOrder(int userId){
		String sql="DELETE FROM sellerorder WHERE userId=?";
		update(sql, userId);
	}
	//商家删除订单
	@Override
	public void sellerDeleteOrder(int userId){
		String sql="DELETE FROM orders WHERE orderId IN (SELECT orderId FROM userorder WHERE userId=?)";
		update(sql, userId);
	}
	@Override
	public void update(Orders t) {
		
	}


	@Override
	public Orders queryById(Integer k) {
		String sql="SELECT orderId,proId,proNum,subtotal FROM orders WHERE orderId=?";
		Orders order =queryForOne(sql, k);
		return order;
	}

	@Override
	public List<Orders> queryForAll() {
		// TODO Auto-generated method stub
		return null;
	}
	//查看个人订单
	@Override
	public List<PseudoOrder> queryForMyOrder(int userId) {
		String sql="SELECT userorder.orderId,userorder.userId,proNum,subtotal,product.proId,"
				+ "proName,product.imgPath,price,userName,address,tel FROM userorder,orders,product,users "
				+ "WHERE userorder.orderId IN (SELECT orderId FROM userorder WHERE userId=?) AND userorder.orderId=orders.orderId AND "
				+ "orders.proId=product.proId AND userorder.userId=users.userId";
		List<PseudoOrder> list=new ArrayList<PseudoOrder>();
		list=queryForOrder(sql, userId);
		return list;
	}
	//查看商家订单
	@Override
	public List<PseudoOrder> queryForSeller(int sellerId) {
		String sql="SELECT userorder.orderId,userorder.userId,proNum,subtotal,product.proId,"
				+ "proName,product.imgPath,price,userName,address,tel,SUM(subtotal) AS totalPrice FROM"
				+ " userorder,orders,product,users WHERE userorder.userId IN (SELECT userId FROM sellerorder WHERE sellerId=?) AND "
				+ "userorder.orderId=orders.orderId AND orders.proId=product.proId AND userorder.userId=users.userId GROUP BY users.userId";
		List<PseudoOrder> list=new ArrayList<PseudoOrder>();
		list=queryForOrder(sql, sellerId);
		return list;
	}

}
