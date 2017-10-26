package com.qianfeng.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.qianfeng.service.CollectShopService;
import com.qianfeng.service.impl.CollectShopServiceImpl;

/**
 * 删除收藏店铺123
 */
@WebServlet("/deletecollectshop")
public class DeleteCollectShopServlet extends HttpServlet {
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
		String sellerId = request.getParameter("sellerId");
		Cookie[] cookies = request.getCookies();
		String userId = "";
		for(Cookie cookie : cookies){
			if(cookie.getName().equals("userId")){
				userId = cookie.getValue();
			}
		}
		int uid = -1;
		int sid = -1;
		if(sellerId != null && userId != null){
			uid = Integer.parseInt(userId);
			sid = Integer.parseInt(sellerId);
		}
		CollectShopService css = new CollectShopServiceImpl();
		css.deleteCollectShop(uid, sid);
		PrintWriter out = response.getWriter();
		out.println("删除成功!");	
	}
}
