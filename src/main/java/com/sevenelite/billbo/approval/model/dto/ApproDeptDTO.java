package com.sevenelite.billbo.approval.model.dto;

import java.sql.Date;

/* 전자결재를 위한 로그인 회원의 부서 정보 */
public class ApproDeptDTO {
	
	private int deptRnum;
	private String deptCode;
	private String deptName;
	private String upper;
	private int level;
	private java.sql.Date modifyDeptDate;
	
	public ApproDeptDTO() {}

	public ApproDeptDTO(int deptRnum, String deptCode, String deptName, String upper, int level, Date modifyDeptDate) {
		super();
		this.deptRnum = deptRnum;
		this.deptCode = deptCode;
		this.deptName = deptName;
		this.upper = upper;
		this.level = level;
		this.modifyDeptDate = modifyDeptDate;
	}

	public int getDeptRnum() {
		return deptRnum;
	}

	public void setDeptRnum(int deptRnum) {
		this.deptRnum = deptRnum;
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

	@Override
	public String toString() {
		return "ApproDeptDTO [deptRnum=" + deptRnum + ", deptCode=" + deptCode + ", deptName=" + deptName + ", upper="
				+ upper + ", level=" + level + ", modifyDeptDate=" + modifyDeptDate + "]";
	}

}
