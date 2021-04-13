package com.sevenelite.billbo.rnp.model.dto;

import java.util.Date;

public class RnpDTO {
	
	private int no;
	private String reason;
	private java.sql.Date enrollDate;
	private String rnpType;
	private int memberNo;
	
	public RnpDTO() {}

	@Override
	public String toString() {
		return "RnpDTO [no=" + no + ", reason=" + reason + ", enrollDate=" + enrollDate + ", rnpType=" + rnpType
				+ ", memberNo=" + memberNo + "]";
	}

	public RnpDTO(int no, String reason, java.sql.Date enrollDate, String rnpType, int memberNo) {
		super();
		this.no = no;
		this.reason = reason;
		this.enrollDate = enrollDate;
		this.rnpType = rnpType;
		this.memberNo = memberNo;
	}

	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}

	public String getReason() {
		return reason;
	}

	public void setReason(String reason) {
		this.reason = reason;
	}

	public java.sql.Date getEnrollDate() {
		return enrollDate;
	}

	public void setEnrollDate(java.sql.Date enrollDate) {
		this.enrollDate = enrollDate;
	}

	public String getRnpType() {
		return rnpType;
	}

	public void setRnpType(String rnpType) {
		this.rnpType = rnpType;
	}

	public int getMemberNo() {
		return memberNo;
	}

	public void setMemberNo(int memberNo) {
		this.memberNo = memberNo;
	}

	
	
}
