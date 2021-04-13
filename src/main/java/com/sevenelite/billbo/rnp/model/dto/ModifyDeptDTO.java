package com.sevenelite.billbo.rnp.model.dto;

import java.sql.Date;

public class ModifyDeptDTO {
	
	private int no;
	private java.sql.Date date;
	private String code;
	private int memberNo;
	
	@Override
	public String toString() {
		return "ModifyDeptDTO [no=" + no + ", date=" + date + ", code=" + code + ", memberNo=" + memberNo + "]";
	}

	public ModifyDeptDTO(int no, Date date, String code, int memberNo) {
		super();
		this.no = no;
		this.date = date;
		this.code = code;
		this.memberNo = memberNo;
	}

	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}

	public java.sql.Date getDate() {
		return date;
	}

	public void setDate(java.sql.Date date) {
		this.date = date;
	}

	public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
	}

	public int getMemberNo() {
		return memberNo;
	}

	public void setMemberNo(int memberNo) {
		this.memberNo = memberNo;
	}
	
}
