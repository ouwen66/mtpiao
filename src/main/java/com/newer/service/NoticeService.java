package com.newer.service;

import java.util.List;

import com.newer.bean.Notice;

public interface NoticeService {

	/**
	 * 根据公告类别查询公告的信息
	 * 
	 * @return
	 */
	public List<Notice> selectByNoticetype(int noticetype);

	/**
	 * 根据商品ID查询单个公告信息
	 * 
	 * @param id
	 * @return
	 */
	public Notice selectById(int id);

	/**
	 * 查询首页热门公告，娱乐资讯
	 * 
	 * @param noticetype
	 * @param hot
	 * @return
	 */
	public List<Notice> selectHot(int noticetype, int hot);

}
