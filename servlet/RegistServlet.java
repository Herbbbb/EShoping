package com.qianfeng.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.qianfeng.pojo.Login;
import com.qianfeng.pojo.User;
import com.qianfeng.service.UserService;
import com.qianfeng.service.impl.UserServiceImpl;

/**
 * 用户注册
 */
@WebServlet("/regist")
public class RegistServlet extends HttpServlet {
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
		UserService us = new UserServiceImpl();
		String src = request.getParameter("src");
		String userId = request.getParameter("userId");
		String password = request.getParameter("password");
		String confirm = request.getParameter("confirm");
		String select = request.getParameter("select");
		String userName = request.getParameter("userName");
		if(select != null){
			select = new String(select.getBytes("iso-8859-1"), "utf-8");
		}
		String address = request.getParameter("address");
		String tel = request.getParameter("tel");
		/*String[] flag1 = request.getParameterValues("name1");
		String[] flag2 = request.getParameterValues("name2");*/
		String flag1 = request.getParameter("flag1");
		String flag2 = request.getParameter("flag2");
		String city = request.getParameter("city");
		int flag = -1;
		System.out.println("++++" + userId + password + confirm + flag1 + flag2);
		if(userId != null && password != null && password.equals(confirm) && (flag1 != null || flag2 != null)){
			if(flag1 != null){
				flag = 0;
			}else if(flag2 != null){
				flag = 1;
			}
			Login login = new Login(Integer.parseInt(userId), password, flag);
			src = src.substring(src.indexOf("upload") - 1);
			User user = new User(Integer.parseInt(userId), userName, city, select + address, tel, src, login);
			us.saveUser(user);
			response.sendRedirect("login.jsp");
			return;
		}		
		response.sendRedirect("register.jsp");
	}

}
