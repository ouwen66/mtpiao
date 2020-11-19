package com.newer.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.newer.bean.Address;
import com.newer.dao.AddressMapper;
import com.newer.service.AddressService;

@Service
public class AddressServiceImpl implements AddressService {

	@Autowired
	AddressMapper addressMapper;
	
	/**
	 * 增加地址
	 */
	@Override
	public void add(Address address) {
		addressMapper.add(address);
	}

	/**
	 * 查询当前用户所有地址
	 */
	@Override
	public List<Address> queryByUid(int uid) {
		return addressMapper.queryByUid(uid);
	}

	
	/**
	 * 根据id删除地址
	 */
	@Override
	public void delete(int id) {
		addressMapper.delete(id);
	}

	
	/**
	 * 修改地址
	 */
	@Override
	public void update(Address address) {
		addressMapper.update(address);
	}

	/**
	 * 根据id查询地址
	 */
	@Override
	public Address queryById(int id) {
		return addressMapper.queryById(id);
	}
}
