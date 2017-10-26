package com.qianfeng.dao.Impl;


import java.util.List;

import com.qianfeng.dao.BaseDao;
import com.qianfeng.dao.LoginDao;
import com.qianfeng.pojo.Login;

public class LoginDaoImpl extends BaseDao<Login> implements LoginDao {
	//根据用户id和密码查找登录用户
	@Override
	public Login findLogin(int userId, String password) {
		String sql = "SELECT userId,password,flag FROM login WHERE userId=? AND password=?;";
		Login login = new Login();
		login = queryForOne(sql, userId, password);
		return login;
	}
	//插入用户
	@Override
	public void insert(Login t) {
		String sql = "INSERT INTO login(userId,password,flag) VALUES(?,?,?);";
		update(sql, t.getUserId(), t.getPassword(), t.getFlag());
	}
	//修改用户密码
	@Override
	public void update(Login t) {
		String sql = "UPDATE login SET password=? WHERE userId=?;";
		update(sql, t.getPassword(), t.getUserId());
	}
	//删除用户
	@Override
	public void delete(Integer k) {
		String sql = "DELETE FROM login WHERE userId=?;";
		update(sql, k);
	}
	
	@Override
	public Login queryById(Integer k) {
		Login login = new Login();
		String sql = "SELECT password FROM login WHERE userId=?;";
		login = queryForOne(sql, k);
		return login;
	}
	//查询所有用户
	@Override
	public List<Login> queryForAll() {
		return null;
	}
	//根据用户id查找用户
	@Override
	public Login findLoginById(int userId) {
		Login login = new Login();
		String sql = "SELECT userId,password FROM login WHERE userId=?;";
		login = queryForOne(sql, userId);
		return login;
	}
}
