package com.pjh.util;

import com.pjh.model.Element;
import com.pjh.model.Page;

public class createPage extends BasePage{
	Page pagename;
	Element element;
	public createPage(Page pagename, Element element) {
		super();
		this.pagename = pagename;
		this.element = element;
	}
	
}
