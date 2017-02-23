package com.pjh.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.pjh.model.Element;
import com.pjh.model.Page;
import com.pjh.serviceI.IElementService;
import com.pjh.serviceI.IPageService;

@Controller
@RequestMapping("/pageController")
public class PageController {
	
	@Autowired
	IPageService pageService ;
	
	@Autowired
	IElementService elementService ;
	
	@RequestMapping("/pagelist.do")
	public ModelAndView page(@RequestParam Map<String,Object> param){
		ModelAndView mav = new ModelAndView();
		mav.setViewName("pageList");
		return mav;
	}
	
	@RequestMapping("/pageData.do")
	@ResponseBody
	public List<Page> pageData(@RequestParam Map<String,Object> param){
		return pageService.loadPages(param);
	}
	
	@RequestMapping("/elementData.do")
	@ResponseBody
	public List<Element> elementData(@RequestParam Map<String,Object> param){
		return elementService.loadElement(param);
	}
}
