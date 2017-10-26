package com.qianfeng.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.qianfeng.service.LoveGoodsService;
import com.qianfeng.service.impl.LoveGoodsServiceImpl;

/**
 * 删除喜爱的商品
 */
@WebServlet("/deletelovegoods")
public class DeleteLoveGoodsServlet extends HttpServlet {
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
		PrintWriter out = response.getWriter();
		String proId = request.getParameter("proId");
		LoveGoodsService lgs = new LoveGoodsServiceImpl();
		int pid = -1;
		if(proId != null){
			pid = Integer.parseInt(proId);
		}
		Cookie[] cookies = request.getCookies();
		String userId = "";
		for(Cookie cookie : cookies){
			if(cookie.getName().equals("userId")){
				userId = cookie.getValue();
			}
		}
		int uid = -1;
		if(userId != null){
			uid = Integer.parseInt(userId);
		}
		lgs.deleteLoveGoods(uid, pid);
		out.println("删除成功!");
	}

}
