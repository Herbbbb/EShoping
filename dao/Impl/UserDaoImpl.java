package com.qianfeng.dao.Impl;

import java.util.List;

import com.qianfeng.dao.BaseDao;
import com.qianfeng.dao.LoginDao;
import com.qianfeng.dao.UserDao;
import com.qianfeng.pojo.Login;
import com.qianfeng.pojo.User;

public class UserDaoImpl extends BaseDao<User> implements UserDao {
	LoginDao ld = new LoginDaoImpl();
	//插入用户详细信息
	@Override
	public void insert(User t) {
		ld.insert(t.getLogin());
		String sql = "INSERT INTO users(userId, userName, city, address, tel, imgPath) VALUES(?,?,?,?,?,?);";
		update(sql, t.getUserId(), t.getUserName(), t.getCity(), t.getAddress(), t.getTel(), t.getImgPath());
	}
	//修改用户信息
	@Override
	public void update(User t) {
		ld.update(t.getLogin());
		String sql = "UPDATE users SET userName=?,city=?,address=?,tel=? WHERE userId=?;";
		update(sql, t.getUserName(), t.getCity(), t.getAddress(), t.getTel(), t.getUserId());
	}
	//删除用户信息根据用户id
	@Override
	public void delete(Integer k) {
		String sql = "DELETE FROM users WHERE userId=?;";
		update(sql, k);
		ld.delete(k);
	}
	//查询用户根据id
	@Override
	public User queryById(Integer k) {
		User user = new User();
		String sql = "SELECT userId,userName,city,address,tel,imgPath FROM users WHERE userId=?";
		user = queryForOne(sql, k);
		Login login = new Login();
		login = ld.queryById(k);
		user.setLogin(login);
		return user;
	}
	//查询所有用户
	@Override
	public List<User> queryForAll() {
		// TODO Auto-generated method stub
		return null;
	}

}
