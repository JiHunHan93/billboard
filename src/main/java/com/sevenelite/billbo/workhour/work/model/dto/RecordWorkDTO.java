package com.sevenelite.billbo.workhour.work.model.dto;

import java.sql.Date;

public class RecordWorkDTO {

	private int no;
	private int statusNo;
	private java.sql.Date modifyDate;
	private java.sql.Date modifyCommute;
	private java.sql.Date modifyLeave;
	private String reason;
	
	public RecordWorkDTO() {}

	public RecordWorkDTO(int no, int statusNo, Date modifyDate, Date modifyCommute, Date modifyLeave, String reason) {
		super();
		this.no = no;
		this.statusNo = statusNo;
		this.modifyDate = modifyDate;
		this.modifyCommute = modifyCommute;
		this.modifyLeave = modifyLeave;
		this.reason = reason;
	}

	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}

	public int getStatusNo() {
		return statusNo;
	}

	public void setStatusNo(int statusNo) {
		this.statusNo = statusNo;
	}

	public java.sql.Date getModifyDate() {
		return modifyDate;
	}

	public void setModifyDate(java.sql.Date modifyDate) {
		this.modifyDate = modifyDate;
	}

	public java.sql.Date getModifyCommute() {
		return modifyCommute;
	}

	public void setModifyCommute(java.sql.Date modifyCommute) {
		this.modifyCommute = modifyCommute;
	}

	public java.sql.Date getModifyLeave() {
		return modifyLeave;
	}

	public void setModifyLeave(java.sql.Date modifyLeave) {
		this.modifyLeave = modifyLeave;
	}

	public String getReason() {
		return reason;
	}

	public void setReason(String reason) {
		this.reason = reason;
	}

	@Override
	public String toString() {
		return "RecordWorkDTO [no=" + no + ", statusNo=" + statusNo + ", modifyDate=" + modifyDate + ", modifyCommute="
				+ modifyCommute + ", modifyLeave=" + modifyLeave + ", reason=" + reason + "]";
	}

	
}

