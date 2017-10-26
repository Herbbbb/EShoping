package com.qianfeng.dao;

import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;
import org.apache.commons.dbutils.handlers.ScalarHandler;

import com.qianfeng.pojo.PseudoOrder;
import com.qianfeng.util.JDBCTools;

public class BaseDao<T> {
	QueryRunner queryRunner = new QueryRunner();
	Class<T> cls = null;

	@SuppressWarnings("unchecked")
	public BaseDao() {
		// 获取改类的父类类型
		Type type = this.getClass().getGenericSuperclass();
		// 强转未带有范性参数的类型
		if (type instanceof ParameterizedType) {
			ParameterizedType parameterizedType = (ParameterizedType) type;
			// 取得包含的泛型类型
			Type[] types = parameterizedType.getActualTypeArguments();
			if (types[0] instanceof Class) {
				cls = (Class<T>) types[0];
			}
		}

	}

	// 实现增、删、改
	public void update(String sql, Object... objects) {
		Connection conn = JDBCTools.getConnection();
		try {
			queryRunner.update(conn, sql, objects);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			JDBCTools.closeConnection(conn);
		}
	}

	// 查询一个
	public T queryForOne(String sql, Object... objects) {
		Connection conn = JDBCTools.getConnection();
		T t = null;
		try {
			t = queryRunner.query(conn, sql, new BeanHandler<>(cls), objects);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			JDBCTools.closeConnection(conn);
		}
		return t;
	}

	// 查询单个字段
	public T queryForField(String sql, Object... objects) {
		Connection conn = JDBCTools.getConnection();
		T t = null;
		try {
			queryRunner.query(conn, sql, new ScalarHandler(), objects);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			JDBCTools.closeConnection(conn);
		}
		return t;
	}
	// 查询单个字段
	@SuppressWarnings("unchecked")
	public <A>A getSingal(String sql,Object...objects){
		Connection conn = JDBCTools.getConnection();
		A a = null;
		try {
			a=(A) queryRunner.query(conn, sql, new ScalarHandler(), objects);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return a;
	}

	// 查询全部
	public List<T> queryForList(String sql, Object... objects) {
		Connection conn = JDBCTools.getConnection();
		List<T> list = new ArrayList<>();
		try {
			list = queryRunner.query(conn, sql, new BeanListHandler<>(cls), objects);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			JDBCTools.closeConnection(conn);
		}
		return list;
	}

	// 查询订单
	public List<PseudoOrder> queryForOrder(String sql, Object... objects) {
		Connection conn = JDBCTools.getConnection();
		List<PseudoOrder> list = new ArrayList<>();
		try {
			list = queryRunner.query(conn, sql, new BeanListHandler<>(PseudoOrder.class), objects);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			JDBCTools.closeConnection(conn);
		}
		return list;
	}
}
