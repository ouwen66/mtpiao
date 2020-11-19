package com.newer.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.newer.bean.User;
import com.newer.dao.UserMapper;
import com.newer.service.UserService;

/**
 * 是UserService实现类，作用就是去调用dao层的方法
 * @author Administrator
 *
 */
@Service
public class UserServiceImpl implements UserService {
	//自动装配
	@Autowired
	UserMapper userMapper;
	
	@Override
	public User login(User user) {
		return userMapper.login(user);
	}

	@Override
	public int regist(User user) {
		return userMapper.regist(user);
	}

	@Override
	public User checkRegist(String username) {
		return userMapper.checkRegist(username);
	}

	@Override
	public int updatePwd(User user) {
		return userMapper.updatePwd(user);
	}

	@Override
	public User queryById(int id) {
		return userMapper.queryById(id);
	}

	@Override
	public int updateUser(User user) {
		return userMapper.updateUser(user);
	}
}
