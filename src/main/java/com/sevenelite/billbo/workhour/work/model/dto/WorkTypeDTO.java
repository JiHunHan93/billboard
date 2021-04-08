package com.sevenelite.billbo.workhour.work.model.dto;

public class WorkTypeDTO {

	private String code;
	private String type;
	
	public WorkTypeDTO() {}

	@Override
	public String toString() {
		return "WorkTypeDTO [code=" + code + ", type=" + type + "]";
	}

	public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public WorkTypeDTO(String code, String type) {
		super();
		this.code = code;
		this.type = type;
	}
}
