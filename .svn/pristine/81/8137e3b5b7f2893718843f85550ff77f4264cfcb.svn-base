package com.newer.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.newer.bean.Address;

@Mapper
public interface AddressMapper {
	
	/**
	 * 添加地址
	 * @param address
	 */
	public void add(Address address);
	
	/**
	 * 查询当前用户所有地址
	 */
	public List<Address> queryByUid(int uid);
	
	
	/**
	 * 根据id删除地址
	 * @param id
	 */
	public void delete(int id);
	
	
	/**
	 * 修改地址
	 * @param id
	 */
	public void update(Address address);
	
	
	/**
	 * 根据id查询地址
	 * @param id
	 */
	public Address queryById(int id);
}
