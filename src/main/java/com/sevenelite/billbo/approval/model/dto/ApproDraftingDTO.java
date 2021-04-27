package com.sevenelite.billbo.approval.model.dto;

import java.sql.Date;

public class ApproDraftingDTO {
	
	/* 결재선사원(BB_LINE_MEM) */
	
	private int draftNo;						//Pk 기안번호
	private java.sql.Date draftDateStart;		//기안일
	private java.sql.Date draftDateComplete;	//결재완료일
	private String completeStatus;				//승인여부 check(승인, 대기, 반려, 대결)
	private String docuName;					//문서제목
	private String docuContents;				//문서내용
	private String emergency;					//긴급여부
	private int memberNo;						//Fk 사번
	private int paymentNo;						//Fk 결재양식번호
	
	public ApproDraftingDTO() {}
	
	public ApproDraftingDTO(int draftNo, Date draftDateComplete, String completeStatus) {
		super();
		this.draftNo = draftNo;
		this.draftDateComplete = draftDateComplete;
		this.completeStatus = completeStatus;
	}
	
	public ApproDraftingDTO(Date draftDateStart, String completeStatus, String docuName, String docuContents, String emergency, int memberNo, int paymentNo) {
		super();
		this.draftDateStart = draftDateStart;
		this.completeStatus = completeStatus;
		this.docuName = docuName;
		this.docuContents = docuContents;
		this.emergency = emergency;
		this.memberNo = memberNo;
		this.paymentNo = paymentNo;
	}

	public ApproDraftingDTO(int draftNo, Date draftDateStart, Date draftDateComplete, String completeStatus,
			String docuName, String docuContents, String emergency, int memberNo, int paymentNo) {
		super();
		this.draftNo = draftNo;
		this.draftDateStart = draftDateStart;
		this.draftDateComplete = draftDateComplete;
		this.completeStatus = completeStatus;
		this.docuName = docuName;
		this.docuContents = docuContents;
		this.emergency = emergency;
		this.memberNo = memberNo;
		this.paymentNo = paymentNo;
	}

	public int getDraftNo() {
		return draftNo;
	}

	public void setDraftNo(int draftNo) {
		this.draftNo = draftNo;
	}

	public java.sql.Date getDraftDateStart() {
		return draftDateStart;
	}

	public void setDraftDateStart(java.sql.Date draftDateStart) {
		this.draftDateStart = draftDateStart;
	}

	public java.sql.Date getDraftDateComplete() {
		return draftDateComplete;
	}

	public void setDraftDateComplete(java.sql.Date draftDateComplete) {
		this.draftDateComplete = draftDateComplete;
	}

	public String getCompleteStatus() {
		return completeStatus;
	}

	public void setCompleteStatus(String completeStatus) {
		this.completeStatus = completeStatus;
	}

	public String getDocuName() {
		return docuName;
	}

	public void setDocuName(String docuName) {
		this.docuName = docuName;
	}

	public String getDocuContents() {
		return docuContents;
	}

	public void setDocuContents(String docuContents) {
		this.docuContents = docuContents;
	}

	public String getEmergency() {
		return emergency;
	}

	public void setEmergency(String emergency) {
		this.emergency = emergency;
	}

	public int getMemberNo() {
		return memberNo;
	}

	public void setMemberNo(int memberNo) {
		this.memberNo = memberNo;
	}

	public int getPaymentNo() {
		return paymentNo;
	}

	public void setPaymentNo(int paymentNo) {
		this.paymentNo = paymentNo;
	}

	@Override
	public String toString() {
		return "ApproDraftingDTO [draftNo=" + draftNo + ", draftDateStart=" + draftDateStart + ", draftDateComplete="
				+ draftDateComplete + ", completeStatus=" + completeStatus + ", docuName=" + docuName
				+ ", docuContents=" + docuContents + ", emergency=" + emergency + ", memberNo=" + memberNo
				+ ", paymentNo=" + paymentNo + "]";
	}
	
}
