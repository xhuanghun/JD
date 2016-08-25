package com.JD.dao;

import com.JD.entity.Users;

public interface UsersMapper {
    int deleteByPrimaryKey(String account);

    int insert(Users record);

    int insertSelective(Users record);

    Users selectByPrimaryKey(String account);

    int updateByPrimaryKeySelective(Users record);

    int updateByPrimaryKey(Users record);
}