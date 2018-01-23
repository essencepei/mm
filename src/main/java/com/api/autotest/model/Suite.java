package com.api.autotest.model;

public class Suite {
	private int id;
	private String suite_url;
	
	public Suite() {
		super();
	}
	public Suite(int id, String suite_url) {
		super();
		this.id = id;
		this.suite_url = suite_url;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getSuite_url() {
		return suite_url;
	}
	public void setSuite_url(String suite_url) {
		this.suite_url = suite_url;
	}

}
