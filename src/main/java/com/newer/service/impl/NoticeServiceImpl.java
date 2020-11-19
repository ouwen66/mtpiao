package com.newer.service.impl;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.newer.bean.Notice;
import com.newer.dao.NoticeMapper;
import com.newer.service.NoticeService;


@Service
public class NoticeServiceImpl implements NoticeService {
	@Autowired
	NoticeMapper noticeMapper;

	/**
	 * 根据公告类别查询公告的信息
	 * @return
	 */
	@Override
	public List<Notice> selectByNoticetype(int noticetype) {
		return noticeMapper.selectByNoticetype(noticetype);
	}
	
	/**
	 * 根据id查询公告
	 */
	@Override
	public Notice selectById(int id) {
		return noticeMapper.selectById(id);
	}

	@Override
	public List<Notice> selectHot(int noticetype, int hot) {
		return noticeMapper.selectHot(noticetype, hot);
	}
}
