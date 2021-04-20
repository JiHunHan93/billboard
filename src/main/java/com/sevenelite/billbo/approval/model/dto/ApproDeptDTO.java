package com.sevenelite.billbo.approval.model.dto;

import java.sql.Date;

public class ApproDeptDTO {
	
	/* Customizing : ROWNUM + BB_DEPT + BB_MODIFY_DEPT */
	/* 전자결재를 위한 로그인 회원의 부서 정보 */
	
	private int deptRnum;						//순번
	private String deptCode;					//부서코드
	private String deptName;					//부서명
	private String upper;						//상위부서
	private int level;							//부서등급
	private java.sql.Date modifyDeptDate;		//변경날짜
	
	/* 결재 정보 조회를 위한 회원 정보 추가 */
	private int memberNoDept;
	private String memberNameDept;
	
	public ApproDeptDTO() {}

	public ApproDeptDTO(int deptRnum, String deptCode, String deptName, String upper, int level, Date modifyDeptDate,
			int memberNoDept, String memberNameDept) {
		super();
		this.deptRnum = deptRnum;
		this.deptCode = deptCode;
		this.deptName = deptName;
		this.upper = upper;
		this.level = level;
		this.modifyDeptDate = modifyDeptDate;
		this.memberNoDept = memberNoDept;
		this.memberNameDept = memberNameDept;
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

	public int getMemberNoDept() {
		return memberNoDept;
	}

	public void setMemberNoDept(int memberNoDept) {
		this.memberNoDept = memberNoDept;
	}

	public String getMemberNameDept() {
		return memberNameDept;
	}

	public void setMemberNameDept(String memberNameDept) {
		this.memberNameDept = memberNameDept;
	}

	@Override
	public String toString() {
		return "ApproDeptDTO [deptRnum=" + deptRnum + ", deptCode=" + deptCode + ", deptName=" + deptName + ", upper="
				+ upper + ", level=" + level + ", modifyDeptDate=" + modifyDeptDate + ", memberNoDept=" + memberNoDept
				+ ", memberNameDept=" + memberNameDept + "]";
	}

}
