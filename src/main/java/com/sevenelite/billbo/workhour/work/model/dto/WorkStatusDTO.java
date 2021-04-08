package com.sevenelite.billbo.workhour.work.model.dto;

import java.util.Date;

public class WorkStatusDTO {
	
	private java.util.Date date;
	private java.util.Date commute;
	private java.util.Date lDate;
	private int MemNo;
	private String type;
	
	public WorkStatusDTO() {}

	@Override
	public String toString() {
		return "WorkStatusDTO [date=" + date + ", commute=" + commute + ", lDate=" + lDate + ", MemNo=" + MemNo
				+ ", type=" + type + "]";
	}

	public java.util.Date getDate() {
		return date;
	}

	public void setDate(java.util.Date date) {
		this.date = date;
	}

	public java.util.Date getCommute() {
		return commute;
	}

	public void setCommute(java.util.Date commute) {
		this.commute = commute;
	}

	public java.util.Date getlDate() {
		return lDate;
	}

	public void setlDate(java.util.Date lDate) {
		this.lDate = lDate;
	}

	public int getMemNo() {
		return MemNo;
	}

	public void setMemNo(int memNo) {
		MemNo = memNo;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public WorkStatusDTO(Date date, Date commute, Date lDate, int memNo, String type) {
		super();
		this.date = date;
		this.commute = commute;
		this.lDate = lDate;
		MemNo = memNo;
		this.type = type;
	}
	
}
