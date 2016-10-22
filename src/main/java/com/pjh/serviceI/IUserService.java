package com.pjh.serviceI;

import java.util.List;
import java.util.Map;

import com.pjh.model.User;

public interface IUserService {
	//查询
	List<User> loadUser(Map<String,Object> param);
	
	//新增
	void addUser(User user);
	
	//新增
	void updateUser(User user);
}
