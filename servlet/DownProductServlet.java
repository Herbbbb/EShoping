package com.qianfeng.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.qianfeng.page.Page;
import com.qianfeng.pojo.Product;
import com.qianfeng.service.ProductService;
import com.qianfeng.service.impl.ProductServiceImpl;

/**
 * Servlet implementation class DownProductServlet
 */
@WebServlet("/downProductServlet")
public class DownProductServlet extends HttpServlet {
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
		ProductService productService =new ProductServiceImpl();
		String pageNo=request.getParameter("pageNow");
		int pageNow=Integer.parseInt(pageNo==null?"1":pageNo);
		//int sellerid=Integer.parseInt(request.getParameter("sellerId"));
		Page<Product> page=productService.checkDownProduct(100, pageNow);
		request.setAttribute("page",page);
		request.getRequestDispatcher("recycle_bin.jsp").forward(request, response);
	}

}
