package com.pjh.model;

public class Dept {
	private String id;
	private String name;
	private String code;
	private String pid;
	
	public Tree getTree(){
		Tree tree = new Tree();
		tree.setId(this.id);
		tree.setText(this.name);
		tree.setState("closed");
		return tree;
	}
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getCode() {
		return code;
	}
	public void setCode(String code) {
		this.code = code;
	}
	public String getPid() {
		return pid;
	}
	public void setPid(String pid) {
		this.pid = pid;
	}
	@Override
	public String toString() {
		return "Dept [id=" + id + ", name=" + name + ", code=" + code + ", pid=" + pid + "]";
	}
	
	
}
