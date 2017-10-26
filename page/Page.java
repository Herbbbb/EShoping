package com.qianfeng.page;

import java.util.List;

public class Page<T> {
	// 当前页
	private int pageNow;
	// 数据的集合
	private List<T> list;
	// 每页有多少条记录
	private int pageSize = 6;
	// 总记录数
	private int totalNumber;
	// 总页数
	private int totalPage;
	public int getPageNow() {
		return pageNow;
	}

	public void setPageNow(int pageNow) {
		this.pageNow = pageNow;
	}

	public List<T> getList() {
		return list;
	}

	public void setList(List<T> list) {
		this.list = list;
	}

	public int getPageSize() {
		return pageSize;
	}

	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}

	public int getTotalNumber() {
		return totalNumber;
	}

	public void setTotalNumber(int totalNumber) {
		this.totalNumber = totalNumber;
	}

	public int getTotalPage() {
		return getTotalNumber() % getPageSize() == 0 ? getTotalNumber()
				/ getPageSize() : getTotalNumber() / getPageSize() + 1;
	}

	// 是否有上一页
	public boolean isHasPre() {
		if (getPageNow() > 1)
			return true;
		return false;
	}

	// 获取上一页
	public int getPre() {
		if (isHasPre())
			return getPageNow() - 1;
		return getPageNow();
	}

	// 是否有下一页
	public boolean isHasNext() {
		if (getPageNow() < getTotalPage())
			return true;
		return false;
	}

	// 获取下一页
	public int getNext() {
		if (isHasNext())
			return getPageNow() + 1;
		return getPageNow();
	}

}
