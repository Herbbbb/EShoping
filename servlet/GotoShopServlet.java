package com.qianfeng.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import com.qianfeng.page.Page;
import com.qianfeng.pojo.Product;
import com.qianfeng.service.ProductService;
import com.qianfeng.service.impl.ProductServiceImpl;

/**
 * Servlet implementation class GotoShopServlet
 */
@WebServlet("/gotoShopServlet")
public class GotoShopServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public GotoShopServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		ProductService service=new ProductServiceImpl();
		String pageNo=request.getParameter("pageNow");
		String proID=request.getParameter("proId");
		int pageNow=Integer.parseInt(pageNo==null?"1":pageNo);
		HttpSession session=request.getSession();
		if(proID!=null){
			int proId=Integer.parseInt(proID);
			int sellerId=service.getSellerIdByProId(proId);
			session.setAttribute("sellerId", sellerId);
		}
		int sellerId=(int) session.getAttribute("sellerId");
		Page<Product> page=service.showProduct(sellerId, pageNow);
		request.setAttribute("sellerId", sellerId);
		request.setAttribute("page", page);
		request.getRequestDispatcher("showShop.jsp").forward(request, response);
		
		
	}

}
