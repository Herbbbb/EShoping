package com.qianfeng.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.qianfeng.pojo.User;
import com.qianfeng.service.UserService;
import com.qianfeng.service.impl.UserServiceImpl;

/**
 * Servlet implementation class UpdateUserLoadServlet
 */
@WebServlet("/updateuserload")
public class UpdateUserLoadServlet extends HttpServlet {
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
		String userName = request.getParameter("userName");
		String password = request.getParameter("password");
		String confirm = request.getParameter("confirm");
		String city = request.getParameter("city");
		String address = request.getParameter("address");
		String tel = request.getParameter("tel");
		Cookie[] cookies = request.getCookies();
		String userId = "";
		for(Cookie cookie : cookies){
			if(cookie.getName().equals("userId")){
				userId = cookie.getValue();
				System.out.println(userId);
			}
		}
		int id = -1;
		if(userId != null){
			id = Integer.parseInt(userId);
		}
		UserService us = new UserServiceImpl();
		User user = new User();
		user = us.queryById(id);
		if(password.equals(confirm)){
			user.setUserName(userName);
			user.setCity(city);
			user.setAddress(address);
			user.setTel(tel);
			user.getLogin().setPassword(password);
			us.updateUser(user);
			response.sendRedirect("collection");
			return;
		}
		response.sendRedirect("updateuser");
	}

}
