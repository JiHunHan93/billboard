package com.sevenelite.billbo.approval.model.dto;

import java.sql.Date;

public class ApproSpotDTO {

	/* Customizing : ROWNUM + BB_SPOT + BB_MODIFY_SPOT */
	/* 전자결재를 위한 로그인 회원의 직위 정보 */
	
	private int spotRnum;					//순번
	private String spotCode;				//직위코드
	private String spotName;				//직위명
	private java.sql.Date modifySpotDate;	//변경날짜
	
	/* 결재 정보 조회를 위한 회원 정보 추가 */
	private int memberNoSpot;
	private String memberNameSpot;
	
	public ApproSpotDTO() {}

	public ApproSpotDTO(int spotRnum, String spotCode, String spotName, Date modifySpotDate, int memberNoSpot,
			String memberNameSpot) {
		super();
		this.spotRnum = spotRnum;
		this.spotCode = spotCode;
		this.spotName = spotName;
		this.modifySpotDate = modifySpotDate;
		this.memberNoSpot = memberNoSpot;
		this.memberNameSpot = memberNameSpot;
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

	public int getMemberNoSpot() {
		return memberNoSpot;
	}

	public void setMemberNoSpot(int memberNoSpot) {
		this.memberNoSpot = memberNoSpot;
	}

	public String getMemberNameSpot() {
		return memberNameSpot;
	}

	public void setMemberNameSpot(String memberNameSpot) {
		this.memberNameSpot = memberNameSpot;
	}

	@Override
	public String toString() {
		return "ApproSpotDTO [spotRnum=" + spotRnum + ", spotCode=" + spotCode + ", spotName=" + spotName
				+ ", modifySpotDate=" + modifySpotDate + ", memberNoSpot=" + memberNoSpot + ", memberNameSpot="
				+ memberNameSpot + "]";
	}

}
