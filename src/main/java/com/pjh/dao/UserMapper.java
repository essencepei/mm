package com.pjh.dao;

import java.util.List;
import java.util.Map;

import com.pjh.model.User;

public interface UserMapper {
	//插入记录
	public void insert(User user);
	
	//查询
	public List<User> queryAllUsers(Map<String,Object> param);
	
	//更新
	public void update(User user);
	
}
