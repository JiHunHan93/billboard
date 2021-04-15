package com.sevenelite.billbo.approval.model.dto;

import java.sql.Date;

public class ApproSpotDTO {

	/* Customizing : ROWNUM + BB_SPOT + BB_MODIFY_SPOT */
	/* 전자결재를 위한 로그인 회원의 직위 정보 */
	
	private int spotRnum;					//순번
	private String spotCode;				//직위코드
	private String spotName;				//직위명
	private java.sql.Date modifySpotDate;	//변경날짜
	
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
