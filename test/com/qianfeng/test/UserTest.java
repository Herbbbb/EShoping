package com.qianfeng.test;

import org.junit.Test;

import com.qianfeng.pojo.Login;
import com.qianfeng.pojo.User;
import com.qianfeng.service.LoginService;
import com.qianfeng.service.UserService;
import com.qianfeng.service.impl.LoginServiceImpl;
import com.qianfeng.service.impl.UserServiceImpl;

public class UserTest {
	LoginService ls = new LoginServiceImpl();
	UserService us = new UserServiceImpl();
	//用户注册
	@Test
	public void saveUser(){
		Login login = new Login(1006, "123456", 0);
		User user = new User(login.getUserId(), "小李", "大连", "大连", "1234", "1.jpg", login);
		us.saveUser(user);
	}
	//用户信息修改
	@Test
	public void updateUser(){
		Login login = new Login(1006, "1234567");
		User user = new User(1006, "小王", "北京", "北京", "1342", "1.jpg", login);
		us.updateUser(user);
	}
	//用户删除
	@Test
	public void deleteUser(){
		int userId = 1006;
		us.deleteUser(1006);
	}
	//用户查询
	@Test
	public void findUser(){
		int userId = 104;
		User user = us.queryById(104);
		System.out.println(user);
	}
	
}
