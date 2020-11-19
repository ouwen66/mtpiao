package com.newer.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.newer.bean.Venue;
import com.newer.dao.VenueMapper;
import com.newer.service.VenueService;

@Service
public class VenueServiceImpl implements VenueService{

	@Autowired
	VenueMapper venueMapper;

	/**
	 * 查询所有场馆
	 */
	@Override
	public List<Venue> queryAll() {
		return venueMapper.queryAll();
	}

	/**
	 * 根据id查询场馆
	 */
	@Override
	public Venue queryById(int id) {
		return venueMapper.queryById(id);
	}

	
	/**
	 * 根据标题模糊查询
	 */
	@Override
	public List<Venue> queryByTitle(String title) {
		return venueMapper.queryByTitle(title);
	}

	
	/**
	 * 查询热门场馆
	 */
	@Override
	public List<Venue> queryByHot(int hot) {
		return venueMapper.queryByHot(hot);
	}
}
