package com.sevenelite.billbo.member.model.dto;

public class DeptDTO {

	private String no;
	private String name;
	private String memNo;
	
	public DeptDTO() {}

	public DeptDTO(String no, String name, String memNo) {
		super();
		this.no = no;
		this.name = name;
		this.memNo = memNo;
	}

	public String getNo() {
		return no;
	}

	public void setNo(String no) {
		this.no = no;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getMemNo() {
		return memNo;
	}

	public void setMemNo(String memNo) {
		this.memNo = memNo;
	}

	@Override
	public String toString() {
		return "DeptDTO [no=" + no + ", name=" + name + ", memNo=" + memNo + "]";
	}
	
}
