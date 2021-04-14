package com.sevenelite.billbo.approval.model.dto;

import java.sql.Date;

/* 전자결재를 위한 로그인 회원의 직위 정보 */
public class ApproSpotDTO {

	private int spotRnum;
	private String spotCode;
	private String spotName;
	private java.sql.Date modifySpotDate;
	
	public ApproSpotDTO() {}

	public ApproSpotDTO(int spotRnum, String spotCode, String spotName, Date modifySpotDate) {
		super();
		this.spotRnum = spotRnum;
		this.spotCode = spotCode;
		this.spotName = spotName;
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

	public java.sql.Date getModifySpotDate() {
		return modifySpotDate;
	}

	public void setModifySpotDate(java.sql.Date modifySpotDate) {
		this.modifySpotDate = modifySpotDate;
	}

	@Override
	public String toString() {
		return "ApproSpotDTO [spotRnum=" + spotRnum + ", spotCode=" + spotCode + ", spotName=" + spotName
				+ ", modifySpotDate=" + modifySpotDate + "]";
	}
	
}
