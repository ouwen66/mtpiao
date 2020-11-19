package com.newer.bean;

import java.util.LinkedHashMap;
import java.util.Map;

/**
 * 购物车实体类
 * 
 * @author Admin
 *
 */
public class Cart {
	// 购物车里的商品条目 key是商品id，value是商品条目
	private Map<String, CartItem> goodsMap = new LinkedHashMap<>();
	private int num;// 购物车商品总数量
	private double price;// 购物车总价格

	/**
	 * 计算总价格
	 * 
	 * @return
	 */
	public double getPrice() {
		double totalPrice = 0;// 合计价格
		// 遍历购物车商品map集合
		for (Map.Entry<String, CartItem> me : goodsMap.entrySet()) {
			// 获取CartItem对象
			CartItem cartItem = me.getValue();
			// 计算购物车总价格(将集合中CartItem条目中每个商品价格相加)
			totalPrice += cartItem.getPrice();
		}
		return totalPrice;
	}

	public Map<String, CartItem> getGoodsMap() {
		return goodsMap;
	}

	public void setGoodsMap(Map<String, CartItem> goodsMap) {
		this.goodsMap = goodsMap;
	}

	public void setPrice(double price) {
		this.price = price;
	}

	/**
	 * 计算商品总数量
	 * 
	 * @return
	 */
	public int getNum() {
		int totalnum = 0;
		// 遍历购物车商品map集合
		for (Map.Entry<String, CartItem> me : goodsMap.entrySet()) {
			// 获取CartItem对象
			CartItem cartItem = me.getValue();
			// 计算购物车总价格(将集合中CartItem条目中每个商品价格相加)
			totalnum += cartItem.getQuantity();
		}
		return totalnum;
	}

	public void setNum(int num) {
		this.num = num;
	}

	/**
	 * 往购物车中添加商品
	 * 
	 * @param goods
	 */
	public void addGoods(Goods goods) {
		// 获取购物车中的商品条目
		CartItem cartItem = goodsMap.get(Integer.toString(goods.getId()));
		// 如果购物车中没有该商品条目，就新建一个
		if (cartItem == null) {
			cartItem = new CartItem();
			cartItem.setGoods(goods);
			// 新建商品条目，且商品购买数量设置为1
			cartItem.setQuantity(1);
			// 将商品条目保存到goodsMap中，key为商品id
			goodsMap.put(Integer.toString(goods.getId()), cartItem);
		} else {
			// 如果购物车存在该商品条目，则购买数量+1
			cartItem.setQuantity(cartItem.getQuantity() + 1);
		}
	}

	/**
	 * 增加商品数量
	 * 
	 * @param id
	 * @param count
	 */
	public void jiaGoods(int id, int count) {
		CartItem cartItem = goodsMap.get(Integer.toString(id));
		cartItem.setQuantity(count);
	}

	/**
	 * 减少商品数量
	 * 
	 * @param id
	 * @param count
	 */
	public void jianGoods(int id, int count) {
		CartItem cartItem = goodsMap.get(Integer.toString(id));
		cartItem.setQuantity(count);
	}
}
