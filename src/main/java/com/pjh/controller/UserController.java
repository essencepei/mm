package com.pjh.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.pjh.model.User;
import com.pjh.serviceI.IUserService;

@Controller
@RequestMapping("/userController")
public class UserController {


	private IUserService userService;	
	
	public IUserService getUserService() {
		return userService;
	}
	@Autowired
	public void setUserService(IUserService userService) {
		this.userService = userService;
	}


	@RequestMapping("/userIndex.do")
	public ModelAndView queryUsers(){
		ModelAndView mav = new ModelAndView();
		List<User> users = userService.loadUser();
		
		mav.addObject("users", users);
		mav.setViewName("userIndex");
		return mav;
		
	}
	
	@RequestMapping("/addUser.do")
	public void addUser(User user){
		userService.addUser(user);
		
	}
	
	@RequestMapping("/updateUser.do")
	public void  updateUser(User user){
		userService.updateUser(user);
		
	}
}
