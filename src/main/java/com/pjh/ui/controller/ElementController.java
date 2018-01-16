package com.pjh.ui.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.pjh.model.Element;
import com.pjh.serviceI.IElementService;

@Controller
@RequestMapping("/elementController")
public class ElementController {
	@Autowired
	IElementService elementService ;
	@RequestMapping("/elementlist.do")
	public ModelAndView page(@RequestParam Map<String,Object> param){
		ModelAndView mav = new ModelAndView();
		mav.setViewName("pageList");
		return mav;
	}
	
	@RequestMapping("/elementData.do")
	@ResponseBody
	public List<Element> pageData(@RequestParam Map<String,Object> param){
		return elementService.loadElement(param);
	}
}
