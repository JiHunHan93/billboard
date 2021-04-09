package com.sevenelite.billbo.workhour.work.model.dto;

import java.util.Date;

public class WorkStatusDTO {
	
	private java.sql.Date date;
	private Date commute;
	private String lDate;
	private int MemNo;
	private String type;
	private String wCode;
	public WorkStatusDTO() {}
	public WorkStatusDTO(java.sql.Date date, Date commute, String lDate, int memNo, String type, String wCode) {
		super();
		this.date = date;
		this.commute = commute;
		this.lDate = lDate;
		MemNo = memNo;
		this.type = type;
		this.wCode = wCode;
	}
	public java.sql.Date getDate() {
		return date;
	}
	public void setDate(java.sql.Date date) {
		this.date = date;
	}
	public Date getCommute() {
		return commute;
	}
	public void setCommute(Date commute) {
		this.commute = commute;
	}
	public String getlDate() {
		return lDate;
	}
	public void setlDate(String lDate) {
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
	public String getwCode() {
		return wCode;
	}
	public void setwCode(String wCode) {
		this.wCode = wCode;
	}
	@Override
	public String toString() {
		return "WorkStatusDTO [date=" + date + ", commute=" + commute + ", lDate=" + lDate + ", MemNo=" + MemNo
				+ ", type=" + type + ", wCode=" + wCode + "]";
	}
	
		}
