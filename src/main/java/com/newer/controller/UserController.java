package com.newer.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.newer.bean.Goods;
import com.newer.bean.Notice;
import com.newer.bean.User;
import com.newer.service.GoodsService;
import com.newer.service.NoticeService;
import com.newer.service.UserService;

@Controller
@RequestMapping("/")
public class UserController {

	// 自动装配(自动创建对象，功能类似 new )
	@Autowired
	UserService userService;

	@Autowired
	GoodsService goodsService;
	
	@Autowired
	NoticeService noticeService;

	@RequestMapping("/login")
	public ModelAndView login(String username, String pwd, String code, HttpServletRequest request,
			HttpServletResponse response) throws IOException {
		if (code != null && !code.equals("")) {
			String VerifyCode = (String) request.getSession().getAttribute("VerifyCode");
			if (code.equalsIgnoreCase(VerifyCode)) {
				User user = userService.login(new User(username, pwd));
				// 将查询的对象保存到ModelAndView对象中
				ModelAndView mv = new ModelAndView();
				if (user == null) {
					try {
						// 在界面中显示错误提示信息
						request.getSession().setAttribute("loginErrorInfo", "登录失败,您输入的用户名或者密码错误");
						response.sendRedirect("/denglu.jsp");
						return null;
					} catch (IOException e) {
						e.printStackTrace();
					}
				} else {
					request.getSession().setAttribute("loginErrorInfo", "");
					// 保存数据,并将用户信息存在session中
					request.getSession().setAttribute("user", user);
					request.getSession().setAttribute("userId", user.getId());
					request.getSession().setAttribute("username", username);
					List<Goods> goodsList1 = goodsService.queryByGtype("演唱会");
					List<Goods> goodsList2 = goodsService.queryByGtype("歌剧话剧");
					List<Goods> goodsList3 = goodsService.queryByGtype("音乐会");
					List<Goods> goodsList4 = goodsService.queryByGtype("儿童亲子");
					List<Goods> goodsList5 = goodsService.queryByGtype("体育赛事");
					List<Goods> goodsListhot = goodsService.queryByHot(1);
					List<Notice> noticeList1 = noticeService.selectHot(1, 1);
					List<Notice> noticeList2 = noticeService.selectHot(2, 1);
					//存一组数据到session中，用于前端页面判断
					request.getSession().setAttribute("goodsList", goodsList1);
					//将查询出来的数据存到mv并发送到前端页面
					mv.addObject("goodsList1",goodsList1);
					mv.addObject("goodsList2",goodsList2);
					mv.addObject("goodsList3",goodsList3);
					mv.addObject("goodsList4",goodsList4);
					mv.addObject("goodsList5",goodsList5);
					mv.addObject("goodsListhot",goodsListhot);
					mv.addObject("noticeList1",noticeList1);
					mv.addObject("noticeList2",noticeList2);
					mv.addObject("user", user);
					// 设置跳转视图
					mv.setViewName("index");
				}
				return mv;
			} else {
				// 在界面中显示错误提示信息
				request.getSession().setAttribute("loginErrorInfo", "验证码不正确，请重新输入验证码！");
				try {
					response.sendRedirect("/denglu.jsp");
				} catch (IOException e) {
					e.printStackTrace();
				}
				return null;
			}
		} else {
			// 在界面中显示错误提示信息
			request.getSession().setAttribute("loginErrorInfo", "验证码为空，请输入验证码！");
			try {
				response.sendRedirect("/denglu.jsp");
			} catch (IOException e) {
				e.printStackTrace();
			}
			return null;
		}
	}

	@RequestMapping("/regist")
	public void regist(String username, String pwd, String code,HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		//判断验证码是否为空
		if(code != null && !code.equals("")) {
			String VerifyCode = (String) request.getSession().getAttribute("VerifyCode");
			//判断验证码是否正确，忽略大小写
			if (code.equalsIgnoreCase(VerifyCode)) {
				//验证用户名是否被注册
				if (userService.checkRegist(username) != null) {
					System.out.println("注册失败,您输入的用户名已被使用");
					try {
						// 在界面中显示错误提示信息
						request.getSession().setAttribute("registErrorInfo", "注册失败,您输入的用户名已被使用");
						response.sendRedirect("/zhuce.jsp");
					} catch (IOException e) {
						e.printStackTrace();
					}
				} else {
					//注册成功，清除错误信息
					request.getSession().setAttribute("registErrorInfo", "");
					try {
						userService.regist(new User(username, pwd));
						request.setAttribute("registInfo","注册成功，点击登录！");
						request.getRequestDispatcher("/zhuce.jsp").forward(request, response);
					} catch (Exception e) {
						request.setAttribute("registInfo","注册失败，系统错误！");
						request.getRequestDispatcher("/zhuce.jsp").forward(request, response);
						e.printStackTrace();
					}	
				}
			}else {
				// 在界面中显示错误提示信息
				request.getSession().setAttribute("registErrorInfo", "验证码不正确，请重新输入验证码！");
				try {
					response.sendRedirect("/zhuce.jsp");
				} catch (IOException e) {
					e.printStackTrace();
				}
			}
		}else {
			// 在界面中显示错误提示信息
			request.getSession().setAttribute("registErrorInfo", "验证码为空，请输入验证码！");
			try {
				response.sendRedirect("/zhuce.jsp");
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
	}

	/**
	 * 退出登陆
	 * 
	 * @param session
	 * @return
	 */
	@RequestMapping("/exit")
	public String exit(HttpSession session) {
		session.invalidate();
		return "index";
	}
	
	
	/**
	 * 修改密码
	 * @param pwd
	 * @param id
	 * @return
	 */
	@RequestMapping("/updatePwd")
	public void updatePwd(String username,String oldpwd,String pwd,HttpServletRequest request,HttpServletResponse response) {
		User user = new User(username,pwd);
		User user1 = new User(username,oldpwd);
		if(userService.login(user1)!= null) {
			int i = userService.updatePwd(user);
			if(i > 0) {
				try {
					request.getSession().setAttribute("updateInfo", "");
					request.setAttribute("updateInfo","恭喜你，修改密码成功！");
					request.getRequestDispatcher("/member-mima.jsp").forward(request, response);
				} catch (ServletException e) {
					e.printStackTrace();
				} catch (IOException e) {
					e.printStackTrace();
				}
			}else {
				try {
					request.getSession().setAttribute("updateInfo", "");
					request.setAttribute("updateInfo","很遗憾，修改密码失败！");
					request.getRequestDispatcher("/member-mima.jsp").forward(request, response);
				} catch (ServletException e) {
					e.printStackTrace();
				} catch (IOException e) {
					e.printStackTrace();
				}
			}
		}else {
			try {
				request.getSession().setAttribute("updateInfo", "原密码输入错误，请重新输入！");
				response.sendRedirect("/member-mima.jsp");
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
	}
	
	
	/**
	 * 根据id查询当前用户的所有信息
	 * @param id
	 * @throws IOException 
	 */
	@RequestMapping("/queryUserById")
	public void queryUserById(HttpServletRequest request,HttpServletResponse response) throws IOException {
		User u = (User) request.getSession().getAttribute("user");
		User user = userService.queryById(u.getId());
		request.getSession().setAttribute("userInfo", user);
		response.sendRedirect("member-ziliao.jsp");
	}
	
	
	@RequestMapping("/updateUser")
	public void updateUser(User user,HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException {
		int id = (int) request.getSession().getAttribute("userId");
		user.setId(id);
		int i = userService.updateUser(user);
		if(i>0) {
			request.getSession().setAttribute("updateInfo", "");
			request.setAttribute("updateInfo","恭喜你，修改个人资料成功！");
			request.getRequestDispatcher("/member-ziliao.jsp").forward(request, response);
		}else {
			request.getSession().setAttribute("updateInfo", "");
			request.setAttribute("updateInfo","很遗憾，修改个人资料失败！");
			request.getRequestDispatcher("/member-ziliao.jsp").forward(request, response);
		}
	}
}
