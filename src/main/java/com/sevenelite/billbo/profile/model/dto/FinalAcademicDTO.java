package com.sevenelite.billbo.profile.model.dto;

import java.sql.Date;

public class FinalAcademicDTO {
	
	private int ability_no;
	private String name;
	private String subject;
	private java.sql.Date date;
	private String status;
	private int member_no;
	private String code;
	
	public FinalAcademicDTO() {}

	public FinalAcademicDTO(int ability_no, String name, String subject, Date date, String status, int member_no,
			String code) {
		super();
		this.ability_no = ability_no;
		this.name = name;
		this.subject = subject;
		this.date = date;
		this.status = status;
		this.member_no = member_no;
		this.code = code;
	}

	@Override
	public String toString() {
		return "FinalAcademicDTO [ability_no=" + ability_no + ", name=" + name + ", subject=" + subject + ", date="
				+ date + ", status=" + status + ", member_no=" + member_no + ", code=" + code + "]";
	}

	public int getAbility_no() {
		return ability_no;
	}

	public void setAbility_no(int ability_no) {
		this.ability_no = ability_no;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getSubject() {
		return subject;
	}

	public void setSubject(String subject) {
		this.subject = subject;
	}

	public java.sql.Date getDate() {
		return date;
	}

	public void setDate(java.sql.Date date) {
		this.date = date;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
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
