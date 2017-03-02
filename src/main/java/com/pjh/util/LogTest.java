package com.pjh.util;

public class LogTest {
	
	private Log log = new Log(this.getClass());
	public void testLog(){
		log.error("this is error message");
		log.info("this is info message");
		log.debug("this is debug message");
	}

}
