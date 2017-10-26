	package com.qianfeng.dao;

import com.qianfeng.pojo.Login;

//用户登录
public interface LoginDao extends BaseInterface<Login, Integer>{
	//根据用户id和密码查询登录用户
	public Login findLogin(int userId, String password);
	//根据用户id查询登录用户
	public Login findLoginById(int userId);
}
