package com.pjh.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.pjh.dao.UserMapper;
import com.pjh.model.User;
import com.pjh.serviceI.IUserService;

@Service("userService")
public class UserServiceImpl implements IUserService{
	
	private UserMapper userMapper;

	public UserMapper getUserMapper() {
		return userMapper;
	}
	
	@Autowired
	public void setUserMapper(UserMapper userMapper) {
		this.userMapper = userMapper;
	}
	
	public List<User> loadUser() {
		return userMapper.queryAllUsers();
	}

	public void addUser(User user) {
		userMapper.insert(user);
	}

	public void updateUser(User user) {
		userMapper.update(user);
	}

}
