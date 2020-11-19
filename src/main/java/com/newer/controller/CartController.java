package com.newer.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.newer.bean.Cart;
import com.newer.bean.Goods;
import com.newer.service.GoodsService;

@Controller
public class CartController {

	@Autowired
	GoodsService goodsService;
	
	/**
	 * 添加商品到购物车
	 * @param id
	 * @param request
	 * @return
	 * @throws IOException 
	 * @throws ServletException 
	 */
	@RequestMapping("/addToCart")
	public String addToCart(int id,HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException {
		//根据传入的id获取商品信息
		Goods goods = goodsService.queryById(id);
		//从session中获取cart对象
		Cart cart = (Cart) request.getSession().getAttribute("cart");
		//如果cart为空
		if(cart==null) {
			//新建cart对象,并将cart存入session中
			cart = new Cart();
			request.getSession().setAttribute("cart", cart);
		}
		//将商品添加到购物车cart对象中
		cart.addGoods(goods);
		response.sendRedirect("/cart.jsp");
		return null;
	}
	
	/**
	 * 改变商品数量
	 * @param id
	 * @param count
	 * @param bt
	 * @param request
	 * @return
	 * @throws IOException 
	 */
	@RequestMapping("/changeCart")
	public String changeCart(int id,int count,int bt,HttpServletRequest request,HttpServletResponse response) throws IOException {
		//从session中获取当前购物车对象
		Cart cart = (Cart) request.getSession().getAttribute("cart");
		//如果商品数量为0则将其删除
		if(count == 0) {
			cart.getGoodsMap().remove(Integer.toString(id));
		//点击-号
		}else if(bt == 0) {
			cart.jianGoods(id, count);
		}else if(bt == 1) {
			cart.jiaGoods(id, count);
		}
		response.sendRedirect("/cart.jsp");
		return null;
	}
	
	/**
	 * 删除购物车
	 * @param id
	 * @param request
	 * @return
	 * @throws IOException 
	 */
	@RequestMapping("/deleteCart")
	public String deleteCart(int id,HttpServletRequest request,HttpServletResponse response) throws IOException {
		Cart cart = (Cart) request.getSession().getAttribute("cart");
		cart.getGoodsMap().remove(Integer.toString(id));
		response.sendRedirect("/cart.jsp");
		return null;
	}
}
