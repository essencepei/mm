package com.pjh.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import com.pjh.model.GridView;
import com.pjh.model.User;
import com.pjh.serviceI.IUserService;
import com.pjh.util.PageUtil;

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

	
	@RequestMapping("/userIndexForEsayUi.do")
	@ResponseBody
	public GridView queryUsersForEsayUi(@RequestParam Map<String,Object> param){
		PageUtil.startPage(param);
		List<User> users = userService.loadUser();
		return new GridView(users,PageUtil.getTotal());
		
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
	public User addUser(User user){
		userService.addUser(user);
		return user;
	}
	
	@RequestMapping("/updateUser.do")
	public String  updateUser(User user){
		userService.updateUser(user);
		 return "forward:userIndex.do";
	}
	
	@RequestMapping("/test.do")
	@ResponseBody
	public List<User>  test(){
		List<User> users = userService.loadUser();
		
		return users;
	}
}
