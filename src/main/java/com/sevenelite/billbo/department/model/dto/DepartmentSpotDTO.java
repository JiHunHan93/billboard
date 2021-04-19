package com.sevenelite.billbo.department.model.dto;

import java.sql.Date;

public class DepartmentSpotDTO {

	private int spotRnum;					//순번
	private String spotCode;				//직위코드
	private String spotName;				//직위명
	private String memberName;              //이름 
	private java.sql.Date modifySpotDate;	//변경날짜
	public DepartmentSpotDTO() {
		super();
		// TODO Auto-generated constructor stub
	}
	public DepartmentSpotDTO(int spotRnum, String spotCode, String spotName, String memberName, Date modifySpotDate) {
		super();
		this.spotRnum = spotRnum;
		this.spotCode = spotCode;
		this.spotName = spotName;
		this.memberName = memberName;
		this.modifySpotDate = modifySpotDate;
	}
	public int getSpotRnum() {
		return spotRnum;
	}
	public void setSpotRnum(int spotRnum) {
		this.spotRnum = spotRnum;
	}
	public String getSpotCode() {
		return spotCode;
	}
	public void setSpotCode(String spotCode) {
		this.spotCode = spotCode;
	}
	public String getSpotName() {
		return spotName;
	}
	public void setSpotName(String spotName) {
		this.spotName = spotName;
	}
	public String getMemberName() {
		return memberName;
	}
	public void setMemberName(String memberName) {
		this.memberName = memberName;
	}
	public java.sql.Date getModifySpotDate() {
		return modifySpotDate;
	}
	public void setModifySpotDate(java.sql.Date modifySpotDate) {
		this.modifySpotDate = modifySpotDate;
	}
	@Override
	public String toString() {
		return "DepartmentSpotDTO [spotRnum=" + spotRnum + ", spotCode=" + spotCode + ", spotName=" + spotName
				+ ", memberName=" + memberName + ", modifySpotDate=" + modifySpotDate + "]";
	}
	
	
}