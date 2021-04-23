package com.sevenelite.billbo.performance.model.dto;

import java.sql.Date;

public class PerformanceListDTO {
	
	private int memberNo;
	private int reviewNo;
	private String name;
	private String spot;
	private String dept;
	private String phone;
	private String email;
	private java.sql.Date date;
	private String grade;
	
	public PerformanceListDTO() {}

	public PerformanceListDTO(int memberNo, int reviewNo, String name, String spot, String dept, String phone,
			String email, Date date, String grade) {
		super();
		this.memberNo = memberNo;
		this.reviewNo = reviewNo;
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

	public int getReviewNo() {
		return reviewNo;
	}

	public void setReviewNo(int reviewNo) {
		this.reviewNo = reviewNo;
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

	@Override
	public String toString() {
		return "PerformanceListDTO [memberNo=" + memberNo + ", reviewNo=" + reviewNo + ", name=" + name + ", spot="
				+ spot + ", dept=" + dept + ", phone=" + phone + ", email=" + email + ", date=" + date + ", grade="
				+ grade + "]";
	}

	
	
}
