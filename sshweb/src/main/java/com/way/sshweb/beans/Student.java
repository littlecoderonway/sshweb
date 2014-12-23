package com.way.sshweb.beans;

import java.util.Date;

public class Student {
	private int id;
	private String name;
	private Date birthday;
	public Student() {
		super();
	}
	public Student(String name, Date birthday) {
		super();
		this.name = name;
		this.birthday = birthday;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public Date getBirthday() {
		return birthday;
	}
	public void setBirthday(Date birthday) {
		this.birthday = birthday;
	}

	
}
