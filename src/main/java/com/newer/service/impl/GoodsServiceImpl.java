package com.newer.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.newer.bean.Goods;
import com.newer.dao.GoodsMapper;
import com.newer.service.GoodsService;

@Service
public class GoodsServiceImpl implements GoodsService {

	@Autowired
	GoodsMapper goodsMapper;
	
	/**
	 * 查询所有商品
	 */
	@Override
	public List<Goods> queryAll() {
		return goodsMapper.queryAll();
	}

	/**
	 * 按类别查询
	 */
	@Override
	public List<Goods> queryByGtype(String gtype) {
		return goodsMapper.queryByGtype(gtype);
	}

	
	/**
	 * 按id查询
	 */
	@Override
	public Goods queryById(int id) {
		return goodsMapper.queryById(id);
	}

	
	/**
	 * 查询热门推荐
	 */
	@Override
	public List<Goods> queryByHot(int hot) {
		return goodsMapper.queryByHot(hot);
	}

	
	/**
	 * 根据商品名字模糊查询
	 */
	@Override
	public List<Goods> queryByGname(String gname) {
		return goodsMapper.queryByGname(gname);
	}
}
