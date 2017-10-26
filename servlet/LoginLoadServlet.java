package com.qianfeng.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.qianfeng.pojo.Login;
import com.qianfeng.service.LoginService;
import com.qianfeng.service.impl.LoginServiceImpl;


/**
 * Servlet implementation class LoginLoadServlet
 */
@WebServlet("/loginload")
public class LoginLoadServlet extends HttpServlet {
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
		PrintWriter out = response.getWriter();
		LoginService rs = new LoginServiceImpl();
		String flag = request.getParameter("flag");
		String userId = request.getParameter("userId");
		String password = request.getParameter("password");
		System.out.println(userId);
		Login regist = new Login();
		regist = rs.findLogin(Integer.parseInt(userId), password);//查找该用户
		if(regist == null){
			out.write("用户名或密码错误！");
		}
		if(flag.equals("false")){
			out.write("验证码错误!");
		}
	}

}
