package com.qianfeng.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.qianfeng.pojo.Login;
import com.qianfeng.service.LoginService;
import com.qianfeng.service.impl.LoginServiceImpl;


/**
 * 用户登录判断是否成功登录
 */
@WebServlet("/login")
public class LoginServlet extends HttpServlet {
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
		LoginService rs = new LoginServiceImpl();
		String userId = request.getParameter("userId");
		String password = request.getParameter("password");//获取用户名和密码
		String flag = request.getParameter("flag");
		System.out.println(userId);
		Login login = new Login();
		login = rs.findLogin(Integer.parseInt(userId), password);//查找该用户
		if(login != null){//如果用户存在则登录成功，跳转到下个页面
			int flag1 = login.getFlag();
			if(flag.equals("true")){
				Cookie cookie = new Cookie("userId", userId);
				response.addCookie(cookie);
				if(flag1 == 0){
					response.sendRedirect("index.jsp");
				}else if(flag1 == 1){
					response.sendRedirect("seller.jsp");
				}
				return;
			}
		}
		//失败的话返回登录页面
		response.sendRedirect("login.jsp");
		return;
	}

}
