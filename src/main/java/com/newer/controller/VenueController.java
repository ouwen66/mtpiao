package com.newer.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.newer.bean.Goods;
import com.newer.bean.Venue;
import com.newer.service.GoodsService;
import com.newer.service.VenueService;

@Controller
public class VenueController {

	@Autowired
	VenueService venueService;
	
	@Autowired
	GoodsService goodsService;

	/**
	 * 查询所有场馆
	 */
	@RequestMapping("/queryAllVenue")
	public ModelAndView queryAllVenue(){
		ModelAndView mv = new ModelAndView();
		List<Venue> venueList = venueService.queryAll();
		List<Venue> hotVenue = venueService.queryByHot(1);
		List<Goods> hotGoods = goodsService.queryByHot(1);
 		mv.addObject("venueList", venueList);
 		mv.addObject("hotVenue", hotVenue);
 		mv.addObject("hotGoods", hotGoods);
		mv.setViewName("venue");
		return mv;
	}
	
	
	/**
	 * 根据id查询场馆
	 * @param id
	 * @return
	 */
	@RequestMapping("/queryVenueById")
	public ModelAndView queryById(int id) {
		ModelAndView mv = new ModelAndView();
		//调用service层通过id查询场馆
		Venue venue = venueService.queryById(id);
		//将查询出的结果存入mv中
		mv.addObject("venue", venue);
		//设置跳转页面
		mv.setViewName("venueInfo");
		return mv;
	}
	
	/**
	 * 根据标题模糊查询
	 */
	@RequestMapping("/queryVenueByTitle")
	public ModelAndView queryVenueByTitle(String title){
		ModelAndView mv = new ModelAndView();
		List<Venue> venueList = venueService.queryByTitle(title);
		List<Venue> hotVenue = venueService.queryByHot(1);
		List<Goods> hotGoods = goodsService.queryByHot(1);
		mv.addObject("venueList", venueList);
		mv.addObject("hotVenue", hotVenue);
 		mv.addObject("hotGoods", hotGoods);
		mv.addObject("title", title);
		mv.setViewName("venue");
		return mv;
	}
}
