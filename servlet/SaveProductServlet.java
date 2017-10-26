package com.qianfeng.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.qianfeng.pojo.Product;
import com.qianfeng.service.ProductService;
import com.qianfeng.service.impl.ProductServiceImpl;

/**
 * Servlet implementation class SaveProductServlet
 */
@WebServlet("/saveproduct")
public class SaveProductServlet extends HttpServlet {
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
		String proId = request.getParameter("proId");
		String proName = request.getParameter("proName");
		if(proName != null){
			proName = new String(proName.getBytes("iso-8859-1"), "utf-8");
		}
		String price = request.getParameter("price");
		String counts = request.getParameter("counts");
		String proType = request.getParameter("select2");
		if(proType != null){
			proType = new String(proType.getBytes("iso-8859-1"), "utf-8");
		}
		String src = request.getParameter("src");
		String introduct = request.getParameter("editor");
		introduct = introduct.substring(introduct.indexOf(">") + 1, introduct.lastIndexOf("<") - 1);
		if(introduct != null){
			introduct = new String(introduct.getBytes("iso-8859-1"), "utf-8");
		}
		Cookie[] cookies = request.getCookies();
		String userId = "";
		for(Cookie cookie : cookies){
			if(cookie.getName().equals("userId")){
				userId = cookie.getValue();
			}
		}
		Product product = new Product(Integer.parseInt(proId), proName, proType, Double.parseDouble(price), Integer.parseInt(counts), src, introduct, 0);
		ProductService ps = new ProductServiceImpl();
		ps.insert(Integer.parseInt(userId), product);
		response.sendRedirect("seller.jsp");
	}

}
