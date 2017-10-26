package com.qianfeng.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.qianfeng.service.ProductService;
import com.qianfeng.service.impl.ProductServiceImpl;

/**
 * Servlet implementation class DeleteProductServlet
 */
@WebServlet("/deleteProductServlet")
public class DeleteProductServlet extends HttpServlet {
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
		Cookie [] cookies=request.getCookies();
		int sellerId=-1;
		for(Cookie c:cookies){
			if("userId".equals(c.getName())){
				sellerId=Integer.parseInt(c.getValue());
			}
		}
		ProductService productService =new ProductServiceImpl();
		String proId=request.getParameter("proId");
		productService.delete(sellerId, Integer.parseInt(proId));
		response.sendRedirect("downProductServlet");
	}

}
