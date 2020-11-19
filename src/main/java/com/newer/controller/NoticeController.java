package com.newer.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.newer.bean.Goods;
import com.newer.bean.Notice;
import com.newer.service.GoodsService;
import com.newer.service.NoticeService;

@Controller
@RequestMapping("/")
public class NoticeController {
	@Autowired
	NoticeService noticeService;
	
	@Autowired
	GoodsService goodsService;

	/**
	 * 分类查询
	 * @return
	 */
	@RequestMapping("/selectNotice")
	public ModelAndView selectNotice1(int noticetype) {

		// 根据公告类别查询公告信息
		List<Notice> noticeList = noticeService.selectByNoticetype(noticetype);
		List<Goods> hotGoods = goodsService.queryByHot(1);
		// 将查询出来的数据保存到ModelAndView对象中
		ModelAndView mv = new ModelAndView();
		// 保存数据到mv中去
		mv.addObject("hotGoods", hotGoods);
		mv.addObject("noticetype", noticetype);
		mv.addObject("noticeList", noticeList);
		// 设置跳转路径
		mv.setViewName("notice");
		return mv;
	}

	/**
	 * 通过id查询商品
	 * @param id
	 * @return
	 */
	@RequestMapping("/selectNoticeById")
	public ModelAndView selectById(int id) {
		// 调用service层进行查询操作
		List<Goods> hotGoods = goodsService.queryByHot(1);
		Notice notice = noticeService.selectById(id);
		// 将查询出来的数据保存到ModelAndView对象中
		ModelAndView mv = new ModelAndView();
		// 保存数据到mv中去
		mv.addObject("notice", notice);
		mv.addObject("hotGoods", hotGoods);
		// 设置跳转路径
		mv.setViewName("noticeInfo");

		return mv;
	}
}
