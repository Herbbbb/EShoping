package com.qianfeng.servlet;

import java.io.IOException;

import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.qianfeng.page.Page;
import com.qianfeng.pojo.Product;
import com.qianfeng.service.ProductService;
import com.qianfeng.service.impl.ProductServiceImpl;


@WebServlet("/sale")
public class ProductSaleServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;ccharset=utf-8");
		ProductService ps=new ProductServiceImpl();
		List<Product> products=ps.queryForAll();
		//PrintWriter out=response.getWriter();
		String pageNow = request.getParameter("pageNow");
		System.out.println(pageNow);
		int p = 1;
		if(pageNow != null){
			p = Integer.parseInt(pageNow == null ? "1" : pageNow);
		}
		//System.out.println(p);
		Page<Product> page =ps.showAllProduct(p);
		//JSONObject jsonObject=JSONObject.fromObject(page);
		//out.println(jsonObject);
		System.out.println(page.getList());
		request.setAttribute("page", page);
		request.setAttribute("products", products);
		request.getRequestDispatcher("main3.jsp").forward(request, response);
	}
}
