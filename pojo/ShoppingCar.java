package com.qianfeng.pojo;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class ShoppingCar {
	// 保存的购物项
	Map<Integer, ShopCarItem> map = new HashMap<>();

	// 获取所有的购物项
	public List<ShopCarItem> getItems() {
		List<ShopCarItem> items = new ArrayList<>();
		for (ShopCarItem it : map.values()) {
			items.add(it);
		}
		return items;
	}

	// 通过id清除对应的购物项
	public void removeShoppingCarItem(int proId) {
		map.remove(proId);
	}

	// 查找购物项
	public ShopCarItem findShoppingCarItem(int proId) {
		ShopCarItem item = map.get(proId);
		return item;
	}

	// 清空购物车
	public void clearShoppingCar() {
		map.clear();
	}

	// 添加购物项
	public void addItem(int proId, ShopCarItem item) {
		map.put(proId, item);
	}

}
