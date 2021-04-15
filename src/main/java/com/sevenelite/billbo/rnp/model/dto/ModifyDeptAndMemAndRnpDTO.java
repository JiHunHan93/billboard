package com.sevenelite.billbo.rnp.model.dto;

import java.sql.Date;

import com.sevenelite.billbo.member.model.dto.MemBbDTO;
import com.sevenelite.billbo.profile.model.dto.DeptDTO;

public class ModifyDeptAndMemAndRnpDTO {
	
	private int no;
	private int memNo;
	private String memName;
	private String deptName;
	private String rnpType;
	private java.sql.Date enrollDate;
	private String reason;
	private String body;
	
	public ModifyDeptAndMemAndRnpDTO() {}

	public ModifyDeptAndMemAndRnpDTO(int no, int memNo, String memName, String deptName, String rnpType,
			Date enrollDate, String reason, String body) {
		super();
		this.no = no;
		this.memNo = memNo;
		this.memName = memName;
		this.deptName = deptName;
		this.rnpType = rnpType;
		this.enrollDate = enrollDate;
		this.reason = reason;
		this.body = body;
	}

	@Override
	public String toString() {
		return "ModifyDeptAndMemAndRnpDTO [no=" + no + ", memNo=" + memNo + ", memName=" + memName + ", deptName="
				+ deptName + ", rnpType=" + rnpType + ", enrollDate=" + enrollDate + ", reason=" + reason + ", body="
				+ body + "]";
	}

	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}

	public int getMemNo() {
		return memNo;
	}

	public void setMemNo(int memNo) {
		this.memNo = memNo;
	}

	public String getMemName() {
		return memName;
	}

	public void setMemName(String memName) {
		this.memName = memName;
	}

	public String getDeptName() {
		return deptName;
	}

	public void setDeptName(String deptName) {
		this.deptName = deptName;
	}

	public String getRnpType() {
		return rnpType;
	}

	public void setRnpType(String rnpType) {
		this.rnpType = rnpType;
	}

	public java.sql.Date getEnrollDate() {
		return enrollDate;
	}

	public void setEnrollDate(java.sql.Date enrollDate) {
		this.enrollDate = enrollDate;
	}

	public String getReason() {
		return reason;
	}

	public void setReason(String reason) {
		this.reason = reason;
	}

	public String getBody() {
		return body;
	}

	public void setBody(String body) {
		this.body = body;
	}

	
	
	
}
