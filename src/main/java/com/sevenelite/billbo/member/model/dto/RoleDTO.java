package com.sevenelite.billbo.member.model.dto;

public class RoleDTO {

	private int no;
	private String name;
	private int memNo;
	
	public RoleDTO() {}
	
	public RoleDTO(String name) {
		super();
		this.name = name;
	}

	public RoleDTO(int no, String name, int memNo) {
		super();
		this.no = no;
		this.name = name;
		this.memNo = memNo;
	}

	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getMemNo() {
		return memNo;
	}

	public void setMemNo(int memNo) {
		this.memNo = memNo;
	}

	@Override
	public String toString() {
		return "RoleDTO [no=" + no + ", name=" + name + ", memNo=" + memNo + "]";
	}
	
}
