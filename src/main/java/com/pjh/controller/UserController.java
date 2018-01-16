package com.pjh.controller;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.pjh.model.Dept;
import com.pjh.model.GridView;
import com.pjh.model.Tree;
import com.pjh.model.User;
import com.pjh.serviceI.IDeptService;
import com.pjh.serviceI.IUserService;
import com.pjh.util.PageUtil;

@Controller
@RequestMapping("/userController")
public class UserController {

	@RequestMapping("/deptTree.do")
	@ResponseBody
	public List<Tree>  queryDeptTreeForEsayUi(@RequestParam Map<String,Object> param){
		if(param.get("id")==null){
			param.put("id", "0");
		}
		List<Dept> depts = deptService.loadDept(param);
		List<Tree> trees = new ArrayList<Tree>();
		for(Dept dept:depts){
			trees.add(dept.getTree());
		}
		return trees;
	}
	
	@RequestMapping("/userIndexForEsayUi.do")
	@ResponseBody
	public GridView queryUsersForEsayUi(@RequestParam Map<String,Object> param){
		PageUtil.startPage(param);
		List<User> users = userService.loadUser(param);
		return new GridView(users,PageUtil.getTotal());
	}
	
	@RequestMapping("/userIndex.do")
	public ModelAndView queryUsers(){
		ModelAndView mav = new ModelAndView();
//		List<User> users = userService.loadUser();
//		
//		mav.addObject("users", users);
		mav.setViewName("userIndex");
		return mav;
		
	}
	
	@RequestMapping("/addOrUpdateUser.do")
	@ResponseBody
	public User addUser(User user){
		if(user.getId()!=null&&!user.getId().isEmpty()){
			userService.updateUser(user);
		}else{
			userService.addUser(user);
		}
		return user;
	}
	
	@RequestMapping("/updateUser.do")
	public String  updateUser(User user){
		userService.updateUser(user);
		 return "forward:userIndex.do";
	}
	
	@RequestMapping("/test.do")
	@ResponseBody
	public List<User>  test(@RequestParam Map<String,Object> param){
		List<User> users = userService.loadUser(param);
		return users;
	}
	
	private IDeptService deptService;
	private IUserService userService;	
	
	public IDeptService getDeptService() {
		return deptService;
	}
	
	@Autowired
	public void setDeptService(IDeptService deptService) {
		this.deptService = deptService;
	}
	
	public IUserService getUserService() {
		return userService;
	}
	
	@Autowired
	public void setUserService(IUserService userService) {
		this.userService = userService;
	}
}
