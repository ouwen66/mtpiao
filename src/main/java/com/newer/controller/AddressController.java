package com.newer.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.newer.bean.Address;
import com.newer.bean.Goods;
import com.newer.bean.User;
import com.newer.service.AddressService;

@Controller
@RequestMapping("/")
public class AddressController {

	@Autowired
	AddressService addressService;

	/**
	 * 添加地址
	 * 
	 * @param address
	 * @param request
	 * @param response
	 * @throws IOException
	 * @throws ServletException
	 */
	@RequestMapping("/add")
	public void add(Address address, HttpServletRequest request, HttpServletResponse response)
			throws IOException, ServletException {
		// 从session中获取当前登录对象
		User user = (User) request.getSession().getAttribute("user");
		// 根据当前登录对象id设置所添加地址的uid
		address.setUid(user.getId());
		try {
			addressService.add(address);
			// 返回信息到添加地址页面
			request.setAttribute("addInfo", "增加地址成功！");
			request.getRequestDispatcher("/member-add-dizhi.jsp").forward(request, response);
		} catch (Exception e) {
			request.setAttribute("addInfo", "增加地址失败！");
			request.getRequestDispatcher("/member-add-dizhi.jsp").forward(request, response);
			e.printStackTrace();
		}
	}

	/**
	 * 查询当前用户地址
	 * 
	 * @param request
	 * @param response
	 * @throws IOException
	 */
	@RequestMapping("/queryAllAddr")
	public void queryAll(HttpServletRequest request, HttpServletResponse response) throws IOException {
		// 从session中获取当前登录对象
		User user = (User) request.getSession().getAttribute("user");
		// 通过当前登录对象id来查询地址表中的数据
		List<Address> addressList = addressService.queryByUid(user.getId());
		// 将查询出来的数据存在session中
		request.getSession().setAttribute("addressList", addressList);
		// 跳转到地址管理页面
		response.sendRedirect("/member-dizhi.jsp");
	}

	/**
	 * 删除地址
	 * 
	 * @param id
	 * @param request
	 * @param response
	 * @throws IOException
	 * @throws ServletException
	 */
	@RequestMapping("/deleteAddress")
	public void deleteAddress(int id, HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// 根据前端页面传入的id删除地址
		addressService.delete(id);
		request.getRequestDispatcher("/queryAllAddr").forward(request, response);
	}

	/**
	 * 修改地址
	 * 
	 * @param address
	 * @param request
	 * @param response
	 * @throws ServletException
	 * @throws IOException
	 */
	@RequestMapping("/updateAddress")
	public void updateAddress(Address address, HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// 从session中获取当前登录对象
		User user = (User) request.getSession().getAttribute("user");
		// 根据当前登录对象id设置所添加地址的uid
		address.setUid(user.getId());
		try {
			addressService.update(address);
			// 返回信息到添加地址页面
			request.setAttribute("updateInfo", "修改地址成功！");
			request.getRequestDispatcher("/member-update-dizhi.jsp").forward(request, response);
		} catch (Exception e) {
			// 返回信息到添加地址页面
			request.setAttribute("updateInfo", "修改地址失败！");
			request.getRequestDispatcher("/member-update-dizhi.jsp").forward(request, response);
			e.printStackTrace();
		}
	}
	
	
	/**
	 * 根据id查询地址并保存地址信息
	 * 跳转到修改地址页面
	 * @param id
	 */
	@RequestMapping("/toUpdate")
	public void toUpadte(int id,HttpServletRequest request,HttpServletResponse response) {
		//根据id查询地址
		Address address = addressService.queryById(id);
		request.getSession().setAttribute("address", address);
		try {
			response.sendRedirect("/member-update-dizhi.jsp");
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
}
