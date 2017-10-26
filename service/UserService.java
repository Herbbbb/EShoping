package com.qianfeng.service;

import java.util.List;

import com.qianfeng.pojo.User;

public interface UserService {
	//插入用户详细信息
	public void saveUser(User t);
	//修改用户信息
	public void updateUser(User t);
	//删除用户信息根据用户id
	public void deleteUser(Integer k);
	//查询用户根据id
	public User queryById(Integer k);
	//查询所有用户
	public List<User> queryForAll();
}
