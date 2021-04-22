package com.sevenelite.billbo.performance.model.dto;

import java.sql.Date;

public class PerformanceListDTO {
	
	private int memberNo;
	private String name;
	private String spot;
	private String dept;
	private String phone;
	private String email;
	private java.sql.Date date;
	private String grade;
	
	public PerformanceListDTO(int memberNo, String name, String spot, String dept, String phone, String email,
			Date date, String grade) {
		super();
		this.memberNo = memberNo;
		this.name = name;
		this.spot = spot;
		this.dept = dept;
		this.phone = phone;
		this.email = email;
		this.date = date;
		this.grade = grade;
	}

	public int getMemberNo() {
		return memberNo;
	}

	public void setMemberNo(int memberNo) {
		this.memberNo = memberNo;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getSpot() {
		return spot;
	}

	public void setSpot(String spot) {
		this.spot = spot;
	}

	public String getDept() {
		return dept;
	}

	public void setDept(String dept) {
		this.dept = dept;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public java.sql.Date getDate() {
		return date;
	}

	public void setDate(java.sql.Date date) {
		this.date = date;
	}

	public String getGrade() {
		return grade;
	}

	public void setGrade(String grade) {
		this.grade = grade;
	}

	public PerformanceListDTO() {}

	@Override
	public String toString() {
		return "PerformanceListDTO [memberNo=" + memberNo + ", name=" + name + ", spot=" + spot + ", dept=" + dept
				+ ", phone=" + phone + ", email=" + email + ", date=" + date + ", grade=" + grade + "]";
	}
	
}
