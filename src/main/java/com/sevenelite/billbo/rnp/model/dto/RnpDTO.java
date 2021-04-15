package com.sevenelite.billbo.rnp.model.dto;

import java.util.Date;

public class RnpDTO {
	
	private int no;
	private String reason;
	private java.sql.Date enrollDate;
	private String rnpType;
	private int memberNo;
	private String body;
	
	public RnpDTO() {}

	public RnpDTO(int no, String reason, java.sql.Date enrollDate, String rnpType, int memberNo, String body) {
		super();
		this.no = no;
		this.reason = reason;
		this.enrollDate = enrollDate;
		this.rnpType = rnpType;
		this.memberNo = memberNo;
		this.body = body;
	}

	@Override
	public String toString() {
		return "RnpDTO [no=" + no + ", reason=" + reason + ", enrollDate=" + enrollDate + ", rnpType=" + rnpType
				+ ", memberNo=" + memberNo + ", body=" + body + "]";
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

	public String getBody() {
		return body;
	}

	public void setBody(String body) {
		this.body = body;
	}


	
}
