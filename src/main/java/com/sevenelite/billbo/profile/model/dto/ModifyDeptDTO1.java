package com.sevenelite.billbo.profile.model.dto;

import java.sql.Date;

public class ModifyDeptDTO1 {

	private String modifyDeptNo;
	private Date modifydate;
	private String deptCode;
	private int memberNo;
	
	public ModifyDeptDTO1() {}

	public ModifyDeptDTO1(String modifyDeptNo, Date modifydate, String deptCode, int memberNo) {
		super();
		this.modifyDeptNo = modifyDeptNo;
		this.modifydate = modifydate;
		this.deptCode = deptCode;
		this.memberNo = memberNo;
	}

	@Override
	public String toString() {
		return "ModifyDeptDTO1 [modifyDeptNo=" + modifyDeptNo + ", modifydate=" + modifydate + ", deptCode=" + deptCode
				+ ", memberNo=" + memberNo + "]";
	}

	public String getModifyDeptNo() {
		return modifyDeptNo;
	}

	public void setModifyDeptNo(String modifyDeptNo) {
		this.modifyDeptNo = modifyDeptNo;
	}

	public Date getModifydate() {
		return modifydate;
	}

	public void setModifydate(Date modifydate) {
		this.modifydate = modifydate;
	}

	public String getDeptCode() {
		return deptCode;
	}

	public void setDeptCode(String deptCode) {
		this.deptCode = deptCode;
	}

	public int getMemberNo() {
		return memberNo;
	}

	public void setMemberNo(int memberNo) {
		this.memberNo = memberNo;
	}

	
	
}
