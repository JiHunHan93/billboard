package com.sevenelite.billbo.department.model.dto;

import java.sql.Date;

public class DepartmentDTO {
	
	private int no;
	private String memberName;
	private String memberpwd;
	private String email;
	private String phone;
    private java.sql.Date enrollDate;
    private String deptCode;                    //부서코드
    private String deptName;                    //부서명
    private String upper;						//상위부서
	private int level;							//부서등급
	private java.sql.Date modifyDeptDate;		//변경날짜
    private String address;
    private String spotName;
    
	public DepartmentDTO() {}

	public DepartmentDTO(int no, String memberName, String memberpwd, String email, String phone, Date enrollDate,
			String deptCode, String deptName, String upper, int level, Date modifyDeptDate, String address,
			String spotName) {
		super();
		this.no = no;
		this.memberName = memberName;
		this.memberpwd = memberpwd;
		this.email = email;
		this.phone = phone;
		this.enrollDate = enrollDate;
		this.deptCode = deptCode;
		this.deptName = deptName;
		this.upper = upper;
		this.level = level;
		this.modifyDeptDate = modifyDeptDate;
		this.address = address;
		this.spotName = spotName;
	}

	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}

	public String getMemberName() {
		return memberName;
	}

	public void setMemberName(String memberName) {
		this.memberName = memberName;
	}

	public String getMemberpwd() {
		return memberpwd;
	}

	public void setMemberpwd(String memberpwd) {
		this.memberpwd = memberpwd;
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

	public java.sql.Date getEnrollDate() {
		return enrollDate;
	}

	public void setEnrollDate(java.sql.Date enrollDate) {
		this.enrollDate = enrollDate;
	}

	public String getDeptCode() {
		return deptCode;
	}

	public void setDeptCode(String deptCode) {
		this.deptCode = deptCode;
	}

	public String getDeptName() {
		return deptName;
	}

	public void setDeptName(String deptName) {
		this.deptName = deptName;
	}

	public String getUpper() {
		return upper;
	}

	public void setUpper(String upper) {
		this.upper = upper;
	}

	public int getLevel() {
		return level;
	}

	public void setLevel(int level) {
		this.level = level;
	}

	public java.sql.Date getModifyDeptDate() {
		return modifyDeptDate;
	}

	public void setModifyDeptDate(java.sql.Date modifyDeptDate) {
		this.modifyDeptDate = modifyDeptDate;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getSpotName() {
		return spotName;
	}

	public void setSpotName(String spotName) {
		this.spotName = spotName;
	}

	@Override
	public String toString() {
		return "DepartmentDTO [no=" + no + ", memberName=" + memberName + ", memberpwd=" + memberpwd + ", email="
				+ email + ", phone=" + phone + ", enrollDate=" + enrollDate + ", deptCode=" + deptCode + ", deptName="
				+ deptName + ", upper=" + upper + ", level=" + level + ", modifyDeptDate=" + modifyDeptDate
				+ ", address=" + address + ", spotName=" + spotName + "]";
	}

}
