package com.pjh.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/fristController")
public class FristController {
	@RequestMapping("/index.do")
	public ModelAndView page(){
		ModelAndView mav = new ModelAndView();
		mav.setViewName("index");
		return mav;
		
	}
}
