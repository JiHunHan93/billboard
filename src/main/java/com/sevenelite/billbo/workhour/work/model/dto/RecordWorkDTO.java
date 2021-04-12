package com.sevenelite.billbo.workhour.work.model.dto;

import java.sql.Date;

public class RecordWorkDTO {

	private int no;
	private int statusNo;
	private java.sql.Date date;
	private java.sql.Date commute;
	private java.sql.Date lwork;
	private String reason;
	public RecordWorkDTO(int no, int statusNo, Date date, Date commute, Date lwork, String reason) {
		super();
		this.no = no;
		this.statusNo = statusNo;
		this.date = date;
		this.commute = commute;
		this.lwork = lwork;
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
	public java.sql.Date getDate() {
		return date;
	}
	public void setDate(java.sql.Date date) {
		this.date = date;
	}
	public java.sql.Date getCommute() {
		return commute;
	}
	public void setCommute(java.sql.Date commute) {
		this.commute = commute;
	}
	public java.sql.Date getLwork() {
		return lwork;
	}
	public void setLwork(java.sql.Date lwork) {
		this.lwork = lwork;
	}
	public String getReason() {
		return reason;
	}
	public void setReason(String reason) {
		this.reason = reason;
	}
	@Override
	public String toString() {
		return "RecordWorkDTO [no=" + no + ", statusNo=" + statusNo + ", date=" + date + ", commute=" + commute
				+ ", lwork=" + lwork + ", reason=" + reason + "]";
	}
	
}

