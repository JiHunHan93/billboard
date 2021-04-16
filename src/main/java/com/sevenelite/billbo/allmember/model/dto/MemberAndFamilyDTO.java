package com.sevenelite.billbo.allmember.model.dto;

import java.sql.Date;

public class MemberAndFamilyDTO {

	private String familyInfoNo;
	private int memberNo;
	private String memberName;
	private String email;
	private String phone;
	private String familyName;
	private String familyRelation;
	private String familyStudy;
	private String familyJob;
	private String familyGender;
	private java.sql.Date familyBirthDay;
	
	public MemberAndFamilyDTO() {}

	public MemberAndFamilyDTO(String familyInfoNo, int memberNo, String memberName, String email, String phone,
			String familyName, String familyRelation, String familyStudy, String familyJob, String familyGender,
			Date familyBirthDay) {
		super();
		this.familyInfoNo = familyInfoNo;
		this.memberNo = memberNo;
		this.memberName = memberName;
		this.email = email;
		this.phone = phone;
		this.familyName = familyName;
		this.familyRelation = familyRelation;
		this.familyStudy = familyStudy;
		this.familyJob = familyJob;
		this.familyGender = familyGender;
		this.familyBirthDay = familyBirthDay;
	}

	public String getFamilyInfoNo() {
		return familyInfoNo;
	}

	public void setFamilyInfoNo(String familyInfoNo) {
		this.familyInfoNo = familyInfoNo;
	}

	public int getMemberNo() {
		return memberNo;
	}

	public void setMemberNo(int memberNo) {
		this.memberNo = memberNo;
	}

	public String getMemberName() {
		return memberName;
	}

	public void setMemberName(String memberName) {
		this.memberName = memberName;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getFamilyName() {
		return familyName;
	}

	public void setFamilyName(String familyName) {
		this.familyName = familyName;
	}

	public String getFamilyRelation() {
		return familyRelation;
	}

	public void setFamilyRelation(String familyRelation) {
		this.familyRelation = familyRelation;
	}

	public String getFamilyStudy() {
		return familyStudy;
	}

	public void setFamilyStudy(String familyStudy) {
		this.familyStudy = familyStudy;
	}

	public String getFamilyJob() {
		return familyJob;
	}

	public void setFamilyJob(String familyJob) {
		this.familyJob = familyJob;
	}

	public String getFamilyGender() {
		return familyGender;
	}

	public void setFamilyGender(String familyGender) {
		this.familyGender = familyGender;
	}

	public java.sql.Date getFamilyBirthDay() {
		return familyBirthDay;
	}

	public void setFamilyBirthDay(java.sql.Date familyBirthDay) {
		this.familyBirthDay = familyBirthDay;
	}

	@Override
	public String toString() {
		return "MemberAndFamilyDTO [familyInfoNo=" + familyInfoNo + ", memberNo=" + memberNo + ", memberName="
				+ memberName + ", email=" + email + ", phone=" + phone + ", familyName=" + familyName
				+ ", familyRelation=" + familyRelation + ", familyStudy=" + familyStudy + ", familyJob=" + familyJob
				+ ", familyGender=" + familyGender + ", familyBirthDay=" + familyBirthDay + "]";
	}

	
	
}
