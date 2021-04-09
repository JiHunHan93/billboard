package com.sevenelite.billbo.profile.model.dto;

import java.sql.Date;

public class CareerDTO {
	
	private int no;
	private java.sql.Date start;
	private java.sql.Date end;
	private String position;
	private int member_no;
	
	public CareerDTO() {}

	public CareerDTO(int no, Date start, Date end, String position, int member_no) {
		super();
		this.no = no;
		this.start = start;
		this.end = end;
		this.position = position;
		this.member_no = member_no;
	}

	@Override
	public String toString() {
		return "CareerDTO [no=" + no + ", start=" + start + ", end=" + end + ", position=" + position + ", member_no="
				+ member_no + "]";
	}

	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}

	public java.sql.Date getStart() {
		return start;
	}

	public void setStart(java.sql.Date start) {
		this.start = start;
	}

	public java.sql.Date getEnd() {
		return end;
	}

	public void setEnd(java.sql.Date end) {
		this.end = end;
	}

	public String getPosition() {
		return position;
	}

	public void setPosition(String position) {
		this.position = position;
	}

	public int getMember_no() {
		return member_no;
	}

	public void setMember_no(int member_no) {
		this.member_no = member_no;
	}
	
}
