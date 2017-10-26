package com.qianfeng.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.qianfeng.pojo.PseudoOrder;
import com.qianfeng.service.OrdersService;
import com.qianfeng.service.impl.OrdersServiceImpl;

/**
 * Servlet implementation class OrdersServlet
 */
@WebServlet("*.do")
public class OrdersServlet extends HttpServlet {
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
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		String uri=request.getRequestURI();
		uri=uri.substring(uri.lastIndexOf("/")+1, uri.lastIndexOf("."));
		//System.out.println(uri);
		OrdersService service=new OrdersServiceImpl();
		if("orderDetail".equals(uri)){
			int userId=Integer.parseInt(request.getParameter("userId"));
			List<PseudoOrder> list=service.checkMyOrder(userId);
			request.setAttribute("list", list);
			request.getRequestDispatcher("order_detail.jsp").forward(request, response);
		}
		if("orders".equals(uri)){
			//int userId=Integer.parseInt(request.getParameter("userId"));
			List<PseudoOrder> orders=service.checkMyOrder(101);
			request.setAttribute("order", orders);
			request.getRequestDispatcher("car.jsp").forward(request, response);
		}
		if("userDeleteOrder".equals(uri)){
			int orderId=Integer.parseInt(request.getParameter("orderId"));
			int userId=Integer.parseInt(request.getParameter("userId"));
			service.userDeleteOrder(orderId);
			response.sendRedirect("orders.do?userId="+userId);
		}
		if("orderList".equals(uri)){
			Cookie[] cookies = request.getCookies();
			String userId = "";
			for(Cookie cookie : cookies){
				if(cookie.getName().equals("userId")){
					userId = cookie.getValue();
				}
			}
			List<PseudoOrder> orders=service.checkSellerOrder(Integer.parseInt(userId));
			request.setAttribute("orders", orders);
			request.getRequestDispatcher("order_list.jsp").forward(request, response);
			
		}
		if("deleteOrder".equals(uri)){
			int userId=Integer.parseInt(request.getParameter("userId"));
			service.sellerDeleteOrder(userId);
			response.sendRedirect("orderList.do");
		}
	}

}
