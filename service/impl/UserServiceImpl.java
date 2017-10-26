package com.qianfeng.service.impl;

import java.util.List;

import com.qianfeng.dao.UserDao;
import com.qianfeng.dao.Impl.UserDaoImpl;
import com.qianfeng.pojo.User;
import com.qianfeng.service.UserService;

public class UserServiceImpl implements UserService {
	UserDao ud = new UserDaoImpl();
	//用户注册
	@Override
	public void saveUser(User t) {
		ud.insert(t);
	}
	//修改用户信息
	@Override
	public void updateUser(User t) {
		ud.update(t);
	}
	//根据用户id删除用户
	@Override
	public void deleteUser(Integer k) {
		ud.delete(k);
	}
	//查询用户根据id
	@Override
	public User queryById(Integer k) {
		User user = new User();
		user = ud.queryById(k);
		return user;
	}

	@Override
	public List<User> queryForAll() {
		// TODO Auto-generated method stub
		return null;
	}

}
