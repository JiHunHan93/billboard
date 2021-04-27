package com.sevenelite.billbo.approval.model.dto;

import java.util.Map;

public class CheckApproveDTO {
	
	/* 승인여부 테이블 (BB_APPROVE) */
	
	private int appCode;		//Pk 승인여부코드
	private String appStatus;	//승인여부 chec(대기, 보류, 반려, 승인)
	private int DRAFT_NO;		//Fk 기안번호
	private int LINE_NO;			//Fk 결재선순번
	
	public CheckApproveDTO() {}

	public CheckApproveDTO(String appStatus) {
		this.appStatus = appStatus;
	}
	
	public CheckApproveDTO(int appCode, String appStatus) {
		super();
		this.appCode = appCode;
		this.appStatus = appStatus;
	}

	public CheckApproveDTO(int appCode, String appStatus, int dRAFT_NO, int lINE_NO) {
		super();
		this.appCode = appCode;
		this.appStatus = appStatus;
		DRAFT_NO = dRAFT_NO;
		LINE_NO = lINE_NO;
	}

	public int getAppCode() {
		return appCode;
	}

	public void setAppCode(int appCode) {
		this.appCode = appCode;
	}

	public String getAppStatus() {
		return appStatus;
	}

	public void setAppStatus(String appStatus) {
		this.appStatus = appStatus;
	}

	public int getDRAFT_NO() {
		return DRAFT_NO;
	}

	public void setDRAFT_NO(int dRAFT_NO) {
		DRAFT_NO = dRAFT_NO;
	}

	public int getLINE_NO() {
		return LINE_NO;
	}

	public void setLINE_NO(int lINE_NO) {
		LINE_NO = lINE_NO;
	}

	@Override
	public String toString() {
		return "CheckApproveDTO [appCode=" + appCode + ", appStatus=" + appStatus + ", DRAFT_NO=" + DRAFT_NO
				+ ", LINE_NO=" + LINE_NO + "]";
	}

}
