package com.qianfeng.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import com.qianfeng.pojo.Product;
import com.qianfeng.pojo.ShopCarItem;
import com.qianfeng.pojo.ShoppingCar;
import com.qianfeng.service.ProductService;
import com.qianfeng.service.impl.ProductServiceImpl;

@WebServlet("/addShopCarServlet")
public class AddShoppingCarServlet extends HttpServlet{
	private static final long serialVersionUID = 1L;
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		HttpSession session=request.getSession();
		ProductService productService=new ProductServiceImpl();
		int proId=Integer.parseInt(request.getParameter("proId"));
		Product product=productService.queryById(proId);
		//System.out.println(product);
		ShopCarItem item=new ShopCarItem();
		item.setProducts(product);
		//获取购物车对象
		ShoppingCar shopCar=(ShoppingCar) session.getAttribute("shopCar");
		if(shopCar==null){
			//创建一个购物车对象
			shopCar =new ShoppingCar();
			//向购物车添加商品
			item.setProNum(1);
			shopCar.addItem(proId, item);
		}else{
			//session对象中保存shopCar对象
			//通过proId来获取想添加的购物项
			ShopCarItem shopItem=shopCar.findShoppingCarItem(proId);
			if(shopItem!=null){
				//如果有则数量+1即可  
				shopItem.addProNum(shopItem.getProNum());
				//2 如果包含则购物项的数量+1 
				item.setProNum(shopItem.getProNum());
			}else{
				//如果没有就创建一个
				item.setProNum(1);
			}
			shopCar.addItem(proId, item);
		}
		session.setAttribute("shopCar", shopCar);
		response.getWriter().println("addOk");
	}
}
