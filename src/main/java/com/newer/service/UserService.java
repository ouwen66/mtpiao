package com.newer.service;

import com.newer.bean.User;

public interface UserService {
	/**
	 * 根据用户名和密码查询是否存在此用户
	 * 
	 * @param user
	 * @return
	 */
	public User login(User user);

	/**
	 * 注册用户
	 * 
	 * @param user
	 * @return
	 */
	public int regist(User user);

	/**
	 * 检查用户名是否存在
	 * 
	 * @param username
	 * @return
	 */
	public User checkRegist(String username);

	/**
	 * 修改密码
	 * 
	 * @param id
	 * @param pwd
	 * @return
	 */
	public int updatePwd(User user);

	/**
	 * 查询当前用户信息
	 * 
	 * @param id
	 * @return
	 */
	public User queryById(int id);

	
	/**
	 * 修改个人资料
	 * 
	 * @param user
	 * @return
	 */
	public int updateUser(User user);
}
