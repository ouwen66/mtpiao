package com.newer.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.newer.bean.Goods;

@Mapper
public interface GoodsMapper {
	
	/**
	 * 查询所有商品
	 * @return
	 */
	public List<Goods> queryAll();
	
	
	/**
	 * 根据类别查询商品信息
	 * @param gtype
	 * @return
	 */
	public List<Goods> queryByGtype(String gtype);
	
	
	/**
	 * 根据id查询单个商品信息
	 * @param id
	 * @return
	 */
	public Goods queryById(int id);
	

	/**
	 * 查询热门推荐商品
	 * @param hot
	 * @return
	 */
	public List<Goods> queryByHot(int hot);
	
	
	/**
	 * 根据商品名字模糊查询
	 * @param gname
	 * @return
	 */
	public List<Goods> queryByGname(String gname);
}
