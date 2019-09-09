package com.jcg.springmvc.mongo;

import java.io.Serializable;

public class User implements Serializable {

	private static final long serialVersionUID = 1L;

	private String telnumber, name , id;

	public User() {
		super();
	}

	public User(String telnumber, String name, String id) {
		super();
		this.telnumber = telnumber;
		this.name = name;
		this.id = id;
	}

	public String getTelnumber() {
		return telnumber;
	}
	public void setTelnumber(String telnumber) {
		this.telnumber = telnumber;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}
	
	
}