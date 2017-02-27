package com.pjh.util;

import org.springframework.beans.factory.annotation.Autowired;

import com.pjh.model.Element;
import com.pjh.model.Page;

public class createPage extends BasePage{
	@Autowired
	public static Page pagename;
	@Autowired
	public static Element element;
	public createPage(Page pagename, Element element) {
		super();
		this.pagename = pagename;
		this.element = element;
	}
	public static void main(String[] args) {
		createPage cp = new createPage(pagename, element);
	}
	
}
