package com.JD.dao;

import com.JD.entity.Orders;

public interface OrdersMapper {
	
	int deleteByPrimaryKey(Integer id);

	int insert(Orders record);

	int insertSelective(Orders record);

	Orders selectByPrimaryKey(Integer id);

	int updateByPrimaryKeySelective(Orders record);

	int updateByPrimaryKey(Orders record);
}