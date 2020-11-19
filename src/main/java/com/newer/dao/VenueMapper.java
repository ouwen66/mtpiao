package com.newer.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.newer.bean.Venue;

@Mapper
public interface VenueMapper {
	
	/**
	 * 查询所有场馆
	 * @return
	 */
	public List<Venue> queryAll();
	
	
	/**
	 * 根据id查询场馆
	 * @return
	 */
	public Venue queryById(int id);
	
	
	/**
	 * 根据标题模糊查询场馆
	 * @param title
	 * @return
	 */
	public List<Venue> queryByTitle(String title);
	
	
	/**
	 * 查询热门场馆
	 * @param hot
	 * @return
	 */
	public List<Venue> queryByHot(int hot);
}
