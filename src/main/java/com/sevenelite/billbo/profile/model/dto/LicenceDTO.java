package com.sevenelite.billbo.profile.model.dto;

import java.util.Date;

public class LicenceDTO {
	
	private int no;
	private Date date;
	private int member_no;
	private String code;
	
	public LicenceDTO() {}

	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}

	public Date getDate() {
		return date;
	}

	public void setDate(Date date) {
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

	@Override
	public String toString() {
		return "LicenceDTO [no=" + no + ", date=" + date + ", member_no=" + member_no + ", code=" + code + "]";
	}

	public LicenceDTO(int no, Date date, int member_no, String code) {
		super();
		this.no = no;
		this.date = date;
		this.member_no = member_no;
		this.code = code;
	}

}