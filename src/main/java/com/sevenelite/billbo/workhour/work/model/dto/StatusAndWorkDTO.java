package com.sevenelite.billbo.workhour.work.model.dto;

import java.util.Date;
import java.util.List;

public class StatusAndWorkDTO {

	private int no;
	private int MemNo;
	private WorkDTO workList;
	private java.sql.Date date;
	private String commute;
	private String lwork;
	private String type;
	public StatusAndWorkDTO() {}
	public StatusAndWorkDTO(int no, int memNo, WorkDTO workList, java.sql.Date date, String commute, String lwork,
			String type) {
		super();
		this.no = no;
		MemNo = memNo;
		this.workList = workList;
		this.date = date;
		this.commute = commute;
		this.lwork = lwork;
		this.type = type;
	}
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public int getMemNo() {
		return MemNo;
	}
	public void setMemNo(int memNo) {
		MemNo = memNo;
	}
	public WorkDTO getWorkList() {
		return workList;
	}
	public void setWorkList(WorkDTO workList) {
		this.workList = workList;
	}
	public java.sql.Date getDate() {
		return date;
	}
	public void setDate(java.sql.Date date) {
		this.date = date;
	}
	public String getCommute() {
		return commute;
	}
	public void setCommute(String commute) {
		this.commute = commute;
	}
	public String getLwork() {
		return lwork;
	}
	public void setLwork(String lwork) {
		this.lwork = lwork;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	@Override
	public String toString() {
		return "StatusAndWorkDTO [no=" + no + ", MemNo=" + MemNo + ", workList=" + workList + ", date=" + date
				+ ", commute=" + commute + ", lwork=" + lwork + ", type=" + type + "]";
	}
	
	
	
		}
