package com.sevenelite.billbo.profile.model.dto;

import java.sql.Date;

public class LicenseDTO {
	
	private int no;
	private java.sql.Date date;
	private int member_no;
	private String code;
	
	public LicenseDTO() {}

	public LicenseDTO(int no, Date date, int member_no, String code) {
		super();
		this.no = no;
		this.date = date;
		this.member_no = member_no;
		this.code = code;
	}

	@Override
	public String toString() {
		return "LicenseDTO [no=" + no + ", date=" + date + ", member_no=" + member_no + ", code=" + code + "]";
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

	public int getMember_no() {
		return member_no;
	}

	public void setMember_no(int member_no) {
		this.member_no = member_no;
	}

	public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
	}

	
}