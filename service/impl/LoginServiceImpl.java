package com.qianfeng.service.impl;

import com.qianfeng.dao.LoginDao;
import com.qianfeng.dao.Impl.LoginDaoImpl;
import com.qianfeng.pojo.Login;
import com.qianfeng.service.LoginService;

public class LoginServiceImpl implements LoginService {
	LoginDao ld = new LoginDaoImpl();
	//用户登录
	@Override
	public Login findLogin(int userId, String password) {
		Login login = new Login();
		login = ld.findLogin(userId, password);
		return login;
	}
	//查询用户通过id
	@Override
	public Login findById(int userId) {
		Login login = new Login();
		login = ld.findLoginById(userId);
		return login;
	}

}
