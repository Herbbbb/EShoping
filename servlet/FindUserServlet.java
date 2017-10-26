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
 * Servlet implementation class FindUserServlet
 */
@WebServlet("/finduser")
public class FindUserServlet extends HttpServlet {
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
		Cookie[] cookies = request.getCookies();
		String userId = "";
		for(Cookie cookie : cookies){
			if(cookie.getName().equals("userId")){
				userId = cookie.getValue();
			}
		}
		int id = -1;
		if(userId != null){
			id = Integer.parseInt(userId);
		}
		UserService us = new UserServiceImpl();
		User user = new User();
		user = us.queryById(id);
		request.setAttribute("user", user);
		request.getRequestDispatcher("userinformation.jsp").forward(request, response);
	}

}
