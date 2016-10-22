package com.pjh.model;

public class User {
	private String id;
	private String name;
	private String sex;
	private String telehone;
	private String idCord;
	private String deptId;
	
	public String getDeptId() {
		return deptId;
	}
	public void setDeptId(String deptId) {
		this.deptId = deptId;
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
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public String getTelehone() {
		return telehone;
	}
	public void setTelehone(String telehone) {
		this.telehone = telehone;
	}
	public String getIdCord() {
		return idCord;
	}
	public void setIdCord(String idCord) {
		this.idCord = idCord;
	}
	@Override
	public String toString() {
		return "User [id=" + id + ", name=" + name + ", sex=" + sex + ", telehone=" + telehone + ", idCord=" + idCord
				+ "]";
	}
	
	
}
