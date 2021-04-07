package com.sevenelite.billbo.profile.model.dto;

public class LicenceCodeDTO {
	
	private String code;
	private String name;
	
	public LicenceCodeDTO() {}

	public LicenceCodeDTO(String code, String name) {
		super();
		this.code = code;
		this.name = name;
	}

	@Override
	public String toString() {
		return "LicenceCodeDTO [code=" + code + ", name=" + name + "]";
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
	
}
