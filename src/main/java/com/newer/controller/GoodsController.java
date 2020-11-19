package com.newer.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

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
public class GoodsController {

	// 自动装配(自动创建对象，功能类似 new )
	@Autowired
	GoodsService goodsService;
	
	@Autowired
	NoticeService noticeService;

	/**
	 * 查询所有商品
	 * 
	 * @param session
	 * @return
	 */
	@RequestMapping("/queryAll")
	public ModelAndView queryAll(HttpSession session) {
		ModelAndView mv = new ModelAndView();
		List<Goods> goodsList = goodsService.queryAll();
		session.setAttribute("goodsList", goodsList);
		mv.addObject("goodsList", goodsList);
		mv.setViewName("index");
		return mv;
	}

	@RequestMapping("/queryGoods")
	public ModelAndView queryByGtype(HttpSession session) {
		ModelAndView mv = new ModelAndView();
		// 分类查询商品
		List<Goods> goodsList1 = goodsService.queryByGtype("演唱会");
		List<Goods> goodsList2 = goodsService.queryByGtype("歌剧话剧");
		List<Goods> goodsList3 = goodsService.queryByGtype("音乐会");
		List<Goods> goodsList4 = goodsService.queryByGtype("儿童亲子");
		List<Goods> goodsList5 = goodsService.queryByGtype("体育赛事");
		List<Goods> goodsListhot = goodsService.queryByHot(1);
		List<Notice> noticeList1 = noticeService.selectHot(1, 1);
		List<Notice> noticeList2 = noticeService.selectHot(2, 1);
		// 存一组数据到session中，用于前端页面判断
		session.setAttribute("goodsList", goodsList1);
		// 将查询出来的数据存到mv并发送到前端页面
		mv.addObject("goodsList1", goodsList1);
		mv.addObject("goodsList2", goodsList2);
		mv.addObject("goodsList3", goodsList3);
		mv.addObject("goodsList4", goodsList4);
		mv.addObject("goodsList5", goodsList5);
		mv.addObject("goodsListhot", goodsListhot);
		mv.addObject("noticeList1",noticeList1);
		mv.addObject("noticeList2",noticeList2);
		mv.setViewName("index");
		return mv;
	}

	/**
	 * 根据id查询商品
	 * 
	 * @param id
	 * @return
	 */
	@RequestMapping("/queryGoodsById")
	public ModelAndView queryById(int id) {
		// 调用service层进行查询操作
		Goods goods = goodsService.queryById(id);
		// 将查询出来的数据保存到ModelAndView对象中
		ModelAndView mv = new ModelAndView();
		// 保存数据到mv中
		mv.addObject("goods", goods);
		mv.setViewName("goodsInfo");
		return mv;
	}

	/**
	 * 根据名称查询商品
	 * 
	 * @param Gname
	 * @return
	 */
	@RequestMapping("/queryGoodsByGname")
	public ModelAndView queryGoodsByGname(String gname) {
		// 调用service层进行查询操作
		List<Goods> goodsList = goodsService.queryByGname(gname);
		// 将查询出来的数据保存到ModelAndView对象中
		ModelAndView mv = new ModelAndView();
		// 保存数据到mv中
		mv.addObject("goodsList", goodsList);
		// 保存查询出数组长度到mv中
		mv.addObject("goodsSize", goodsList.size());
		// 保存查询关键字到mv中
		mv.addObject("key", gname);
		mv.setViewName("queryGoods");
		return mv;
	}

	
	/**
	 * 通过类别查询商品
	 * @param gtype
	 * @return
	 */
	@RequestMapping("queryGoodsByGtype")
	public ModelAndView queryGoodsByGtype(String gtype) {
		// 调用service层进行查询操作
		List<Goods> goodsList = goodsService.queryByGtype(gtype);
		// 将查询出来的数据保存到ModelAndView对象中
		ModelAndView mv = new ModelAndView();
		// 保存数据到mv中
		mv.addObject("goodsList", goodsList);
		// 保存查询出数组长度到mv中
		mv.addObject("goodsSize", goodsList.size());
		// 保存查询关键字到mv中
		mv.addObject("key", gtype);
		mv.setViewName("queryGoods");
		return mv;
	}
}
