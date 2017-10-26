package com.qianfeng.servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.qianfeng.pojo.PseudoOrder;

@WebServlet("/address")
public class CarDetailsServlet extends HttpServlet{
	/**
	 * 客户下单点击确认收货地址，将地址绑定在session，后台获取之后添加在商家的订单详情里
	 */
	private static final long serialVersionUID = 1L;
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doPost(req, resp);
	}
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		resp.setContentType("text/html;charset=UTF-8");
		req.setCharacterEncoding("UTF-8");
		
		//获取收货地址
		String address = req.getParameter("radio");	
		System.out.println(address);
		//获取图片路径
		String imgPath = req.getParameter("imgPath");
		//获取产品名称
		String proName = req.getParameter("proName");
		//获取小计
		double subtotal1 = Double.parseDouble(req.getParameter("subtotal1"));
		double subtotal2 = Double.parseDouble(req.getParameter("subtotal2"));
		//获取数量
		int num1 = Integer.parseInt(req.getParameter("num1"));
		//获取数量
		int num2 = Integer.parseInt(req.getParameter("num2"));
		//保存在对象中--这里的数据有冗余，根据需要删除
		PseudoOrder pseudoOrder = new PseudoOrder();
		pseudoOrder.setAddress(address);//需要
		pseudoOrder.setProName(proName);//和下面这个只需一个
		pseudoOrder.setImgPath(imgPath);
		pseudoOrder.setSubtotal(subtotal1);//小计--需要
		pseudoOrder.setProNum(num1);//数量---需要
		//添加到List集合
		List<PseudoOrder> list = new ArrayList<>();
		list.add(pseudoOrder);
		//绑定在session
		HttpSession session = req.getSession();
		session.setAttribute("products", list);
		
		resp.sendRedirect("done.jsp");
	}
}
