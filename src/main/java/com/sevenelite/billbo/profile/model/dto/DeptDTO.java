package com.sevenelite.billbo.profile.model.dto;

import java.util.Date;

public class DeptDTO {
	
	private String code;
	private String name;
	private String upper;
	private String level;
	
	public DeptDTO() {}

	public DeptDTO(String code, String name, String upper, String level) {
		super();
		this.code = code;
		this.name = name;
		this.upper = upper;
		this.level = level;
	}

	@Override
	public String toString() {
		return "DeptDTO [code=" + code + ", name=" + name + ", upper=" + upper + ", level=" + level + "]";
	}

	public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getUpper() {
		return upper;
	}

	public void setUpper(String upper) {
		this.upper = upper;
	}

	public String getLevel() {
		return level;
	}

	public void setLevel(String level) {
		this.level = level;
	}
			
}
