package com.sevenelite.billbo.profile.model.dto;

import java.sql.Date;

public class FinalAcademicDTO {
	
	private int ability_no;
	private String name;
	private String subject;
	private java.sql.Date date;
	private String graduate_status;
	private String graduate_name;
	private int member_no;
	private String code;
	
	public FinalAcademicDTO() {}

	public FinalAcademicDTO(int ability_no, String name, String subject, Date date, String graduate_status,
			String graduate_name, int member_no, String code) {
		super();
		this.ability_no = ability_no;
		this.name = name;
		this.subject = subject;
		this.date = date;
		this.graduate_status = graduate_status;
		this.graduate_name = graduate_name;
		this.member_no = member_no;
		this.code = code;
	}

	@Override
	public String toString() {
		return "FinalAcademicDTO [ability_no=" + ability_no + ", name=" + name + ", subject=" + subject + ", date="
				+ date + ", graduate_status=" + graduate_status + ", graduate_name=" + graduate_name + ", member_no="
				+ member_no + ", code=" + code + "]";
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

	public String getGraduate_status() {
		return graduate_status;
	}

	public void setGraduate_status(String graduate_status) {
		this.graduate_status = graduate_status;
	}

	public String getGraduate_name() {
		return graduate_name;
	}

	public void setGraduate_name(String graduate_name) {
		this.graduate_name = graduate_name;
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
