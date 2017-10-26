package com.qianfeng.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.qianfeng.pojo.Product;
import com.qianfeng.service.ProductService;
import com.qianfeng.service.impl.ProductServiceImpl;

@WebServlet("/productDetail")
public class ProductDetail extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		int proId=Integer.parseInt(request.getParameter("proId"));
		ProductService ps=new ProductServiceImpl();
		Product product=ps.queryById(proId);
		request.setAttribute("product", product);
		request.getRequestDispatcher("detail.jsp").forward(request, response);
	}

}
