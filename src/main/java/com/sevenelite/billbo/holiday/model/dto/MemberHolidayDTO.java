package com.sevenelite.billbo.holiday.model.dto;

import java.sql.Date;

public class MemberHolidayDTO {
	
	private int no;
	private java.sql.Date startDate;
	private java.sql.Date endDate;
	private String reason;
	private String type;
	private int term;
	private int memberNo;
	
	
	public MemberHolidayDTO() {}


	public MemberHolidayDTO(int no, Date startDate, Date endDate, String reason, String type, int term, int memberNo) {
		super();
		this.no = no;
		this.startDate = startDate;
		this.endDate = endDate;
		this.reason = reason;
		this.type = type;
		this.term = term;
		this.memberNo = memberNo;
	}


	public int getNo() {
		return no;
	}


	public void setNo(int no) {
		this.no = no;
	}


	public java.sql.Date getStartDate() {
		return startDate;
	}


	public void setStartDate(java.sql.Date startDate) {
		this.startDate = startDate;
	}


	public java.sql.Date getEndDate() {
		return endDate;
	}


	public void setEndDate(java.sql.Date endDate) {
		this.endDate = endDate;
	}


	public String getReason() {
		return reason;
	}


	public void setReason(String reason) {
		this.reason = reason;
	}


	public String getType() {
		return type;
	}


	public void setType(String type) {
		this.type = type;
	}


	public int getTerm() {
		return term;
	}


	public void setTerm(int term) {
		this.term = term;
	}


	public int getMemberNo() {
		return memberNo;
	}


	public void setMemberNo(int memberNo) {
		this.memberNo = memberNo;
	}


	@Override
	public String toString() {
		return "MemberHolidayDTO [no=" + no + ", startDate=" + startDate + ", endDate=" + endDate + ", reason=" + reason
				+ ", type=" + type + ", term=" + term + ", memberNo=" + memberNo + "]";
	}

	
}
