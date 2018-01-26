package com.api.autotest.model;

public class Module {
	private Integer id;
	private Integer suite_id;
	private String modulename;
	
	public Module() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Module(Integer id, Integer suite_id, String modulename) {
		super();
		this.id = id;
		this.suite_id = suite_id;
		this.modulename = modulename;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Integer getSuite_id() {
		return suite_id;
	}

	public void setSuite_id(Integer suite_id) {
		this.suite_id = suite_id;
	}

	public String getModulename() {
		return modulename;
	}

	public void setModulename(String modulename) {
		this.modulename = modulename;
	}
	
}
