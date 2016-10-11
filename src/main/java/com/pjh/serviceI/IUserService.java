package com.pjh.serviceI;

import java.util.List;

import com.pjh.model.User;

public interface IUserService {
	//查询
	List<User> loadUser();
	
	//新增
	void addUser(User user);
	
	//新增
	void updateUser(User user);
}
