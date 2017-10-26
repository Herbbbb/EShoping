package com.qianfeng.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.qianfeng.pojo.CollectShop;
import com.qianfeng.service.CollectShopService;
import com.qianfeng.service.impl.CollectShopServiceImpl;

@WebServlet("/shop")
public class ShopCollectServlet extends HttpServlet{
	/**
	 * 实现店铺收藏
	 */
	private static final long serialVersionUID = 1L;
	
	CollectShopService collectShopService = new CollectShopServiceImpl();
	CollectShop collectShop = new CollectShop();
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doPost(req, resp);
	}
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		//捕获前台通过Ajax发送过来的ID  通过ID获取对象从而获取图片路径
		req.setCharacterEncoding("UTF-8");
		resp.setContentType("text/html;charset=UTF-8");
		//获取商铺ID
		int sellerId = Integer.parseInt(req.getParameter("sellerId"));
		//获取用户ID
		int userId = Integer.parseInt(req.getParameter("userId"));
		System.out.println(sellerId);
		System.out.println(userId);
		//添加进入收藏店铺的表格
		collectShop.setUserId(userId);
		collectShop.setSellerId(sellerId);
		collectShopService.insert(collectShop);
	}
}
