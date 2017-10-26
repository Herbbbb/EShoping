package com.qianfeng.dao;

import java.util.List;


public interface BaseInterface<T, K> {
	// 添加
	public void insert(T t);

	// 修改
	public void update(T t);

	// 删除
	public void delete(K k);

	// 查找某个
	public T queryById(K k);

	// 查看全部信息
	public List<T> queryForAll();
}
