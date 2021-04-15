package com.sevenelite.billbo.allmember.model.dto;

import java.sql.Date;

public class MemberAndMemberInfoAndDeptAndModifyDeptDTO {

	private int no;
	private String memberName;
	private String memberpwd;
	private String email;
	private String phone;
    private java.sql.Date enrollDate;
    private String deptCode;
    private String deptName;
    
    public MemberAndMemberInfoAndDeptAndModifyDeptDTO() {}

	public MemberAndMemberInfoAndDeptAndModifyDeptDTO(int no, String memberName, String memberpwd, String email,
			String phone, Date enrollDate, String deptCode, String deptName) {
		super();
		this.no = no;
		this.memberName = memberName;
		this.memberpwd = memberpwd;
		this.email = email;
		this.phone = phone;
		this.enrollDate = enrollDate;
		this.deptCode = deptCode;
		this.deptName = deptName;
	}

	@Override
	public String toString() {
		return "MemberAndMemberInfoAndDeptAndModifyDeptDTO [no=" + no + ", memberName=" + memberName + ", memberpwd="
				+ memberpwd + ", email=" + email + ", phone=" + phone + ", enrollDate=" + enrollDate + ", deptCode="
				+ deptCode + ", deptName=" + deptName + "]";
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
    
    
    
	
}
