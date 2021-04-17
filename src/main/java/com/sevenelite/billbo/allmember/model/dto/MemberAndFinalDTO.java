package com.sevenelite.billbo.allmember.model.dto;

import java.sql.Date;

public class MemberAndFinalDTO {

	
	private int memberNo;
	private String memberName;
	private String pwd;
	private String email;
	private String phone;
	private int abilityNo;
	private String schoolName;
	private String schoolSubject;
	private java.sql.Date graduateDate;
	private String graduateStatus;
	private String graduateName;
	private String academicCode;
	private String academicName;
	
	
	public MemberAndFinalDTO() {}


	public MemberAndFinalDTO(int memberNo, String memberName, String pwd, String email, String phone, int abilityNo,
			String schoolName, String schoolSubject, Date graduateDate, String graduateStatus, String graduateName,
			String academicCode, String academicName) {
		super();
		this.memberNo = memberNo;
		this.memberName = memberName;
		this.pwd = pwd;
		this.email = email;
		this.phone = phone;
		this.abilityNo = abilityNo;
		this.schoolName = schoolName;
		this.schoolSubject = schoolSubject;
		this.graduateDate = graduateDate;
		this.graduateStatus = graduateStatus;
		this.graduateName = graduateName;
		this.academicCode = academicCode;
		this.academicName = academicName;
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


	public String getPwd() {
		return pwd;
	}


	public void setPwd(String pwd) {
		this.pwd = pwd;
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


	public int getAbilityNo() {
		return abilityNo;
	}


	public void setAbilityNo(int abilityNo) {
		this.abilityNo = abilityNo;
	}


	public String getSchoolName() {
		return schoolName;
	}


	public void setSchoolName(String schoolName) {
		this.schoolName = schoolName;
	}


	public String getSchoolSubject() {
		return schoolSubject;
	}


	public void setSchoolSubject(String schoolSubject) {
		this.schoolSubject = schoolSubject;
	}


	public java.sql.Date getGraduateDate() {
		return graduateDate;
	}


	public void setGraduateDate(java.sql.Date graduateDate) {
		this.graduateDate = graduateDate;
	}


	public String getGraduateStatus() {
		return graduateStatus;
	}


	public void setGraduateStatus(String graduateStatus) {
		this.graduateStatus = graduateStatus;
	}


	public String getGraduateName() {
		return graduateName;
	}


	public void setGraduateName(String graduateName) {
		this.graduateName = graduateName;
	}


	public String getAcademicCode() {
		return academicCode;
	}


	public void setAcademicCode(String academicCode) {
		this.academicCode = academicCode;
	}


	public String getAcademicName() {
		return academicName;
	}


	public void setAcademicName(String academicName) {
		this.academicName = academicName;
	}


	@Override
	public String toString() {
		return "MemberAndFinalDTO [memberNo=" + memberNo + ", memberName=" + memberName + ", pwd=" + pwd + ", email="
				+ email + ", phone=" + phone + ", abilityNo=" + abilityNo + ", schoolName=" + schoolName
				+ ", schoolSubject=" + schoolSubject + ", graduateDate=" + graduateDate + ", graduateStatus="
				+ graduateStatus + ", graduateName=" + graduateName + ", academicCode=" + academicCode
				+ ", academicName=" + academicName + ", getMemberNo()=" + getMemberNo() + ", getMemberName()="
				+ getMemberName() + ", getPwd()=" + getPwd() + ", getEmail()=" + getEmail() + ", getPhone()="
				+ getPhone() + ", getAbilityNo()=" + getAbilityNo() + ", getSchoolName()=" + getSchoolName()
				+ ", getSchoolSubject()=" + getSchoolSubject() + ", getGraduateDate()=" + getGraduateDate()
				+ ", getGraduateStatus()=" + getGraduateStatus() + ", getGraduateName()=" + getGraduateName()
				+ ", getAcademicCode()=" + getAcademicCode() + ", getAcademicName()=" + getAcademicName()
				+ ", getClass()=" + getClass() + ", hashCode()=" + hashCode() + ", toString()=" + super.toString()
				+ "]";
	}
	
	
}
