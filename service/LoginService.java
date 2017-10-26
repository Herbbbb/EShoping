package com.qianfeng.service;

import com.qianfeng.pojo.Login;

public interface LoginService {
	//根据用户id和密码查询登录用户
	public Login findLogin(int userId, String password);
	//根据用户id查找用户
	public Login findById(int userId);
}
