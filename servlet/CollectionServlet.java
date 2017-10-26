package com.qianfeng.servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.qianfeng.pojo.CollectShop;
import com.qianfeng.pojo.LoveGoods;
import com.qianfeng.pojo.Product;
import com.qianfeng.pojo.User;
import com.qianfeng.service.CollectShopService;
import com.qianfeng.service.LoveGoodsService;
import com.qianfeng.service.ProductService;
import com.qianfeng.service.UserService;
import com.qianfeng.service.impl.CollectShopServiceImpl;
import com.qianfeng.service.impl.LoveGoodsServiceImpl;
import com.qianfeng.service.impl.ProductServiceImpl;
import com.qianfeng.service.impl.UserServiceImpl;

/**
 * 查看我的收藏
 */
@WebServlet("/collection")
public class CollectionServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=utf-8");
		request.setCharacterEncoding("utf-8");
		Cookie[] cookies = request.getCookies();
		String userId = "";
		for(Cookie cookie : cookies){
			if(cookie.getName().equals("userId")){
				userId = cookie.getValue();
			}
		}
		int id = -1;
		if(userId != null){
			id = Integer.parseInt(userId);
		}
		LoveGoodsService lgs = new LoveGoodsServiceImpl();
		ProductService ps = new ProductServiceImpl();
		List<LoveGoods> list1 = new ArrayList<>();
		list1 = lgs.findAllLoveGoods(id);
		List<Product> list2 = new ArrayList<>();
		for(LoveGoods good : list1){
			Product p = ps.queryById(good.getProId());
			System.out.println("++++" + p.getImgPath());
			list2.add(p);
		}
		List<CollectShop> list3 = new ArrayList<>();
		CollectShopService css = new CollectShopServiceImpl();
		list3 = css.findCollectShop(id);
		User user = new User();
		UserService us = new UserServiceImpl();
		user = us.queryById(id);
		request.setAttribute("user", user);
		request.setAttribute("list", list2);
		request.setAttribute("shops", list3);
		request.getRequestDispatcher("collection.jsp").forward(request, response);
	}

}
