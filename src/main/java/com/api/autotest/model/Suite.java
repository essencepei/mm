package com.api.autotest.model;

public class Suite {
	private Integer id;
	private String suite_url;
	
	public Suite() {
		super();
	}
	public Suite(Integer id, String suite_url) {
		super();
		this.id = id;
		this.suite_url = suite_url;
	}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getSuite_url() {
		return suite_url;
	}
	public void setSuite_url(String suite_url) {
		this.suite_url = suite_url;
	}

}
